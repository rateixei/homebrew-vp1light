
# Notes For Developers

## Dependencies

If you want, you can install the dependencies separately, by issuing these commands:

### GoogleTest

```
brew install vp1light-googletest
```

### ROOT

```
brew install vp1light-root
```

## Homebrew operations

### List Taps

You can see the Taps installed with `brew tap`:

```
$ brew tap
atlas/geomodel
homebrew/cask
homebrew/core
ric-bianchi/coin3d
ric-bianchi/vp1light
```

Above, you can see the custom Taps used for VP1light besides the Homebrew's Taps.

### Remove Taps

You can remove the VP1light-related taps by typing:

```
...
```

### Cleaning

You can remove all vp1light-related packages installed with `brew` by typing:

```
brew remove coin soqt5 heppdt heputils mcutils vp1light-googletest vp1light-root vp1light-mac
```
