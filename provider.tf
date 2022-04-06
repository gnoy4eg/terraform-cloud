terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

provider "yandex" {
  cloud_id  = "${var.yandex_cloud_id}"
  folder_id = "${var.yandex_folder_id}"
}

terraform {
  cloud {
    organization = "terraform-cloud-yc"

    workspaces {
      name = "terraform-cloud"
    }
  }
}
