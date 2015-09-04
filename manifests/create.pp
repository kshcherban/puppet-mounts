define mounts::create(
    $device,
    $target = '/etc/fstab',
    $fstype,
    $ensure  = 'mounted',
    $options = 'defaults',
) {
    mount { $name:
        ensure   => $ensure,
        device   => $device,
        fstype   => $fstype,
        options  => $options,
        target   => $target,
        remounts => true,
    }
}
