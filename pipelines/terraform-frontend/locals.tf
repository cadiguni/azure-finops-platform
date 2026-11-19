locals {
  # Ver terraform-function/locals.tf: tags novas só valem para recursos criados depois.
  tags = {
    Responsável = "seu-email@example.com"
    Setor       = var.setor
    Ambiente    = var.ambiente
  }

  localizacao = "East US 2"
  aplicacao   = var.aplicacao
  setor       = var.setor

  nome_base         = "${local.aplicacao}-${var.ambiente}"
  nome_base_storage = lower(replace(local.nome_base, "-", ""))
}
