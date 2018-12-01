

output "awspec_lambda_role_id" {
  value = "${aws_iam_role.awspec_lambda_role.arn}"
}