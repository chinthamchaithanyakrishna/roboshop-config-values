variable "token" {}

variable "secret-mounts" {
  default = {
    roboshop-dev = {
      description = "RoboShop Project Dev Secrets"
    }
    roboshop-infra = {
      description = "RoboShop Project infra Secrets"
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
        CATALOGUE_HOST = "catalogue-dev.chaithanya.online"
        CATALOGUE_PORT = "8080"
        USER_HOST      = "user-dev.chaithanya.online"
        USER_PORT      = "8080"
        CART_HOST      = "cart-dev.chaithanya.online"
        CART_PORT      = "8080"
        SHIPPING_HOST  = "shipping-dev.chaithanya.online"
        SHIPPING_PORT  = "8080"
        PAYMENT_HOST   = "payment-dev.chaithanya.online"
        PAYMENT_PORT   = "8080"
      }
    }

    catalogue = {
      secret_mount = "roboshop-dev"
      kv = {
        MONGO="true"
        MONGO_URL="mongodb://mongodb-dev.chaithanya.online:27017/catalogue"
        DB_TYPE     = "mongo"
        APP_GIT_URL = "https://github.com/roboshop-devops-project-v3/catalogue"
        DB_HOST     = "mongodb-dev.chaithanya.online"
        SCHEMA_FILE = "db/master-data.js"
      }
    }

    user = {
      secret_mount = "roboshop-dev"
      kv = {
        MONGO="true"
        REDIS_URL="redis://redis-dev.chaithanya.online:6379"
        MONGO_URL="mongodb://mongodb-dev.chaithanya.online:27017/users"
      }
    }

    mysql = {
      secret_mount = "roboshop-dev"
      kv = {
        ROOT_PASSWORD="RoboShop@1"
      }
    }

    rabbitmq = {
      secret_mount = "roboshop-dev"
      kv = {
        APP_USER="roboshop"
        APP_PASSWORD="roboshop123"
      }
    }

    shipping = {
      secret_mount = "roboshop-dev"
      kv = {
        CART_ENDPOINT="cart-dev.chaithanya.online:8080"
        DB_HOST="mysql-dev.chaithanya.online"
        DB_USER="root"
        DB_PASS="RoboShop@1"
        DB_TYPE       = "mysql"
        APP_GIT_URL   = "https://github.com/roboshop-devops-project-v3/shipping"
      }
    }

    payment = {
      secret_mount = "roboshop-dev"
      kv = {
        CART_HOST="cart-dev.chaithanya.online"
        CART_PORT=8080
        USER_HOST="user-dev.chaithanya.online"
        USER_PORT=8080
        AMQP_HOST="rabbitmq-dev.chaithanya.online"
        AMQP_USER="roboshop"
        AMQP_PASS="roboshop123"
      }
    }
    #
    # ssh = {
    #   secret_mount = "roboshop-infra"
    #   kv = {
    #     username = "ec2-user"
    #     password = "DevOps321"
    #   }
    # }
  }
}