PHP_ARG_ENABLE(pfSense, whether to enable pfSense support,
[ --enable-pfSense   Enable pfSense support])

PHP_SUBST(PFSENSE_SHARED_LIBADD)
PHP_ADD_LIBRARY_WITH_PATH(netgraph, /usr/lib, PFSENSE_SHARED_LIBADD)
PHP_ADD_LIBRARY_WITH_PATH(dst, /usr/local/lib, PFSENSE_SHARED_LIBADD)
PHP_ADD_LIBRARY_WITH_PATH(omapi, /usr/local/lib, PFSENSE_SHARED_LIBADD)
PHP_ADD_LIBRARY_WITH_PATH(dhcpctl, /usr/local/lib, PFSENSE_SHARED_LIBADD)
if test "$PHP_PFSENSE" = "yes"; then
  AC_DEFINE(HAVE_PFSENSE, 1, [Whether you have pfSense])
  PHP_NEW_EXTENSION(pfSense, pfSense.c, $ext_shared)
fi
