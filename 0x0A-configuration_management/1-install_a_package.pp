#!/usr/bin/pup
# Install a specific version of flask (2.1.0)
package {'flask':
          version => '2.1.0,
          provider => 'pip3'
        }
