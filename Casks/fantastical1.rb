cask 'fantastical1' do
  version '1.3.19'
  sha256 'a0c8f05072c686aeedd79640ceb887a2b07d6c1f6378b88e53ecdbcd2cb26eec'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast.php',
          :sha256 => '24bfd6281e906d1e15826fcee41e7a65517e8add89776862cdb41b60c281d3ce'
  name 'Fantastical'
  homepage 'http://flexibits.com/fantastical'
  license :commercial

  app 'Fantastical.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => '~/Library/Preferences/com.flexibits.fantastical.plist'
end
