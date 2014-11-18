class god {

    $god_dirs = [ 
        "/etc/god/",
        "/etc/god/",
        "/etc/god/" ]

    file { $god_dirs:
        ensure => directory,
        owner  => "vagrant",
        group  => "vagrant",
        mode   => 750,
    }

}