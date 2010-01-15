require 'formula'

class Httplib2 <Formula
  url 'http://httplib2.googlecode.com/files/httplib2-0.6.0.tar.gz'
  homepage 'http://httplib2.googlecode.com'
  md5 '04f73e296c02c9cd7151db33a2671b7c'


  def install
    system "python", "setup.py", "install", "--prefix=#{prefix}"
  end
end
