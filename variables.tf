# create a  secret in a vault
variable "token" {
  type      = string
  sensitive = true
}
variable "secret_example" {
  type      = string
  sensitive = true
}
variable "sa_acces_key" {
  type      = string
  sensitive = true
}