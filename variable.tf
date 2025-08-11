variable "token" {}

variable "secret-mounts" {
  default = {
    roboshop-dev = {
      description = "RoboShop Project Dev Secrets"
    }
  }
}

variable "secrets" {
  default = {
    cart = {
      secret_mount = "roboshop-dev"
      kv = {
        REDIS_HOST="redis-dev.chaithanya.online"
        CATALOGUE_HOST="catalogue-dev.chaithanya.online"
        CATALOGUE_PORT=8080
      }
    }
  }
}