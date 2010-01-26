require 'formula'

class Pycairo < Formula
  url 'http://www.cairographics.org/releases/pycairo-1.8.8.tar.gz'
  homepage 'http://www.cairographics.org/pycairo/'
  md5 '054da6c125cb427a003f5fd6c54f853e'

  depends_on 'cairo'

  def install
    ENV['PKG_CONFIG_PATH'] = '/usr/local/lib/pkgconfig'
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking"
    system "make install"
  end
end
