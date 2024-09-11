## Install Flatpak

```
sudo apt update
sudo apt install flatpak
sudo add-apt-repository ppa:flatpak/stable
```

### Add repository
```
flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```

### Install SDK
```
flatpak install flathub org.freedesktop.Platform//22.08 org.freedesktop.Sdk//22.08
```

### Next, use the flatpak-builder command to create the application.
```
flatpak-builder --force-clean build-dir org.flatpak.HelloApp.yml
```

### Next, we will test the installation of our new package by using the following command:

```
flatpak-builder --user --install --force-clean build-dir org.flatpak.HelloApp.yml
```

### Then, we can run our application with:

```
flatpak run org.flatpak.HelloApp
```

## flatpak-builder



