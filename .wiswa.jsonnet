local utils = import 'utils.libjsonnet';

(import 'defaults.libjsonnet') + {
  // Project-specific
  description: 'PEP 561 type stubs for binaryornot.',
  keywords: ['pep561', 'stubs', 'types'],
  project_name: 'binaryornot-stubs',
  version: '0.0.3',
  citation+: {
    'date-released': '2025-04-15',
  },
  want_docs: false,
  want_tests: false,
  stubs_only: true,
  primary_module: 'binaryornot-stubs',
  pyproject+: {
    tool+: {
      poetry+: {
        group+: {
          dev+: {
            dependencies+: {
              binaryornot: '^0.4.4',
            },
          },
        },
      },
    },
  },
  // Common
  authors: [
    {
      'family-names': 'Udvare',
      'given-names': 'Andrew',
      email: 'audvare@gmail.com',
      name: '%s %s' % [self['given-names'], self['family-names']],
    },
  ],
  local funding_name = '%s2' % std.asciiLower(self.github_username),
  github_username: 'Tatsh',
  github+: {
    funding+: {
      ko_fi: funding_name,
      liberapay: funding_name,
      patreon: funding_name,
    },
  },
}
