resource "aws_ecs_service" "this" {
  name            = var.service_name
  cluster         = aws_ecs_cluster.this.id
  task_definition = aws_ecs_task_definition.this.id
  launch_type     = "FARGATE"
  desired_count   = 1

  load_balancer {
    target_group_arn = aws_lb_target_group.this.0.arn
    container_name   = var.service_name
    container_port   = 8000
  }

  network_configuration {
    subnets          = [aws_subnet.public-subnet-1.id, aws_subnet.public-subnet-2.id]
    assign_public_ip = true
    security_groups  = [aws_security_group.ecs.id]
  }

  deployment_controller {
    type = "CODE_DEPLOY"
  }
}
