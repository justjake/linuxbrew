require "formula"

# Documentation: https://github.com/Homebrew/homebrew/wiki/Formula-Cookbook
#                /home/jitl/bundles/linuxbrew/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Phonetisaurus < Formula
  homepage "https://phonetisaurus.googlecode.com"
  url "https://phonetisaurus.googlecode.com/files/phonetisaurus-0.7.8.tgz"
  sha1 ""

  # depends_on "cmake" => :build
  # depends_on :x11 # if your formula requires any X11/XQuartz components
  # depends_on "OpenFST"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    cd 'src' do
      system 'make'
    end

    bin.install things
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test phonetisaurus`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
