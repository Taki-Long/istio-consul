ports {
  dns = 53
}
services {
  name = "ratings"
  port = 9080
  tags = ["version|v1"]
  meta {
      protocol = "http"
  }
}