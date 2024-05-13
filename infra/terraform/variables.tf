variable "token" {
  description = "Yandex Cloud token"
  type        = string
  sensitive   = true
}

variable "cloud_id" {
  description = "Yandex cloud_id"
  type        = string
  default     = "b1g3el3r09to8on5mmso"
}

variable "folder_id" {
  description = "Yandex folder_id"
  type        = string
  default     = "b1g1h2m7591qu55h34jf"
}

variable "zone" {
  description = "Yandex zone"
  type        = string
  default     = "ru-central1-a"
}

variable "backend_access_key" {
  description = "Access key to terraform Backend Storage service"
  sensitive   = true
}

variable "backend_secret_key" {
  description = "Secret key to terraform Backend Storage service"
  sensitive   = true
}