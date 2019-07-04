class Vp1lightMac < Formula

  desc "The VP1light HEP event and geometry display"
  homepage "http://atlas-vp1.web.cern.ch/atlas-vp1/home/"

  # SOURCES
  url "https://gitlab.cern.ch/rbianchi/athena/-/archive/1.0/athena-1.0.zip"
  sha256 "f9011ede226651efbb8ab5f3e347853fc671d9dbda4f5499aa5d592b9d522ec5"

  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "boost" # tested OK with boost v. 1.70
  depends_on "clhep"
  depends_on "eigen"

  #depends_on "https://gitlab.cern.ch/GeoModelDev/packaging/homebrew-geomodel/raw/master/geomodelcore.rb"
  depends_on "atlas/geomodel/geomodelcore"
  depends_on "atlas/geomodel/geomodelio"

  depends_on "ric-bianchi/coin3d/coin"
  depends_on "ric-bianchi/coin3d/simage"
  depends_on "ric-bianchi/coin3d/soqt5"

  depends_on "ric-bianchi/vp1light/vp1light-root"
  depends_on "ric-bianchi/vp1light/vp1light-googletest"
  depends_on "ric-bianchi/vp1light/heputils"
  depends_on "ric-bianchi/vp1light/mcutils"
  depends_on "ric-bianchi/vp1light/heppdt"

  # COMPILATION INSTRUCTIONS
  def install
       ENV.deparallelize
       ENV["ROOTSYS"]    = "/usr/local"
       ENV["LIBPATH"]    = "/usr/local/lib/root"
       ENV["SHLIB_PATH"] = "/usr/local/lib/root"
       mkdir "builddir" do
       system "echo $PATH "
       system "cmake", "../Projects/VP1LightPackaging", "-DCMAKE_CXX_COMPILER=/usr/bin/clang++", *std_cmake_args
       system "make", "install"
    end
  end

  # PRE-COMPILED PACKAGES ("Bottles")
  bottle do
    root_url "http://atlas-vp1.web.cern.ch/atlas-vp1/sources/bottles"
    cellar :any
    sha256 "6c44c588189e1105528fad7ac73fd873033faf5a311a212f1205c2faf9f9aa7d" => :mojave
  end

end
