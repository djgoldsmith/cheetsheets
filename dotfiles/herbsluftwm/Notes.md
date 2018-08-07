# Getting the Status bar looking nice

## Batterys

First thing we are hoing to need for that is acpi

~~~
apt-install acpi
~~~

Getting Details 

~~~ 
dang@dang-laptop:~/.config/herbstluftwm$ acpi
Battery 0: Full, 100%
~~~

Full / Charging??

~~~
$ acpi -b | cut -d ' ' -f 3 | tr -d ","
Full
~~~

Percentage
~~~
$ acpi -b | cut -d ',' -f 2 | tr -d "%"
Full
~~~


http://dotshare.it/dots/499/


https://github.com/Pascal3366/dotfiles


Add Nitrogen for wallpapers
