class Ivysyncthing < Formula
  desc ""
  homepage ""
  url "https://github.com/dipenpatel235/ivysyncthing/archive/v1.0.1.tar.gz"
  version "1.0.0"
  sha256 "1bdd5a8ea1e1e3a2a26836531d5170ccca010d2a68aaea67eebf32eafe929ff1"

  def install
	bin.install "ivysyncthing"
        mv "ivysyncthing.plist", ~/Library/LaunchAgents/"ivysyncthing.plist"
  end
end
