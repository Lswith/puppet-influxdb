class influxdb::install {
  wget::fetch { 'influxdb':
    source      => $::influxdb::package_source,
    destination => '/tmp/influxdb.deb',
  }

  package { $::influxdb::package_name:
    ensure   => present,
    provider => 'dpkg',
    source   => '/tmp/influxdb.deb',
    require  => Wget::Fetch['influxdb'],
  }
}
