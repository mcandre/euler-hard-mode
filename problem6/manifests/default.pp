## Link lisp profile

file { "/home/vagrant/.clisprc.lisp":
  ensure => link,
  target => "/vagrant/.clisprc.lisp"
}

# Update apt before installing any packages

exec { "apt-update":
  command => "/usr/bin/apt-get update"
}

Exec["apt-update"] -> Package <| |>

package { "clisp":
  ensure => latest
}
