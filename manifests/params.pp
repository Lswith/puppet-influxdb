class influxdb::params {
  $version = '0.11.1-1'
  $cfg_location = '/etc/influxdb/influxdb.conf'
  $cfg = {}
  $manage_package_repo = true
  $install_method = 'package'
  $package_name = 'influxdb'
  $package_source = "https://s3.amazonaws.com/influxdb/influxdb_${version}_amd64.deb"
  $service_name = 'influxdb'
}
