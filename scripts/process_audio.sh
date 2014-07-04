#!/bin/bash

function process_audio {
  local audio_file=$1
  local features="ContinuousFrequencyActivation"
        features+=" > SimpleThresholdClassification STCThreshold=1.0"

  # ContinuousFrequencyActivation

  yaafe.py -p Precision=1     \
           -p Metadata=False  \
           -r 11025           \
           --resample         \
           -f "cfa: $features" $audio_file
}


process_audio $1


# 45 * 60 * 11025 / (512*50)
# 45 * 60 * 11025 / (512*50)
# 2.32199546
# 22 
