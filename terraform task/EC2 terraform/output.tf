output "instance_state"{
    description = "The state of the instance :- stopped, pending, running, etc"
    value       = aws_instance.my-machine[*].instance_state
}

output "public_ip"{
    description = "The state of the instance :- stopped, pending, running, etc"
    value       = aws_instance.my-machine[*].public_ip
}

output "id"{
    description = "Instance ID"
    value       = aws_instance.my-machine[*].id
}