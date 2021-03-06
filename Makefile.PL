# Note: this file was auto-generated by Module::Build::Compat version 0.4210
use ExtUtils::MakeMaker;
WriteMakefile
(
  'PREREQ_PM' => {
                   'RDF::Trine' => 0,
                   'SQL::Interp' => 0,
                   'Crypt::OpenSSL::RSA' => 0,
                   'Time::Duration' => 0,
                   'Mojolicious' => '6.08',
                   'DBIx::Connector' => 0,
                   'YAML::Syck' => 0,
                   'UUID::Tiny' => 0,
                   'Mojolicious::Plugin::InstallablePaths' => 0,
                   'Number::Bytes::Human' => 0,
                   'Swagger2' => 0,
                   'IO::Socket::SSL' => 2,
                   'String::Diff' => 0,
                   'Data::Rmap' => 0,
                   'JSON::WebToken' => 0,
                   'Pg::hstore' => 0,
                   'Date::Parse' => 0,
                   'Lingua::EN::Inflect' => 0,
                   'Text::Format' => 0,
                   'Digest::SHA1' => 0,
                   'Text::CSV_XS' => 0,
                   'YAML::XS' => 0,
                   'Scalar::Util' => 0,
                   'Sort::Key' => 0,
                   'DateTime::Format::Human::Duration' => 0,
                   'URI::Find' => 0,
                   'YAML' => 0,
                   'Mojolicious::Plugin::YamlConfig' => 0,
                   'File::ShareDir' => '1.00',
                   'DBIx::Custom' => 0,
                   'RDF::Query' => 0,
                   'DBD::Pg' => '3.003',
                   'JSON::XS' => 0,
                   'Module::Build::Mojolicious' => 0,
                   'Number::Format' => 0,
                   'Algorithm::Permute' => 0,
                   'SQL::Abstract' => 0,
                   'Rose::DB' => '0.772',
                   'LWP::UserAgent' => 0,
                   'Test::More' => 0,
                   'Rose::DB::Object' => 0,
                   'Path::Class' => 0,
                   'Hash::Flatten' => 0,
                   'DBIx::Simple' => 0
                 },
  'INSTALLDIRS' => 'site',
  'EXE_FILES' => [
                   'bin/tuba',
                   'bin/tuba_generate_sitemap',
                   'bin/tuba_get_ontology',
                   'bin/tuba_start_httpd',
                   'bin/tuba_stop_httpd'
                 ],
  'VERSION_FROM' => 'lib/Tuba.pm',
  'NAME' => 'Tuba',
  'PL_FILES' => {}
)
;
