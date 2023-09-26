resource "local_file" "prod" {
  count    = 5
  content  = "inventario_CEF"
  filename = "inventory-${random_string.randomfiles[count.index].id}.txt"
}


resource "random_string" "randomfiles" {
  count            = 5
  length           = 4
  upper            = true
  lower            = true
  numeric          = true
  special          = true
  override_special = "/-*"

}
