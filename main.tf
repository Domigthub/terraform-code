resource "aws_sns_topic" "sns-practice1" {
  name = var.topic_name
  tags = {
    team = var.team
  }
}

resource "aws_sns_topic_subscription" "sns-email-target" {
  topic_arn = aws_sns_topic.sns-practice1.arn
  protocol  = var.protocol_type
  endpoint  = var.endpoint
}