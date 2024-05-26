storage "raft" {
  path    = "/vault/data"
  node_id = "vault-0"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
}

seal "transit" {
    address            = "http://127.0.0.1:8200"
    disable_renewal    = "false"
    key_name           = "autounseal"
    mount_path         = "transit/"
    token              = "root"
}

api_addr = "http://vault-0.vault.svc.cluster.local:8200"
cluster_addr = "http://vault-0.vault.svc.cluster.local:8201"
disable_mlock = true
ui = true