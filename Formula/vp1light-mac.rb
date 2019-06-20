class Vp1lightMac < Formula

  desc "The VP1light HEP event and geometry display"
  homepage "http://atlas-vp1.web.cern.ch/atlas-vp1/home/"

  # SOURCES
  url "https://atlas-vp1.web.cern.ch/atlas-vp1/sources/vp1light-2.1-N.zip"
  sha256 "4d48027bcaad0e8c760304d15125ee954c9138a92d24dbdc5f7b0be6f741be49"

  # DEPENDENCIES
  depends_on "cmake" => :build
  depends_on "boost" # tested OK with boost v. 1.70
  depends_on "clhep"
  depends_on "eigen"

  depends_on "atlas/geomodel/geomodelcore"

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
       system "cmake", "../Projects/NewVP1Light", "-DCMAKE_CXX_COMPILER=/usr/bin/clang++", *std_cmake_args
       system "make", "install"
    end
  end

  # PRE-COMPILED PACKAGES ("Bottles")
  bottle do
    root_url "http://atlas-vp1.web.cern.ch/atlas-vp1/sources/bottles"
    cellar :any
    sha256 "5072ef105f9f3b9ba0aa31b10d31605487f78eb122a93a4ecd0f14172f006b50" => :mojave
  end

end
