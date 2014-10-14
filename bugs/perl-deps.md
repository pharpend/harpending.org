Running

    emerge --sync
    emerge -uDN @world
    
Getting this error 

    dev-lang/perl:0

      (dev-lang/perl-5.20.1::gentoo, ebuild scheduled for merge) pulled in by
        =dev-lang/perl-5.20* required by (virtual/perl-Digest-1.170.0-r3::gentoo, ebuild scheduled for merge)

      (dev-lang/perl-5.18.2-r1::gentoo, installed) pulled in by
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/Text-CSV_XS-0.950.0::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/Digest-Perl-MD5-1.800.0-r1::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/File-DesktopEntry-0.40.0-r1::gentoo, installed)
        =dev-lang/perl-5.18* required by (virtual/perl-Getopt-Long-2.390.0-r1::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/Crypt-RC4-2.020.0-r1::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/Authen-SASL-2.160.0-r1::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/Spreadsheet-ParseExcel-0.590.0-r1::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/Net-SMTP-SSL-1.10.0-r1::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/Net-SSLeay-1.550::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/Algorithm-Diff-1.190.200-r1::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/IO-Socket-SSL-1.953.0::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/Error-0.170.210::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/Unicode-Map-0.112.0-r1::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/File-Which-1.90.0-r1::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/XML-Parser-2.410.0-r2::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-vcs/git-1.8.5.5::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/OLE-StorageLite-0.190.0-r1::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/IO-stringy-2.110.0-r1::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/Digest-HMAC-1.30.0-r1::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/File-MimeInfo-0.170.0-r1::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/File-BaseDir-0.30.0-r1::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (dev-perl/URI-1.600.0-r1::gentoo, installed)
        dev-lang/perl:0/5.18=[-build(-)] required by (perl-core/Digest-SHA-5.820.0::gentoo, installed)

Edit `/etc/portage/package.keywords/package.keywords`, remove all of the Perl
`~amd64` stuff. Only allow stable Perl.

`emerge -uDN @world` still gives me the error.

Run `perl-cleaner --all`, no errors, here's the output

     * Beginning a clean up of .ph files
     * Excluding files for 5.18.2 and 5.18.2/x86_64-linux from cleaning

     * Locating ph files for removal

     * Updating ph files.
     * Ignore all "No such file..." messages!
    Can't open machine/ansi.h: No such file or directory
    Can't open sys/_types.h: No such file or directory
    Can't open gnu/stubs-x32.h: No such file or directory
    Can't open gnu/stubs-x32.h: No such file or directory
    Can't open gnu/stubs-x32.h: No such file or directory
    Can't open gnu/stubs-x32.h: No such file or directory

     * Locating packages for an update
     * Locating ebuilds linked against libperl
     * No package needs to be reinstalled.

     * Finding left over modules and header

     * The following files remain. These were either installed by hand
     * or edited. This script cannot deal with them.

Emerging the world didn't fix the issue.

    emerge -uDN @world
