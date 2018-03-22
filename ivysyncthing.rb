class Ivysyncthing < Formula
  desc ""
  homepage ""
  url "https://github.com/dipenpatel235/ivysyncthing/archive/v1.0.1.tar.gz"
  version "1.0.0"
  sha256 "1bdd5a8ea1e1e3a2a26836531d5170ccca010d2a68aaea67eebf32eafe929ff1"

  def install
	bin.install "ivysyncthing"
  end


  ## Plist handling

  # Does your plist need to be loaded at startup?
  plist_options :startup => true
  # Define this method to provide a plist.
  # Looking for another example? Check out Apple's handy manpage =>
  # https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man5/plist.5.html
  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
        <dict>
                <key>Label</key>
                <string>#{plist_name}</string>

                <key>ProgramArguments</key>
                <array>
                        <string>/usr/local/bin/ivysyncthing</string>
                </array>

                <key>EnvironmentVariables</key>
                <dict>
                        <key>STNORESTART</key>
                        <string>1</string>
                </dict>

                <key>KeepAlive</key>
                <true/>

                <key>LowPriorityIO</key>
                <true/>

                <key>ProcessType</key>
                <string>Background</string>

        </dict>
    </plist>
    EOS
  end

end
