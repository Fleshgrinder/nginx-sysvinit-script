# nginx SysVinit script
[Linux Standard Base (LSB)](http://www.linuxfoundation.org/collaborate/workgroups/lsb) compliant [SysVinit]
(http://freecode.com/projects/sysvinit) script for [nginx](http://nginx.org/).

## Install
```shell
git clone https://github.com/Fleshgrinder/nginx-sysvinit-script.git
cd nginx-sysvinit-script
make
#make uninstall
```

## Usage
You can use it via the `service` command or by directly invoking the shell script in `/etc/init.d`; what you like best. 
Your shell will have auto-completion for the various keywords that are available, for instance if you type `service 
nginx res` just hit tab for auto-completion.

```shell
service nginx force-reload
service nginx reload
service nginx restart
service nginx try-restart
service nginx start
service nginx status
service nginx stop
```

## Weblinks
* [LSBInitScripts - Debian Wiki](https://wiki.debian.org/LSBInitScripts)

## License
> This is free and unencumbered software released into the public domain.
>
> For more information, please refer to <http://unlicense.org>
