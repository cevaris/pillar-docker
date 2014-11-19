class roles::agent {

    include base
    include monit

    class { 'rbenv':
      install_dir => '/usr/local/rbenv',
      latest      => '2.1.2'
    }

    rbenv::plugin { 'sstephenson/ruby-build': }
    rbenv::build  { '2.1.2': global => true }

}
