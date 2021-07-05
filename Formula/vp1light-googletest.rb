# This formula created by Joe Boudreau <boudreau@pitt.edu> for the purpose
# of automating the build of the vp1light application.
class Vp1lightGoogletest < Formula
  desc "Googletest exclusively for the automated build of vp1light"
  homepage "https://github.com/google/googletest"

  # SOURCES
  url "https://codeload.github.com/google/googletest/tar.gz/release-1.8.1"
  sha256 "9bf1fe5182a604b4135edc1a425ae356c9ad15e9b23f9f12a02e80184c3a249c"

  # DEPENDENCIES
  bottle do
    root_url "https://qat.pitt.edu/Bottles"
    sha256 cellar: :any_skip_relocation, mojave: "3d414b2ea3fd25c6c2f16746d39906251a99bd0fc8e93d481feda90dfe766799"
  end

  depends_on "cmake" => :build

  def install
    system "cmake", "CMakeLists.txt", *std_cmake_args
    system "make", "install"
  end

  # PRE-COMPILED PACKAGES ("Bottles")
end
