## Install Flatpak
```
sudo apt update
sudo apt install flatpak
sudo add-apt-repository ppa:flatpak/stable
```

## Set up Flatpak
```
sudo apt-get install -y flatpak flatpak-builder
sudo add-apt-repository ppa:flatpak/stable
```

## Install repository Flatpak
```
flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```
## Install SDK
```
flatpak install -y flathub org.freedesktop.Platform//22.08 org.freedesktop.Sdk//22.08/
```

## Build Flatpak package
```
flatpak-builder --force-clean build-dir src/org.flatpak.HelloApp.yml
```

## Export repository 
```
flatpak-builder --force-clean  --repo=example-repo build-dir src/org.flatpak.HelloApp.yml
```

## Generate flatpak file
```
flatpak build-bundle example-repo zoopPcServer.flatpak org.flatpak.HelloApp
```

## Install file .flatpak
```
flatpak install --user zoopPcServer.flatpak
```

## Run file .flatpak
```
flatpak run org.flatpak.HelloApp
```
