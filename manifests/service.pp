class influxdb::service {
  service { $::influxdb::service_name:
    ensure => running,
    enable => true,
  }
}
