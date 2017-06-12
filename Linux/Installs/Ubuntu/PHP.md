# How To Install PHP 7.1

First Step
```{r, engine='bash', count_lines}
$ sudo apt-get install python-software-properties
$ sudo add-apt-repository ppa:ondrej/php
```
 
Second Step
```{r, engine='bash', count_lines}
$ sudo apt-get update
$ sudo apt-get upgrade
$ sudo apt-get dist-upgrade
```

Third Step List the available packages for PHP 7.1 
```{r, engine='bash', count_lines}
$ sudo apt-cache pkgnames | grep php7.1
```

Forth Step Choose which package you which to install out of the list above.
```{r, engine='bash', count_lines}
$ sudo apt-get install package_name_you_want_to_install
```