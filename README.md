# puppet-mounts
Puppet module to mount several filesystems

## Example of include

```puppet
class {'mounts':
    mounts => {
        '/opt/check' => {
            device => '/tmp',
            fstype => 'none',
            options => 'bind',
        },
        '/var' => {
            device => '/dev/sda1',
            fstype => 'ext4',
            options => 'defaults',
            ensure => 'mounted',
            mowner => 'root',
            mgroup => 'daemon',
            mmode => '0750',
        },
    }
}
```

## Parameters

Module takes one variable mounts which is a hash of hashes.
Then these hashes are used as create\_resources.  
Module creates directory and then mounts device there.
You can apply following hash keys:  
 - device - what to mount required, no default
 - target - path to fstab file, default: /etc/fstab
 - fstype - type of fs, required, no default
 - ensure - attribute for mount, default: mounted
 - options - mount options, default: defaults
 - mowner - owner of the directory, default: root
 - mgroup - group of the directory, default: root
 - mmode - mode of the directory, default: 0755

For more information abount mount please refer to:  
https://docs.puppetlabs.com/references/latest/type.html#mount
