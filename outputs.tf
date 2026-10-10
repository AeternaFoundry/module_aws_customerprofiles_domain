output "customerprofiles_domains_id" {
  description = "Map of id values across all customerprofiles_domains, keyed the same as var.customerprofiles_domains"
  value       = { for k, v in aws_customerprofiles_domain.customerprofiles_domains : k => v.id if v.id != null && length(v.id) > 0 }
}
output "customerprofiles_domains_arn" {
  description = "Map of arn values across all customerprofiles_domains, keyed the same as var.customerprofiles_domains"
  value       = { for k, v in aws_customerprofiles_domain.customerprofiles_domains : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "customerprofiles_domains_dead_letter_queue_url" {
  description = "Map of dead_letter_queue_url values across all customerprofiles_domains, keyed the same as var.customerprofiles_domains"
  value       = { for k, v in aws_customerprofiles_domain.customerprofiles_domains : k => v.dead_letter_queue_url if v.dead_letter_queue_url != null && length(v.dead_letter_queue_url) > 0 }
}
output "customerprofiles_domains_default_encryption_key" {
  description = "Map of default_encryption_key values across all customerprofiles_domains, keyed the same as var.customerprofiles_domains"
  value       = { for k, v in aws_customerprofiles_domain.customerprofiles_domains : k => v.default_encryption_key if v.default_encryption_key != null && length(v.default_encryption_key) > 0 }
}
output "customerprofiles_domains_default_expiration_days" {
  description = "Map of default_expiration_days values across all customerprofiles_domains, keyed the same as var.customerprofiles_domains"
  value       = { for k, v in aws_customerprofiles_domain.customerprofiles_domains : k => v.default_expiration_days if v.default_expiration_days != null }
}
output "customerprofiles_domains_domain_name" {
  description = "Map of domain_name values across all customerprofiles_domains, keyed the same as var.customerprofiles_domains"
  value       = { for k, v in aws_customerprofiles_domain.customerprofiles_domains : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "customerprofiles_domains_matching" {
  description = "Map of matching values across all customerprofiles_domains, keyed the same as var.customerprofiles_domains"
  value       = { for k, v in aws_customerprofiles_domain.customerprofiles_domains : k => one(v.matching) if v.matching != null && length(v.matching) > 0 }
}
output "customerprofiles_domains_region" {
  description = "Map of region values across all customerprofiles_domains, keyed the same as var.customerprofiles_domains"
  value       = { for k, v in aws_customerprofiles_domain.customerprofiles_domains : k => v.region if v.region != null && length(v.region) > 0 }
}
output "customerprofiles_domains_rule_based_matching" {
  description = "Map of rule_based_matching values across all customerprofiles_domains, keyed the same as var.customerprofiles_domains"
  value       = { for k, v in aws_customerprofiles_domain.customerprofiles_domains : k => one(v.rule_based_matching) if v.rule_based_matching != null && length(v.rule_based_matching) > 0 }
}
output "customerprofiles_domains_tags" {
  description = "Map of tags values across all customerprofiles_domains, keyed the same as var.customerprofiles_domains"
  value       = { for k, v in aws_customerprofiles_domain.customerprofiles_domains : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "customerprofiles_domains_tags_all" {
  description = "Map of tags_all values across all customerprofiles_domains, keyed the same as var.customerprofiles_domains"
  value       = { for k, v in aws_customerprofiles_domain.customerprofiles_domains : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

