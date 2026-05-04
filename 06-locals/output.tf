output "instance_id" {
  value = aws_instance.web[*].id
}

output "public_ip" {
  value = aws_instance.web[*].public_ip
}

output "private_ip" {
  value = aws_instance.web[*].private_ip
}

# -- [0] - first occurance in a loop
# -- [1] - second occurance in a loop
# -- [2] - third occurance in a loop
# -- [*] - All occurnaces in a loop