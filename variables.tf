variable "customerprofiles_domains" {
  description = <<EOT
Map of customerprofiles_domains, attributes below
Required:
    - default_expiration_days
    - domain_name
Optional:
    - dead_letter_queue_url
    - default_encryption_key
    - region
    - tags
    - tags_all
    - matching (block):
        - auto_merging (optional, block):
            - conflict_resolution (optional, block):
                - conflict_resolving_model (required)
                - source_name (optional)
            - consolidation (optional, block):
                - matching_attributes_list (required)
            - enabled (required)
            - min_allowed_confidence_score_for_merging (optional)
        - enabled (required)
        - exporting_config (optional, block):
            - s3_exporting (optional, block):
                - s3_bucket_name (required)
                - s3_key_name (optional)
        - job_schedule (optional, block):
            - day_of_the_week (required)
            - time (required)
    - rule_based_matching (block):
        - attribute_types_selector (optional, block):
            - address (optional)
            - attribute_matching_model (required)
            - email_address (optional)
            - phone_number (optional)
        - conflict_resolution (optional, block):
            - conflict_resolving_model (required)
            - source_name (optional)
        - enabled (required)
        - exporting_config (optional, block):
            - s3_exporting (optional, block):
                - s3_bucket_name (required)
                - s3_key_name (optional)
        - matching_rules (optional, block):
            - rule (required)
        - max_allowed_rule_level_for_matching (optional)
        - max_allowed_rule_level_for_merging (optional)
        - status (optional)
EOT

  type = map(object({
    default_expiration_days = number
    domain_name             = string
    dead_letter_queue_url   = optional(string)
    default_encryption_key  = optional(string)
    region                  = optional(string)
    tags                    = optional(map(string))
    tags_all                = optional(map(string))
    matching = optional(object({
      auto_merging = optional(object({
        conflict_resolution = optional(object({
          conflict_resolving_model = string
          source_name              = optional(string)
        }))
        consolidation = optional(object({
          matching_attributes_list = list(any)
        }))
        enabled                                  = bool
        min_allowed_confidence_score_for_merging = optional(number)
      }))
      enabled = bool
      exporting_config = optional(object({
        s3_exporting = optional(object({
          s3_bucket_name = string
          s3_key_name    = optional(string)
        }))
      }))
      job_schedule = optional(object({
        day_of_the_week = string
        time            = string
      }))
    }))
    rule_based_matching = optional(object({
      attribute_types_selector = optional(object({
        address                  = optional(list(string))
        attribute_matching_model = string
        email_address            = optional(list(string))
        phone_number             = optional(list(string))
      }))
      conflict_resolution = optional(object({
        conflict_resolving_model = string
        source_name              = optional(string)
      }))
      enabled = bool
      exporting_config = optional(object({
        s3_exporting = optional(object({
          s3_bucket_name = string
          s3_key_name    = optional(string)
        }))
      }))
      matching_rules = optional(list(object({
        rule = list(string)
      })))
      max_allowed_rule_level_for_matching = optional(number)
      max_allowed_rule_level_for_merging  = optional(number)
      status                              = optional(string)
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

