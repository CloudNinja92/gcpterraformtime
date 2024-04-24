terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.25.0"
    }
  }
}

provider "google" {
  # Configuration options
project = "stellar-aurora-413600"
region = "us-west4"
zone = "us-west4-a"
credentials = "stellar-aurora-413600-a14c20acd5b3.json"
}

resource "google_storage_bucket" "dojointheclouds-bucket-1 {
  name          = "stay_away_from_keisha"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}