project     = "NTP"
environment = "Production"

vm_instances = {
  "01" = {
    # VM
    startup = "order=14"
    networks = {
      "01" = {
        tag = 2004
      }
    }

    # Project
    state    = "MASTER"
    priority = 250
  },
  "02" = {
    # VM
    startup = "order=15"
    networks = {
      "01" = {
        tag = 2004
      }
    }

    # Project
    state    = "BACKUP"
    priority = 240
  }
}
