variable key_name {
    default = "key"
}

variable public_key {
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
}

variable ec2_ami {
    default = "ami-013f17f36f8b1fefb"
}

variable ec2_instance_type {
    default = "t2.medium"
}

variable ec2_key_name {
    default = "ec2-key"
}

variable vpc_id {
    default = "vpc-0055ad91e12e6d8ff"
}

variable subnet_id {
    default = "subnet-0075423f172d97612"
}

variable security_group {
    default = ["sg-017222953ccb8c2bc"]
}

variable associate_public_ip_address {
    default = "true"
}

variable tg_name {
    default =  "nlb-tg"
}

variable tg_port {
    default =  80
}

variable tg_protocol {
    default =  "TCP"
}

variable tg_healthcheck_port {
    default =  80
}

variable tg_healthcheck_protocol {
    default =  "HTTP"
}

variable nlb_name {
    default =  "Network-Load-Balancer"
}

variable nlb_internal {
    default =  "false"
}

variable nlb_load_balancer_type {
    default =  "network"
}

variable nlb_tag_name {
    default =  "NLB"
}

variable nlb_listener_port {
    default =  80
}

variable nlb_listener_protocol {
    default =  "HTTP"
}

variable nlb_listener_default_action {
    default =  "forward"
}
