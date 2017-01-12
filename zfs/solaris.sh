#!/bin/sh

# Just in case someone runs it as is but all I want is syntax highlight: {
  exit
# }

# Ok now

# #l2arc #prefetch #sequential {
# "Then, ensure the kernel module parameter l2arc_noprefetch is set to FALSE, so that your streaming
# workloads are also put into the L2 ARC"

  # check status:
  echo "l2arc_noprefetch/D" | mdb -k
  
  # change
  echo "l2arc_noprefetch/W0" | mdb -kw


# }
