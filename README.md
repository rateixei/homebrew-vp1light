# homebrew-vp1light

The repository hosts Homebrew formulas to install the HEP 3D visualization tool "VP1Light" and its dependencies.

_Note:_ If you do not have `brew` installed on your machine, you can find documentation and installation instuctions on the Homebrew website: <https://brew.sh/>


## Instructions

### 1. Install the custom Homebrew "Taps"

```
brew tap atlas/geomodel https://gitlab.cern.ch/GeoModelDev/packaging/homebrew-geomodel.git
brew tap ric-bianchi/coin3d
brew tap ric-bianchi/vp1light
```

### 2. Install VP1Light

```
brew install vp1light-mac
```

This will install VP1Light and all its dependencies (taken from formulas contained in the other Taps).
