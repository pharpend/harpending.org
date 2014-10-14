---
title:  #haskell orientation
date: 13 September 2014
last-edited: 14 September 2014
---

I noticed newbies to the `#haskell` IRC channel all go through the same cycle of
getting information. That is, there are a number of unwritten rules to the
channel, so here they are, written out.

1.  Please don't ask to ask. What I mean is, don't say something along the lines
    of "I'm having an issue with `$x`, could someone please help me?", unless
    you *immediately* follow by stating your issue.

2.  Since `#haskell` is a channel about a programming language, it's likely the
    case that your issue involves a Haskell program you wrote. Supposing that is
    the case, please paste your code on
    [lpaste.net](http://lpaste.net/new/haskell). If there's something like a
    compiler error, or `cabal`'s doing something funky, also paste the error
    message on lpaste.net.

    If the error message is really long, it might be helpful to be able to pipe
    the output of a command to a pastebin. lpaste.net has been known to
    [fail with large inputs](https://github.com/chrisdone/lpaste/issues/21).

    You can paste really large things to ix.io

    ```nohighlight
    % \dmesg | curl -F 'f:1=<-' http://ix.io
    http://ix.io/eiR
    ```

    `curl`-foo is a bit difficult to remember, so `ix.io` provides a python
    script that will automate some of the work for you.

    ```nohighlight
    % cat /etc/pacman.d/mirrorlist | ix
    http://ix.io/eiS
    ```

    `ix` will also accept filenames as input
    
    ```nohighlight
    % ix ~/.emacs.d/config/ft-python.el ~/.emacs.d/config/ft-markdown.el 
    http://ix.io/eiU+eiV
    ```
3.  (By `hpc`) In the interest of not wasting time, please explain in detail
    what steps you have already taken to fix your issue.

If you have any ideas or criticisms with regard to this document,
[pull requests are welcome][1].

[1]: https://github.com/pharpend/pharpend.github.io/blob/hakyll/pages/haskell-orientation.md
