# Update apt before installing any packages

exec { 'apt-update':
    command => '/usr/bin/apt-get update'
}

Exec['apt-update'] -> Package <| |>

package { ['clang', 'build-essential']:
    ensure => latest
}
