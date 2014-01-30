#!/bin/sh

case `uname` in
  Darwin*)
    glibtoolize ;;
  *)
    libtoolize ;;
esac
aclocal -I m4
autoheader
automake --add-missing
autoconf
echo "autoconfiguration done, to build: ./configure ; make"
