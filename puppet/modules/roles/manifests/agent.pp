class roles::agent {

    include base
    # include monit

    $ruby_version = '2.1.2'
  
    class { 'rbenv':
      install_dir => '/usr/local/rbenv',
      latest      => $ruby_version,
    }

    
    rbenv::plugin { 'sstephenson/ruby-build': }
    rbenv::build  { $ruby_version :
      global => true
#      onlyif => "ruby -v | grep -c ${ruby_version}",
    }

}
