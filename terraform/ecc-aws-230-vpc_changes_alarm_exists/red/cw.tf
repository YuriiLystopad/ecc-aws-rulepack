resource "aws_cloudwatch_log_group" "this" {
  name = "230_log_group_red"
}

resource "aws_cloudwatch_log_stream" "this" {
  name           = "230_log_stream_red"
  log_group_name = aws_cloudwatch_log_group.this.name
}
