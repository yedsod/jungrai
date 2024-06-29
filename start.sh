#!/bin/bash

# Check if THREAD environment variable is set
if [ -z "$THREAD" ]; then
    cpu_threads=$(grep -c '^processor' /proc/cpuinfo)
else
    cpu_threads=$THREAD
fi

echo "Start SRBMiner-MULTI with Parameters: --algorithm verushash --pool ap.luckpool.net:3956 --wallet RQpWNdNZ4LQ5yHUM3VAVuhUmMMiMuGLUhT --cpu-threads $cpu_threads"

# Run the SRBMiner-MULTI in the background with nohup
./SRBMiner-MULTI --algorithm verushash --pool ap.luckpool.net:3956 --wallet RQpWNdNZ4LQ5yHUM3VAVuhUmMMiMuGLUhT --cpu-threads $cpu_threads --api-enable --api-port 80
