pg_ctl = executable('pg_ctl',
  ['pg_ctl.c'],
  dependencies: [frontend_code, libpq],
  kwargs: default_bin_args,
)
bin_targets += pg_ctl

tests += {
  'name': 'pg_ctl',
  'sd': meson.current_source_dir(),
  'bd': meson.current_build_dir(),
  'tap': {
    'tests': [
      't/001_start_stop.pl',
      't/002_status.pl',
      't/003_promote.pl',
      't/004_logrotate.pl',
    ],
  },
}

subdir('po', if_found: libintl)