variable "region" {
  default = "us-east-1"
  type    = map(string)

}
variable "tags" {
  default = {
    "region" : "us-east-1"
  }
  type = map(string)
}
