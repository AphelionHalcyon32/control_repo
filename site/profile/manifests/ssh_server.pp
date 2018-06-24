class profile::ssh_server {
  package {'oppenssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDEkCzbZcV9vLKsJqtvCsdqTTxmQYyvZGDV5NRejW3o6FR6ofydhka/WY6T6Faly0fBE5WXlgYqOVszY+Zy7mnYfTWuepoVVwUGk1NVDeu9JNmdzGk1mtaghSNoiOa1UxQYH+wnjFva9zMbTreFaMXHEa4yd7GjWEGEGjOIa83TxjtBVVC1PwcvD8wBJG9O9JGxOeVmR+D81kcr/rKG5U9KZ2y3/6DY+3MKzPXSzJQRsIe7IzfIxrC6yWqtWCSKMbafacuHJw1+ORHpJEzkoJT5wCu22cTvRfjVZwf/dKmfOlOki6/cRdpxCAqqdTdJ7EWvRNEL62I2kr4bnXkjJ45R',
  }
}
