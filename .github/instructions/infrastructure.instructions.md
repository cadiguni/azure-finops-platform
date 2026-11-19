---
applyTo: "pipelines/terraform-function/**"
---

# Terraform e Azure

- Backend remoto `azurerm` parcial: valores via `-backend-config` (ver `pipelines/backend.hcl.example`); use uma `key` por pasta e ambiente.
- Padrao de nomes via `local.nome_base`: `{aplicacao}-{ambiente}-{recurso}` (storage sem hifens, maximo de 24 caracteres).
- Function App: Linux, .NET isolated e User Assigned Managed Identity.
- Use Managed Identity e RBAC minimo; nunca grave secrets, access keys ou connection strings em `.tf`.
- Centralize App Settings no Terraform e use variaveis/locals; nao hardcode containers, schedules ou IDs.
- Recursos principais: Function App, Storage, Service Bus, Cosmos DB, Application Insights e Log Analytics.
- Antes de aplicar, revise o plan; alteracoes destrutivas exigem justificativa explicita.
