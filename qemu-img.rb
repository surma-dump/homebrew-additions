require 'formula'

class QemuImg < Formula
  qemu = Formula.factory('qemu')
  homepage qemu.homepage
  url qemu.url

  depends_on 'glib'

  def install
    args = %W[
      --prefix=#{prefix}
      --cc=#{ENV.cc}
      --host-cc=#{ENV.cc}
    ]
    system "./configure", *args
    system "make qemu-img"
    bin.install "qemu-img"
  end
end
