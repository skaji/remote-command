# NAME

remote-command - simple launcher of remote command

# SYNOPSIS

    > remote-command [OPTIONS] -- COMMAND
    > remote-command [OPTIONS] --scirpt SCRIPT

    Options:
    -C, --concurrency         concurrency, default 5
    -h, --host                remote hosts
        --sudo_password       sudo password
        --ask_sudo_password   ask sudo password first with prompt
    -s, --script              execute script instead of specifying commands
        --help                show this help

    Examples:
    > remote-command -h exammple.com -- perl -e 'print "hello"'
    > remote-command -h exampale.com,example.jp --ask_sudo_password \
        -- 'sudo mkdir -m 0755 /opt/perl && sudo chown app:users /opt/perl'
    > remote-command -h example.com --sudo_password hogehoge --script local-script.pl

# INSTALL

    > cpanm git://github.com/shoichikaji/remote-command.git

# DESCRIPTION

remote-command is a simple launcher of remote command. The features are:

- execute remote command in parallel
- remember sudo password first, and never ask again
- you may specify a script file in local machine
- append hostname to each command output lines
- report success/fail summary

# LICENSE

Copyright (C) Shoichi Kaji.

This library is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

# AUTHOR

Shoichi Kaji <skaji@cpan.org>
