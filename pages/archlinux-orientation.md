There are a number of unwritten rules on the Arch Linux IRC channel, so I
figured I would write them out here.

1.  Don't use pastebin.com for pastes. You can query `phrik`, the channel bot,
    to see why. 

        /q phrik badpastebin

    > Ads, Spamfilters, Captcha, Adds whitespace, Slow, Ugly, No
    > comment/fork/annotate, Breaks copy/paste, Blocked for some people,
    > etc. See !pastebin.com

        /q phrik pastebin.com

    >Don't use it. Use some sane pastebin like bpaste.net gist.github.com,
    >sprunge.us ix.io . Also see !badpastebin

    People will have `phrik` yell at you if you use pastebin.com for your
    pastes. Don't use it!

    Even though `phrik` gives you a number of options for pastebins, the favored
    pastebins are sprunge.us and ix.io. I have found sprunge.us to be
    unreliable. It has a large quantity of downtime, and the server won't except
    large quantities of input.

    ix.io is about as simple as pastebins get. It doesn't have a web interface
    like most pastebins. You have to use `curl`, and send an HTTP `POST` request
    to paste something. the server will respond with the URL for your paste.

        % \dmesg | curl -F 'f:1=<-' http://ix.io
        http://ix.io/eiR

    `curl`-foo is a bit difficult to remember, so `ix.io` provides a python
    script that will automate some of the work for you.

    If you install the package `ix` from `[community]`, you can pipe the output
    of some command to `ix`.

        % cat /etc/pacman.d/mirrorlist | ix
        http://ix.io/eiR

    `ix` will also accept filenames as input
    
        % ix ~/.emacs.d/config/ft-python.el ~/.emacs.d/config/ft-markdown.el 
        http://ix.io/eiU+eiV

2.  Everyone hates Manjaro Linux. I don't know why, but they do. If you are a
    Manjaro user, people will yell at you.
3.  We don't know how to set up Arch Linux with two graphics cards. For some
    reason, people keep asking that.
4.  If you have a problem, just state your problem. Someone will probably help
    you. Don't say something along the lines of "I have a problem with `$thing`,
    can someone help me?" unless you immediately follow by stating your
    problem. Likewise, don't ask "Does anyone have experience doing `$thing`,"
    or "Does anyone know how to use `$software`." Seriously, just state your
    problem, someone will help you.
5.  The best window manager is [i3wm](http://i3wm.org/). If you ask for help
    with another window manager, some jackass will probably tell you to switch
    to i3wm. [awesome](http://awesome.naquadah.org/) is also a good window
    manager.
6.  The best programming language is Haskell. If you mention something about a
    different language, some jackass will probably tell you to "write it in
    Haskell instead."
