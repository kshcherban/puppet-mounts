class mounts (
    $mounts = undef,
) {
    if ! $mounts {
        notice('Please specify mounts as a hash. Read README')
    } else {
        create_resources(mounts::create, $mounts)
    }
}

