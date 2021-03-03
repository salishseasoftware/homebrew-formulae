class RandomWord < Formula
  desc "Yet another random word generator"
  homepage "https://github.com/salishseasoftware/random-word"
  url "https://github.com/salishseasoftware/random-word/archive/0.1.2.tar.gz"
  sha256 "6ed8c0254196e8b256df71e1a951ba65287225f1769632df4b5da5b5de28e633"
  license "MIT"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/onx-tool" "--count=3"
  end
end
