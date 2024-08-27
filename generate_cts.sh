#!/bin/bash

# Assign the number of loops to a variable
i=1001
MAX_FILES=2000
OUTPUT_DIR="/home/matthew/final_project/wg-fuzz/swarm"

# Loop from 1 to num_loops
while [ $i -le $MAX_FILES ]; do
	  echo "Iteration $i"
	  
	  # Run cargo
	  cargo run -- 0.8 0.1 0
	  
	  mkdir -p "${OUTPUT_DIR}/${i}"
	  
	  # Copy output from out/ to the new directory
	  cp -r out/* "${OUTPUT_DIR}/${i}/"
 
	  # Check if test.js exists and concatenate it to a new file
	  cat ./ctsHeader.ts "${OUTPUT_DIR}/${i}/test.js" > "${OUTPUT_DIR}/${i}/test.spec.ts"

	  # Remove the original test.js
	  rm "${OUTPUT_DIR}/${i}/test.js"

	  ((i++))
done
