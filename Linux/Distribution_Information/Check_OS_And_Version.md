# How to check OS and version using a Linux command.

```{r, engine='bash', count_lines}
$ lsb_release -a

$ lsb_release -d

$ lsb_release -si
```

-v, --version
Display the version of the LSB specification against which the distribution is compliant.

-i, --id
Display the string id of the distributor.

-d, --description
Display the single line text description of the distribution.

-r, --release
Display the release number of the distribution.

-c, --codename
Display the codename according to the distribution release.

-a, --all
Display all of the above information.

-s, --short