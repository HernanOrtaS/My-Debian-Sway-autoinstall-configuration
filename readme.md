
# Debian/Sway autoinstall configuration

This is my personal configuration of Debian/Sway, i'm gonna still develop the project. I've added a bash script to make a faster install and configuration. Feel free to try it.


## Description

The way this project works it's with a minimal install on Debian, when you finished the installation, you need to install sudo package and give your user sudo permissions.

For this example, i'm gonna asume you logged like root, so all you need to to is:

```bash
  apt install sudo
  usermod -aG sudo {your user here}
```
    
Once you finished, you can login with your user and install git.

```bash
  sudo apt install git
```

Now you can clone the repository to start the installation with:

```bash
git clone https://github.com/HernanOrtaS/My-Debian-Sway-autoinstall-configuration.git
```

## Install

To install this project, enter to the directory where is the autoinstall.sh file and the other directories.

The autoinstall.sh have the instructions to install every package and dependence necessary to run this Sway environment.

```bash
  bash ./autoinstall.sh
```

When finished, you can run 
```bash
  sway
```
to try the configuration or simply reboot the system.

That's it, enjoy and have fun.
## Authors

- [@HernanOrtaS](https://github.com/HernanOrtaS)

