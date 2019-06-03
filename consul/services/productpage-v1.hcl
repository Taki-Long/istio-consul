ports {
  dns = 53
  grpc = 8502
}
services {
  name = "productpage"
  port = 9080
  tags = ["version|v1"]
  meta {
      protocol = "http"
  } 
}