class influxdb (
  $archive_source = $::influxdb::params::archive_source,
  $cfg = $::influxdb::params::cfg,
  $cfg_location = $::influxdb::params::cfg_location,
  $manage_package_repo = $::influxdb::params::cfg,
  $install_method = $::influxdb::params::install_method,
  $package_name = $::influxdb::params::package_name,
  $package_source = $::influxdb::params::package_source,
  $version = $::influxdb::params::version,
) inherits influxdb::params {
  if !is_hash($cfg) {
    fail('cfg parameter must be a hash')
  }

  class { 'influxdb::install': } ->
  class { 'influxdb::config': } ~>
  class { 'influxdb::service': }

  contain 'influxdb::install'
  contain 'influxdb::service'
}
