use inc::Module::Install;
use lib 'lib';
use Task::DWIM::Email;

name           'Task-DWIM-Email';
all_from       'lib/Task/DWIM/Email.pm';

build_requires 'Test::More'                => '0.42';
build_requires 'Perl::Version'             => '1.011';

requires perl  => 5.008;

my %modules = Task::DWIM::Email::get_modules();
foreach my $name (keys %modules) {
    requires $name => $modules{$name};
}

repository 'https://github.com/dwimperl/Task-DWIM';

WriteAll;


