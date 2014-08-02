requires 'perl', '5.008005';
requires 'IO::Pty';
requires 'Net::OpenSSH';
requires 'Parallel::ForkManager';

on test => sub {
    requires 'Test::More', '0.98';
};

