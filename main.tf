resource "null_resource" "null" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "env"
  }

}
