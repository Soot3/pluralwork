# annoyingly need to ensure these are enabled
resource "google_project_service" "gcr" {
  project = local.project_id
  service = "artifactregistry.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_on_destroy = false
}

resource "google_project_service" "container" {
  project = local.project_id
  service = "container.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_on_destroy = false
}

resource "google_project_service" "iam" {
  project = local.project_id
  service = "iam.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_on_destroy = false
}

resource "google_project_service" "storage" {
  project = local.project_id
  service = "storage.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_on_destroy = false
}

resource "google_project_service" "dns" {
  project = local.project_id
  service = "dns.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_on_destroy = false
}

resource "google_project_service" "compute" {
  project = local.project_id
  service = "compute.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_on_destroy = false
}

resource "google_project_service" "sql" {
  project = local.project_id
  service = "sqladmin.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_on_destroy = false
}

resource "google_project_service" "servicenetworking" {
  project = local.project_id
  service = "servicenetworking.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_on_destroy = false
}