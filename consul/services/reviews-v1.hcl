ports {
  dns = 53
}
services {
  id = "reviews_v1"
  name = "reviews"
  port = 9080
  tags = ["version|v1"]
  meta {
      protocol = "http"
  }
}