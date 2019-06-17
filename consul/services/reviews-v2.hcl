ports {
  dns = 53
}
services {
  id = "reviews_v2"
  name = "reviews"
  port = 9080
  tags = ["version|v2"]
  meta {
      protocol = "http"
  }
}