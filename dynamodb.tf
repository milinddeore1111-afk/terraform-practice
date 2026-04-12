/*resource "aws_dynamodb_table" "Locking" {
name = "State-Locker"
hash_key = "LockID"
billing_mode = "PAY_PER_REQUEST"

attribute {
name = "LockID"
type = "S"
}

tags = {
Name = "${var.project_name}-${var.environment}-dynamoDB"
}
}*/