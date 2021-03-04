class RandomWord < Formula
  homepage "https://github.com/salishseasoftware/random-word"
  head "https://github.com/salishseasoftware/random-word.git"
  url "https://github.com/salishseasoftware/random-word/archive/0.1.2.tar.gz"
  sha256 "6470479b2b6c8732bb66d95fa9e98e7d4fb6d31b"
  
  def install
    if build.head?
      bin.mkpath
      system "make", "install", "PREFIX=#{ bin }"
    else
      bin.install "set-simulator-location"
    end
  end
end