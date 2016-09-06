cask 'santa' do
  version '0.9.13'
  sha256 '561d4124f9ce146fb15f4b20af80a6d0b4c9fef24b2b6cb39cbb1878d51ea55e'

  url "https://github.com/google/santa/releases/download/#{version}/santa-#{version}.dmg"
  name 'Santa'
  homepage 'https://github.com/google/santa/'
  license :apache

  pkg 'santa-0.9.11.pkg'

  uninstall launchctl: [
                        'com.google.santad',
                        'com.google.santagui',
                       ],   

            kext: 'com.google.santa-driver',
            pkgutil: 'com.google.santa.*'

                        
end
