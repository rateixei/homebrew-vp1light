# homebrew-vp1light

The repository hosts Homebrew formulas to install the HEP 3D visualization tool "VP1Light" and its dependencies.

_Note:_ If you do not have `brew` installed on your machine, you can find documentation and installation instuctions on the Homebrew website: <https://brew.sh/>

## Installation of VP1Light

### Quick Instructions

```
brew tap atlas/geomodel https://gitlab.cern.ch/GeoModelDev/packaging/homebrew-geomodel.git
brew tap ric-bianchi/vp1light 
brew install vp1light-mac
```

Then, download a sample geometry datafile:

```
wget https://atlas-vp1.web.cern.ch/atlas-vp1/doc_new/sample_datafiles/geometry/geometry-ATLAS-R2-2015-03-01-00.db
```

Now, you can launch VP1Light:

```
vp1light
```

Click on `Geomoetry studies`: when prompted, you can choose the geometry file downloaded above. The sample file contains the whole ATLAS geometry so the loading of all objects will take some about 30 seconds. In the end, you will see a black screen with a 3D floor in it. Click on the `Geo` tab and try to switch different parts of the ATLAS detector ON and OFF.



### Detailed Instructions

#### 1. Install the custom Homebrew "Taps"

```
brew tap atlas/geomodel https://gitlab.cern.ch/GeoModelDev/packaging/homebrew-geomodel.git
brew tap ric-bianchi/vp1light 
```

The commands above download all the recipes needed to install VP1Light and all its dependencies. 


##### Additional Details

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

#### 2. Install VP1Light

```
brew install vp1light-mac
```

This will install VP1Light and all its dependencies (taken from formulas contained in the other Taps).
