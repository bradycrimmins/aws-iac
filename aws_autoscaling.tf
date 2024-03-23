resource "aws_launch_configuration" "app_lc" {
  name          = "app-lc"
  image_id      = "ami-0c02fb55956c7d316"  # Example AMI ID; replace with your chosen AMI
  instance_type = "t2.micro"               # Choose the instance type that fits your needs

  security_groups = [aws_security_group.app_sg.id]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "app_asg" {
  launch_configuration = aws_launch_configuration.app_lc.name
  min_size             = 2
  max_size             =