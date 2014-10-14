Getting this error running `emerge -uDN @world` (along with a number of other errors)

    dev-python/matplotlib:0

    (dev-python/matplotlib-1.4.0::gentoo, ebuild scheduled for merge) pulled in by
      (no parents that aren't satisfied by other packages in this slot)

    (dev-python/matplotlib-1.3.1::gentoo, installed) pulled in by
      <dev-python/matplotlib-1.4.0[python_targets_python2_7(-)?,-python_single_target_python2_7(-)] required by (sci-mathematics/sage-6.3::sage-on-gentoo, installed)


Ran commands

    layman -S
    emerge --sync

Note, there is a new version of Sage available (6.3 -> 6.4)

Portage is out of date, run

    emerge --oneshot portage
    emerge -uDN @world

Same error; run 

    emerge ">=sci-mathematics/sage-6.4" --autounmask-write
    emerge ">=sci-mathematics/sage-6.4"

Didn't quite work

    ln -sf /var/lib/layman/sage-on-gentoo/package.unmask/sage $(pwd)/package.unmask/sage
    emerge ">=sci-mathematics/sage-6.4"
    dispatch-conf /etc/portage/package.keywords/
    dispatch-conf /etc/portage/package.unmask/
    emerge ">=sci-mathematics/sage-6.4"

Different dependency errors with texlive. Instead of updating, will just mask
sage 6.4 until bugfixes come. The texlive error log was 60k lines long. See
https://github.com/cschwan/sage-on-gentoo/issues/324 .
