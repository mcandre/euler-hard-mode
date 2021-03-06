# Update apt before installing any packages

exec { 'apt-update':
    command => '/usr/bin/apt-get update'
}

Exec['apt-update'] -> Package <| |>

package { ['build-essential', 'golang']:
    ensure => latest
}
