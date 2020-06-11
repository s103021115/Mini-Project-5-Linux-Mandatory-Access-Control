# Last Modified: Thu Jun 11 19:49:53 2020
#include <tunables/global>

/usr/local/bin/px/X {
  #include <abstractions/base>
  #include <abstractions/bash>

  
  /usr/bin/gcc ux,
  /usr/bin/gcc-7 ux,
  /usr/bin/x86_64-linux-gnu-gcc-7 ux,
  /usr/bin/sshpass ux,
  /bin/bash ix,
  
  /lib/x86_64-linux-gnu/ld-*.so mr,
  owner /usr/local/bin/px/X.sh rux,
  /var/X mwr,
  /var/Y mwrux,

}
