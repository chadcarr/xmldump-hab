pkg_name=xmldump
pkg_origin=chadcarr
pkg_maintainer="Chad Carr ccarr@franzdoodle.com"
pkg_version=0.1
pkg_license=(unrestricted)
pkg_description="Trivial test program which depends on XML::Writer"
pkg_deps=(core/perl chadcarr/perl-xml-writer)
pkg_bin_dirs=(bin)
pkg_interpreters=(usr/bin/perl)

do_build() {
    return 0
}

do_install() {
    mkdir -p $pkg_prefix/bin
    cp xmldump.pl $pkg_prefix/bin
    fix_interpreter $pkg_prefix/bin/xmldump.pl core/perl bin/perl
    chmod +x $pkg_prefix/bin/xmldump.pl
}