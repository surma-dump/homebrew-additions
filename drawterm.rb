require 'formula'

class Drawterm < Formula
  homepage 'http://swtch.com/drawterm/'
  url 'http://swtch.com/drawterm/drawterm-osx-intel.gz',
	:using => GzipOnlyDownloadStrategy
  version 'osx'
  sha1 'd9db0336cf09bed9e7c3273551fcd252c9f4d179'

  def install
    File.rename("drawterm-osx-intel", "drawterm")
    bin.install "drawterm"
  end
end
