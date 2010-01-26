require 'formula'

class Cairo <Formula
  url 'http://cairographics.org/releases/cairo-1.8.8.tar.gz'
  homepage 'http://cairographics.org'
  md5 'd3e1a1035ae563812d4dd44a74fb0dd0'

  depends_on 'pkg-config'
  depends_on 'pixman'

  def install
    system "./configure", "--prefix=#{prefix}", "--enable-quartz=yes", "--enable-quartz-font=yes", "--enable-xlib=no", "--disable-dependency-tracking"
    system "make"
    system "make install"
  end
end