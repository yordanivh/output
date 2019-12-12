provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "output_example" {
  ami           = "ami-0d5d9d301c853a04a"
  instance_type = "t2.micro"
}

output "public_dns" {
  value = "${aws_instance.output_example.public_dns}"
}

output "public_ip" {
  value = "${aws_instance.output_example.public_ip}"
}

output "private_dns" {
  value = "${aws_instance.output_example.private_dns}"
}

output "private_ip" {
  value = "${aws_instance.output_example.private_ip}"
}

