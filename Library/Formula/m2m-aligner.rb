require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /home/jitl/bundles/linuxbrew/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class M2mAligner < Formula
  homepage ""
  url "https://m2m-aligner.googlecode.com/files/m2m-aligner-1.2.tar.gz"
  sha1 "7aa1406a367835dd88a3b898d9dc5d104eabea61"

  def install
    system "make"
    bin.install 'm2m-aligner'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test m2m-aligner`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
