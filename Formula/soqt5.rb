class Soqt5 < Formula
  desc "The SoQt package updated from the orginal by Joe Boudreau"
  homepage "qat.pitt.edu"

  # SOURCES
  url "http://atlas-vp1.web.cern.ch/atlas-vp1/sources/soqt5-1.2.1.zip"
  sha256 "e9caa7ec9871b9c2c3d05dc8ce44145f0fc8f93910b37251bd980104d2b03cb4"

  # DEPENDENCIES
  depends_on "qt5"
  depends_on "ric-bianchi/repo/coin"

  # COMPILATION INSTRUCTIONS
  def install
    ENV.deparallelize
    system "cd src/Inventor/Qt && qmake PREFIX=#{prefix} LIBS=-L/usr/local/lib QMAKE_STRIP="
    system "cd src/Inventor/Qt && make install"
  end

  # PRE-COMPILED PACKAGES ("Bottles")
  # bottle do
  #
  #   root_url "https://qat.pitt.edu/Bottles"
  #   cellar :any
  #   rebuild 1
  #   sha256 "341eee2bcec35b694d1593cd6cfb47b763658168fc46140bfd37cbbe73423b20" => :mojave
  #   sha256 "9ef0173f3af20bdd052aa1cdf368c65361f99b8f49bc1177b1bd8f7d316b4bf1" => :high_sierra
  #
  #
  # end

  # bottle do
  #   root_url "http://atlas-vp1.web.cern.ch/atlas-vp1/sources/bottles"
  #   cellar :any
  #   sha256 "b9660ee5c56b22e441a1cdfb2df6d0bdbff2b68ce221feb66f91764593660542" => :mojave
  # end

end
