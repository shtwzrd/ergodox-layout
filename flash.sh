#!/bin/bash
echo "Hit the RESET on the Ergodox in the next 10 seconds ..." 

for i in {10..1}
do 
  echo -n "$i."
  sleep 1
done

echo ""

echo "Flashing..."
teensy_loader_cli -mmcu=atmega32u4 -w ergodox_ez_warreq.hex
echo "Done."
