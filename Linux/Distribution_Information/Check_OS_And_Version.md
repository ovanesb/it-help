# How to check OS and version using a Linux command.

```{r, engine='bash', count_lines}
$ lsb_release -a

$ lsb_release -d

$ lsb_release -si
```

**Some More Switches**
> Display the version of the LSB specification against which the distribution is compliant. <br />
> -v, --version

> Display the string id of the distributor. <br />
> -i, --id

> Display the single line text description of the distribution. <br />
> -d, --description

> Display the release number of the distribution. <br />
> -r, --release

> Display the codename according to the distribution release. <br />
> -c, --codename

> Display all of the above information. <br />
> -a, --all


> -s, --short