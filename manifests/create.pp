define mounts::create(
    $device,
    $target  = '/etc/fstab',
    $fstype,
    $ensure  = 'mounted',
    $options = 'defaults',
    $mowner  = 'root',
    $mgroup  = 'root',
    $mmode   = '0755',
) {
    file { $name:
        ensure => directory,
        mode   => $mmode,
        owner  => $mowner,
        group  => $mgroup,
    }
    ->
    mount { $name:
        ensure   => $ensure,
        device   => $device,
        fstype   => $fstype,
        options  => $options,
        target   => $target,
        remounts => true,
    }
}
