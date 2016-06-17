cask 'santa' do
  version '0.9.11'
  sha256 :no_check

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
