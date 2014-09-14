# #archlinux orientation

12 September 2014
Last edited 14 September 2014

There are a number of unwritten rules on the Arch Linux IRC channel, so I
figured I would write them out here.

(By `jasonwryan`) Before reading this, please make sure you understand
[the written rules](https://wiki.archlinux.org/index.php/Irc).

1.  Don't use pastebin.com for pastes. You can query `phrik`, the channel bot,
    to see why. 

    ```nohighlight
    /msg phrik badpastebin

    Ads, Spamfilters, Captcha, Adds whitespace, Slow, Ugly, No
    comment/fork/annotate, Breaks copy/paste, Blocked for some people,
    etc. See !pastebin.com
    ```

    ```nohighlight
    /msg phrik pastebin.com

    Don't use it. Use some sane pastebin like bpaste.net gist.github.com,
    sprunge.us ix.io . Also see !badpastebin
    ```

    People will have `phrik` yell at you if you use pastebin.com for your
    pastes. Don't use it!

    Even though `phrik` gives you a number of options for pastebins, the favored
    pastebins are sprunge.us and ix.io. I have found sprunge.us to be
    unreliable. It has a large quantity of downtime, and the server won't except
    large quantities of input.

    ix.io is about as simple as pastebins get. It doesn't have a web interface
    like most pastebins. You have to use `curl`, and send an HTTP `POST` request
    to paste something. The server will respond with the URL for your paste.
    <!-- Thanks, Lehvyn -->

    ```nohighlight
    % \dmesg | curl -F 'f:1=<-' http://ix.io
    http://ix.io/eiR
    ```

    `curl`-foo is a bit difficult to remember, so `ix.io` provides a python
    script that will automate some of the work for you.

    If you install the package `ix` from `[community]`, you can pipe the output
    of some command to `ix`.

    ```nohighlight
    % cat /etc/pacman.d/mirrorlist | ix
    http://ix.io/eiS
    ```

    `ix` will also accept filenames as input
    
    ```nohighlight
    % ix ~/.emacs.d/config/ft-python.el ~/.emacs.d/config/ft-markdown.el 
    http://ix.io/eiU+eiV
    ```

2.  We don't know how to set up Arch Linux with two graphics cards. For some
    reason, people keep asking that.
3.  If you have a problem, just state your problem. Someone will probably help
    you. Don't say something along the lines of "I have a problem with `$thing`,
    can someone help me?" unless you immediately follow by stating your
    problem. Likewise, don't ask "Does anyone have experience doing `$thing`,"
    or "Does anyone know how to use `$software`." Seriously, just state your
    problem, someone will help you.

    ```nohighlight
    /msg phrik errors

    Don't just say it doesn't work. Give the exact error. If you think that
    more information than a line or two will be useful, see !pastebin
    ```

    This isn't an "unwritten rule," as it's well-documented, but it's important
    enough that I include it here.
4.  (By `strcpy`) People often ask about problems with Windows booting for some
    reason. Please direct those questions to `support@microsoft.com`.
5.  (By `GodGinrai`) `#archlinux` supports Arch Linux, not other distros. As is
    the case with Manjaro.

    ```nohighlight
    /msg phrik notarch

    This channel is for Arch Linux support only. Most Arch-based distros
    have fundamental differences and are served by their respective
    communities.
    ```

6.  Some people are jerks. If someone is being really asinine, you can always
    page the channel operators by typing `!ops` into the channel. If the channel
    operators won't do anything, or are unresponsive, you can always use
    `/ignore` to ignore messages from someone.

7.  If you are having a font issue, or some issue involving the appearance of
    something, please upload a screenshot. You can install the package `scrot`
    from `[community]`, which is a nice little screenshot program. `imgur`, from
    the AUR will upload an image to [Imgur](https://imgur.com/).

    Using some `scrot`-`imgur`-foo, I have these little things defined in my
    `~/.zshrc`.

    ```sh
    scrgur () {
        scrot -e 'imgur $f ; mv $f ~/pics/screenshots'
    }

    scsgur () {
        scrot -s -e 'imgur $f ; mv $f ~/pics/screenshots'
    }
    ```

8.  (By `jasonwryan`) Please try to resolve your issue yourself before asking
    about it in the channel. This seems obvious, but you would be surprised how
    many people don't do this.
