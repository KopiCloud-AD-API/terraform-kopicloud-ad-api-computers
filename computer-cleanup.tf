#######################################################
## KopiCloud AD API - Clean Up Inactive AD Computers ##
#######################################################

# Clean Up Inactive AD Computers
resource "kopicloud_computer_cleanup" "test" {
  ou_path = "OU=Domain Controllers,DC=kopicloud,DC=local"
  days    = 90
}

# Return Clean Up Computers
output "OUTPUT_list_cleanup_computer" {
  description = "List of Clean Up Inactive AD Computers"
  value       = resource.kopicloud_computer_cleanup.test
}
