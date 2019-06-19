class Vp1lightMac < Formula

  desc "The VP1light HEP event and geometry display"

  homepage "http://atlas-vp1.web.cern.ch/atlas-vp1/home/"

  # url "qat.pitt.edu/other-src/vp1light-2.0.tar.gz"
  # url "https://atlas-vp1.web.cern.ch/atlas-vp1/sources/vp1light-2.0.tar.gz"
  # sha256 "82a8fe9250e6cfe8a129fe53740a3c87c09d73358f8a98169e8cb4d1144554d2"
  # url "https://atlas-vp1.web.cern.ch/atlas-vp1/sources/vp1light-2.1.zip"
  # url "http://localhost:8000/vp1light-2.1-N.tar.gz"

  head "git://127.0.0.1/", :using => :git # dev, live git branch
  # head "git://127.0.0.1/", :using => :git, :branch => "ric/master-new-vp1light-athena" # dev, live git branch

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "clhep"
  depends_on "eigen"

  # depends_on "https://gitlab.cern.ch/GeoModelDev/packaging/homebrew-geomodel/raw/master/geomodelkernel.rb"
  depends_on "atlas/geomodel/geomodelcore"
  depends_on "ric-bianchi/coin3d/coin"
  depends_on "ric-bianchi/coin3d/simage"
  depends_on "ric-bianchi/coin3d/soqt5"
  depends_on "ric-bianchi/vp1light/vp1light-root"
  depends_on "ric-bianchi/vp1light/vp1light-googletest"
  depends_on "ric-bianchi/vp1light/heputils"
  depends_on "ric-bianchi/vp1light/mcutils"
  depends_on "ric-bianchi/vp1light/heppdt"

  def install
       ENV.deparallelize
       ENV["ROOTSYS"]    = "/usr/local"
       ENV["LIBPATH"]    = "/usr/local/lib/root"
       ENV["SHLIB_PATH"] = "/usr/local/lib/root"
       mkdir "builddir" do
       system "echo $PATH "
       system "cmake", "../Projects/NewVP1Light", "-DCMAKE_CXX_COMPILER=/usr/bin/clang++", *std_cmake_args
       system "make", "install"
    end
  end
  # bottle do
  #   root_url "https://qat.pitt.edu/Bottles"
  #   cellar :any
  #   rebuild 2
  #   sha256 "fc1147d9aef47795a1f42e1db6da3cd1c0354a3c80d97cbb9309d94904ae5195" => :high_sierra
  #   rebuild 3
  #   sha256 "b0d4eae81a83c4a96d9d239a805a86b46cc6e806e2a2a661126874e4226e73e3" => :mojave
  # end


end
