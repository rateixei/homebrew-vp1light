class SoqtBb < Formula
  desc "The SoQt package, allowing Coin to be used with Qt"
  homepage "https://bitbucket.org/Coin3D"
  url "https://qat.pitt.edu/soqt-bb-1.0.tar.gz"
  sha256 "19ccdadfbf3b5deda0b96d00ffc47d22ff3d6a82107e3cc010dc0d55e1fd3739"
  depends_on "cmake" => :build
  depends_on "doxygen" => "build"
  depends_on "qt5"
  depends_on "ric-bianchi/repo/coin-bb" => :build
  def install
    mkdir "builddir" do
      system "cmake", "..", "-DCMAKE_CXX_FLAGS=-std=c++14", "-DCoin_DIR=/usr/local/Cellar/coin-bb/1.0/lib/cmake/Coin-4.0.0", *std_cmake_args
      system "make"
      system "sed -i \"\" s/QtCore/Qt5Core/g src/SoQt.pc"
      system "sed -i \"\" s/QtGui/Qt5PrintSupport/g src/SoQt.pc"
      system "sed -i \"\" s/QtOpenGL/Qt5OpenGL/g src/SoQt.pc"
      system "sed -i \"\" s/QtWidgets/Qt5Widgets/g src/SoQt.pc"
      system "mkdir -p #{prefix}/lib/pkgconfig"
      system "cp src/SoQt.pc #{prefix}/lib/pkgconfig"
      system "make",      "install"
    end
  end

  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    cellar :any
    sha256 "646473be5d879cb36fa750a1cb3c87492e2ceeca53dcb29abe2e266b8bb917db" => :high_sierra
    rebuild 1
    sha256 "6a617163e848937c2af603ddaad3ac846078b45893c8a05d513a59cc6c3238a7" => :mojave
  end

end
