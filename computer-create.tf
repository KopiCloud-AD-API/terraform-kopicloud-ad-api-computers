#############################################
## KopiCloud AD API - Created AD Computers ##
#############################################

# Create New Computer
resource "kopicloud_computer" "test" {
  ad_computer_name = "BIG-MAC"
  ou_path          = "OU=kopicloud-europe,DC=kopicloud,DC=local"    
}

# Return Created Computer
output "OUTPUT_new_computer" {
  description = "Created Computer"
  value       = resource.kopicloud_computer.test
}
