# Install latest Wordpress

class wordpress::install {

  # Create the Wordpress database
  exec { 'create-database':
    unless  => '/usr/bin/mysql -u root ringside',
    command => '/usr/bin/mysql -u root --execute=\'create database ringside\'',
  }

  exec { 'create-user':
    unless  => '/usr/bin/mysql -u rails ringside',
    command => '/usr/bin/mysql -u root --execute="GRANT ALL PRIVILEGES ON ringside.* TO \'rails\'@\'localhost\' IDENTIFIED BY \'ringside\'"',
  }

  # Get a new copy of the latest wordpress release
  # FILE TO DOWNLOAD: http://wordpress.org/latest.tar.gz

  # Import a MySQL database for a basic wordpress site.
  # file { '/tmp/wordpress-db.sql.gz':
  #   source => 'puppet:///modules/wordpress/ringside-dev.sql.gz'
  # }

  # exec { 'load-db':
  #   command => '/bin/gunzip < /tmp/wordpress-db.sql.gz | /usr/bin/mysql -u ringside -pwordpress ringside && touch /home/vagrant/db-created',
  #   creates => '/home/vagrant/db-created',
  # }

}
