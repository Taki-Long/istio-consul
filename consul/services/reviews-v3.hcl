ports {
  dns = 53
}
services {
  id = "reviews_v3"
  name = "reviews"
  port = 9080
  tags = ["version|v3"]
  meta {
      protocol = "http"
  }
}