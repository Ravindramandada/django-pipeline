resource "aws_ecs_task_definition" "this" {
  family                   = var.service_name
  container_definitions    = <<DEFINITION
[
   {
      "portMappings": [
        {
          "hostPort": ${var.container_port},
          "protocol": "tcp",
          "containerPort": ${var.container_port}
        }
      ],
      "environment": [
        {
          "name": "PORT",
          "value": "${var.container_port}"
        },
       {
         "name": "WELCOME_MSG", 
         "value": "Hello World"
       },
        {
          "name" : "APP_NAME",
          "value": "${var.service_name}"
        }
      ],
      "memoryReservation" : ${var.memory_reserv},
      "image": "${var.repository_url}",
      "name": "${var.service_name}"
    }
]
DEFINITION

  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  memory                   = 512
  cpu                      = 256
  execution_role_arn       = aws_iam_role.ecsTaskExecutionRole.arn
}
