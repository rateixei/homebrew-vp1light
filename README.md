# homebrew-vp1light

The repository hosts Homebrew formulas to install the HEP 3D visualization tool "VP1Light" and its dependencies.

_Note:_ If you do not have `brew` installed on your machine, you can find documentation and installation instuctions on the Homebrew website: <https://brew.sh/>


## Instructions

### 1. Install the custom Homebrew "Taps"

```
brew tap atlas/geomodel https://gitlab.cern.ch/GeoModelDev/packaging/homebrew-geomodel.git
brew tap ric-bianchi/vp1light 
```

The commands above download all the recipes needed to install VP1Light and all its dependencies. 


#### Additional Details

You can verify the configuration of the custom Taps by issueing the command `brew tap`:

```
$ brew tap
atlas/geomodel
homebrew/cask
homebrew/core
ric-bianchi/vp1light
```

You should see the `atlas/geomodel` and the `ric-bianchi/vp1light` Taps installed besides the core Homebrew Taps, as above.

The Tap `ric-bianchi/coin3d` will be automatically installed too, during the installation of the `vp1light-mac` package (see below), from which the 3D graphics libraries will be downloaded.

### 2. Install VP1Light

```
brew install vp1light-mac
```

This will install VP1Light and all its dependencies (taken from formulas contained in the other Taps).
