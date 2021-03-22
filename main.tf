
# Create a key pair
resource "aws_key_pair" "key" {
  key_name   = var.key_name
  public_key = var.public_key
}

# Create ec2 instances
resource "aws_instance" "host" {
  count           =    3
	ami             =    var.ec2_ami
	key_name        =    var.key_name
	subnet_id       =    var.subnet_id  
  security_groups =    var.security_group
  instance_type   =    var.ec2_instance_type
  user_data       =    "${file("user-data.sh")}"
  associate_public_ip_address = var.associate_public_ip_address
	tags = {
        Name = "webserver-${count.index}"  
  }
}

# Create a Target Group 
resource "aws_lb_target_group" "tg" {
  name      = var.tg_name
  port      = var.tg_port
  protocol  = var.tg_protocol
  vpc_id    = var.vpc_id

  health_check {
    port     = var.tg_healthcheck_port
    protocol = var.tg_healthcheck_protocol
  }
}

# Attach the ec2 instances to the target group
resource "aws_alb_target_group_attachment" "instances" {
  count = length(aws_instance.host)
  target_group_arn = aws_lb_target_group.tg.arn
  target_id = aws_instance.host[count.index].id
}

# Create a Network Load Balancer
resource "aws_lb" "lb" {
  name               = var.nlb_name
  internal           = var.nlb_internal
  load_balancer_type = var.nlb_load_balancer_type
  subnets            = [var.subnet_id]

  tags = {
    Named = "var.nlb_tag_name"
  }

  depends_on = ["aws_lb_target_group.tg"]
}

# Create a listener for NLB
resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_lb.lb.id
  port              = "80"
  protocol          = "TCP"

  default_action {
    target_group_arn = aws_lb_target_group.tg.id
    type             = "forward"
  }
  depends_on = ["aws_lb.lb"]
}