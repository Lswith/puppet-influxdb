class influxdb::config {
  $cfg = $::influxdb::cfg

  file { $::influxdb::cfg_location:
    ensure  => present,
    content => template('influxdb/influxdb.conf.erb'),
  }
}
