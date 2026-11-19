variable "aplicacao" {
  type = string
}

variable "setor" {
  description = "Valor da tag Setor (time/área dona dos recursos)."
  type = string
}

variable "ambiente" {
  description = "Ambiente alvo. Storage nomeado <aplicacao><ambiente>webstg."
  type        = string
  nullable    = false
  validation {
    condition     = contains(["dev", "hml", "prod"], var.ambiente)
    error_message = "ambiente deve ser dev, hml ou prod."
  }
}
