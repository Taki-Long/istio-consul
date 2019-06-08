ports {
  dns = 53
}
services {
  name = "details"
  port = 9080
  tags = ["version|v1"]
  meta {
      protocol = "http"
  }
}