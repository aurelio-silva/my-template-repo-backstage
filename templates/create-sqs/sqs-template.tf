provider "aws" {
  region = "us-east-1"
}

resource "aws_sqs_queue" "queue" {
  name = "{{.sqsName}}"
  
  message_retention_seconds = {{.retention}}
  visibility_timeout_seconds = {{.visibilityTimeout}}

  tags = {
    "Name" = "{{.sqsName}}"
  }
}
