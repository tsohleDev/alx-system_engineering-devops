# Ensure pip3 is installed
package { 'python3-pip':
  ensure => installed,
}

# Define the Flask package and version
$flask_version = '2.1.0'

# Install Flask using pip3
exec { 'install_flask':
  command => "/usr/bin/pip3 install flask==${flask_version}",
  unless  => "/usr/bin/pip3 show flask | grep '^Version: ${flask_version}$'",
  require => Package['python3-pip'],
}

