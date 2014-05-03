require 'formula'

class Openfst < Formula
  homepage 'http://www.openfst.org/'
  url 'http://openfst.cs.nyu.edu/twiki/pub/FST/FstDownload/openfst-1.3.4.tar.gz'
  sha1 '21972c05896b2154a3fa1bdca5c9a56350194b38' 

  option 'with-fsts-options', 'build support for compact, const, and lookahead fsts'

  def install
    ENV.libstdcxx if ENV.compiler == :clang && MacOS.version >= :mavericks
    args = [
      "--prefix=#{prefix}",
      "--disable-dependency-tracking",
        "--enable-far",
        "--enable-pdt"
    ]

    if build.with? 'with-fsts-options'
      args += [
        "--enable-compact-fsts",
        "--enable-const-fsts",
        "--enable-lookahead-fsts"
      ]
    end

    system "./configure", *args
    system "make install"
  end
end
