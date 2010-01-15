require 'formula'

class Pixman <Formula
  url 'http://cairographics.org/releases/pixman-0.15.12.tar.gz'
  homepage 'http://cairographics.org'
  md5 'b0270704035fbac78507c91ffd15fcb6'

  depends_on 'pkg-config'
  depends_on 'libpng'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-dependency-tracking" #, "--disable-gtk"

    system "make install"
  end
end
