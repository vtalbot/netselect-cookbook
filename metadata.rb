name                'netselect'
maintainer          'Vincent Talbot'
maintainer_email    'vincent.talbot@gmail.com'
license             'MIT'
description         'Select fastest apt mirror'
long_description    IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version             '0.1.0'

depends             'apt'

supports            'debian'
supports            'ubuntu'

recipe 'netselect', 'Select fastest apt mirror'
