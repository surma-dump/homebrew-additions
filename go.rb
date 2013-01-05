require 'formula'

class Go < Formula
  homepage 'http://golang.org'
  url 'https://code.google.com/p/go', :using => :hg, :branch => 'release'
  version '1.0.3'

  def install
    cp_r Dir["#{downloader.cached_location}/*", "#{downloader.cached_location}/.hg*"], "#{prefix}"
    ENV['GOROOT'] = "#{prefix}"
    Dir.chdir "#{prefix}/src" do
      system "./all.bash"
    end
  end

  def caveats; <<-EOS.undent
    Add these to your shell profile:
      export GOROOT="#{prefix}"
      export PATH=$GOROOT/bin:$PATH
    EOS
  end
end
