#!/usr/bin/puppet
# Install from specific Python version
package { 'python':
  ensure   => '3.8.10',
  provider => 'pip3',
}
# Install a specific version of flask (2.1.0)
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
# Install Wekzeug v2.1.1
package { 'Werkzeug':
  ensure   => '2.1.1',
  provider => 'pip3',
  require  => Package['Flask'],
}
