variable "bucket_name" {
  description = "Name of the s3 bucket. Must be unique."
  default     = null
  type        = string
}

variable "tags" {
  description = "Tags to set on the bucket."
  type        = map(string)
  default     = {}
}

variable "title" {
  description = "Title of the website to show"
  type = string
  validation {
    condition = length(var.title) > 0 && length(var.title) <= 25
    error_message = "Title must be between 1-25 characters."
  }
}