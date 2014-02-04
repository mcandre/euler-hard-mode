# Update apt before installing any packages

exec { "apt-update":
  command => "/usr/bin/apt-get update"
}

Exec["apt-update"] -> Package <| |>

package { "openjdk-7-jdk":
  ensure => latest
}

# Fix `java` and `javac`

exec { "register java":
  command => "/usr/sbin/update-alternatives --set java /usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java",
  require => Package["openjdk-7-jdk"]
}
