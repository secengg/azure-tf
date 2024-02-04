variable "rggroup" {
    type        =   string
    description =   "Name of The Resource Group"      
}

variable "location" {
   type         = string
   default      = "eastus"
   description  = "Name of The Location"
}

variable "tier" {
    type        = string
    default     = "Standard"
    description = "Access Tier For SA"
}

variable "replication_type" {
    type        = string
    default     = "LRS"
    description = "Type of Redundancy"
}

variable "kind" {
    type        = string
    default     = "StandardV2"
    description = "Storage Account Type"
}

variable "name" {
    type        = string
    description = "Name of File Share"
}

variable "quota" {
    type        = string
    description = "The Size Of File Storage"
}

variable "access_tier" {
    type        = string
    default     = "TransactionOptimized"
    description = "Type of File Share"
}