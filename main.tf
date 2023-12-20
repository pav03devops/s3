resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-for-praveen"
  
  tags = {
    Name        = "My-bucket"
    environment = "Production-1-2"
  }
}

resource "aws_dynamodb_table" "terraform_lock" {
    name            = "terraform-lock"
    billing_mode    = "PAY_PER_REQUEST"
    hash_key        = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
}
