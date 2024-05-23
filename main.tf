resource "null_resource" "null" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "env"
  }

}
resource "time_sleep" "wait_30_seconds" {
  depends_on = [null_resource.previous]

  create_duration = "3000s"
}
