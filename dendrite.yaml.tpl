version: 2

global:
  server_name: "${DOMAIN_BASE}"
  private_key: "/etc/dendrite/matrix_key.pem"
  jetstream:
    storage_path: "/var/lib/dendrite/jetstream"
  database:
    connection_string: "file:/var/lib/dendrite/dendrite.db"

logging:
  - type: std
    level: warn

client_api:
  registration_disabled: true
  registration_shared_secret: "${SECRET_TOKEN}"
  rate_limiting:
    enabled: true

room_server:
  database:
    connection_string: "file:/var/lib/dendrite/roomserver.db"

media_api:
  database:
    connection_string: "file:/var/lib/dendrite/mediaapi.db"
  base_path: "/var/lib/dendrite/media"
  max_file_size_bytes: 52428800 # 50 MB

sync_api:
  database:
    connection_string: "file:/var/lib/dendrite/syncapi.db"

user_api:
  account_database:
    connection_string: "file:/var/lib/dendrite/userapi_accounts.db"
  device_database:
    connection_string: "file:/var/lib/dendrite/userapi_devices.db"

federation_api:
  database:
    connection_string: "file:/var/lib/dendrite/federationapi.db"

key_server:
  database:
    connection_string: "file:/var/lib/dendrite/keyserver.db"

app_service_api:
  database:
    connection_string: "file:/var/lib/dendrite/appservice.db"

relay_api:
  database:
    connection_string: "file:/var/lib/dendrite/relayapi.db"
