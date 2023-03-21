##########################################
## KopiCloud AD API - List AD Computers ##
##########################################

# List All Computers
data "kopicloud_computer_list" "test_all" {}

# Returns All Computers
output "OUTPUT_all_computers_list" {
  description = "List ALL Existing Computers"
  value       = data.kopicloud_computer_list.test_all
}

//////////////////////////////////////////////

# List All Computers Inside an OU
data "kopicloud_computer_list" "test" {
  ou_path = "OU=Domain Controllers,DC=kopicloud,DC=local"
}

# Returns All Computers Inside an OU
output "OUTPUT_all_computers_list_inside_ou" {
  description = "Existing All Computers Inside an OU"
  value       = data.kopicloud_computer_list.test
}
