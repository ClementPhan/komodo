# General
[[variable]]
name = "EMAIL"
description = "Personal email adress"
value = "op://Docker Secrets/email/email/email"

[[variable]]
name = "BASE_URL"
description = "Home URL"
value = "op://Docker Secrets/home_address/url/url"


# Paperless
[[variable]]
name = "PAPERLESS_SECRET_KEY"
description = "Random key for paperless secutity"
value = "op://Docker Secrets/paperless/secrets/secret_key"
is_secret = true


# Bookstack
[[variable]]
name = "BOOKSTACK_APP_KEY"
description = "Bookstack encryption key"
value = "op://Docker Secrets/Bookstack/secrets/secret_key"
is_secret = true


# Traefik
[[variable]]
name = "OVH_ENDPOINT"
description = "OVH server"
value = "op://Docker Secrets/ovh/server/endpoint"
is_secret = true

[[variable]]
name = "OVH_APPLICATION_KEY"
value = "op://Docker Secrets/ovh/secrets/app_key"
is_secret = true

[[variable]]
name = "OVH_APPLICATION_SECRET"
value = "op://Docker Secrets/ovh/secrets/app_secret"
is_secret = true

[[variable]]
name = "OVH_CONSUMER_KEY"
value = "op://Docker Secrets/ovh/secrets/consumer_key"
is_secret = true
