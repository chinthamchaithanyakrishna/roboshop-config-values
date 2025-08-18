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
    frontend = {
      secret_mount = "roboshop-dev"
      kv = {
        CATALOGUE_URL="http://catalogue-dev.chaithanya.online:8080/"
        USER_URL="http://user-dev.chaithanya.online:8080/"
        CART_URL="http://cart-dev.chaithanya.online:8080/"
        SHIPPING_URL="http://shipping-dev.chaithanya.online:8080/"
        PAYMENT_URL="http://payment-dev.chaithanya.online:8080/"
      }
    }
  }
}