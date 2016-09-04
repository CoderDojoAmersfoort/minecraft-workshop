Exec { path => [ '/bin', '/usr/bin', '/usr/sbin' ] }

package { unzip:
  ensure => latest,
}

package { default-jre:
  ensure => latest,
}

exec { "apt-update":
    command     => "/usr/bin/apt-get update",
}

exec { "unzip-minecraft-server":
    command => "unzip /files/AIMStarterKitMac.zip",
    user => "vagrant",
    require => Package["unzip"],
    creates => '/home/vagrant/AdventuresInMinecraft/MyAdventures'
}

exec { "copy-opgaven":
    command => "cp /opgaven/*.py /home/vagrant/AdventuresInMinecraft/MyAdventures",
    user => "vagrant",
    require => Package["unzip"],
}

