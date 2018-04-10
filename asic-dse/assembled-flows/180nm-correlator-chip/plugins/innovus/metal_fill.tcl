# These metal fill settings only work for the specific metallization. See
# the DRC manual for the settings to use.
#
# - 1p6m, 8K wide top metal
#

# All layers settings
#
# The activeSpacing and maxDensity are arbitrarily set to something
# reasonable.

setMetalFill -layer "1 2 3 4 5 6" \
  -activeSpacing 10.0 \
  -windowSize 500 500 \
  -windowStep 500 500 \
  -minDensity 30 -maxDensity 60

# M1 layer

setMetalFill -layer "1" \
  -preferredDensity 35 -gapSpacing 0.6 \
  -minWidth 0.23 -maxWidth 35 \
  -minLength 0.90 -maxLength 35

# Thin layers

setMetalFill -layer "2 3 4 5" \
  -preferredDensity 35 -gapSpacing 0.6 \
  -minWidth 0.28 -maxWidth 35 \
  -minLength 0.75 -maxLength 35

# Thick layers

setMetalFill -layer "6" \
  -preferredDensity 35 -gapSpacing 0.6 \
  -minWidth 0.44 -maxWidth 35 \
  -minLength 1.28 -maxLength 35

# Add metal fill

addMetalFill -layer "1 2 3 4 5 6" -timingAware sta
