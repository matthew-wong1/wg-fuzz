#!/bin/bash

# Assign the number of loops to a variable
i=1
MAX_FILES=1000
OUTPUT_DIR="/home/matthew/final_project/wg-fuzz/no_swarm"

# Loop from 1 to num_loops
while [ $i -le $MAX_FILES ]; do
	do
	  echo "Iteration $i"
	  
	  # Run cargo
	  cargo run
	  
	  mkdir -p "${OUTPUT_DIR}/${i}"
	  
	  # Copy output from out/ to the new directory
	  cp -r out/* "${OUTPUT_DIR}/${i}/"
 
	  # Check if test.js exists and concatenate it to a new file
	  cat ./ctsHeader.ts >> "${OUTPUT_DIR}/${i}/test.spec.ts"

	  # Remove the original test.js
	  rm "${OUTPUT_DIR}/${i}/test.js"
done
