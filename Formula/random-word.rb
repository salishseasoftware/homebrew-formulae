

class RandomWord < Formula
    desc "Yet another random word generator"
    homepage "https://github.com/salishseasoftware/random-word"
    url "https://github.com/salishseasoftware/random-word.git",
      :tag => "0.1.2", :revision => "6470479b2b6c8732bb66d95fa9e98e7d4fb6d31b"
    head "https://github.com/salishseasoftware/random-word.git"
    license "MIT"
    
    depends_on :xcode => ["12.0", :build]
    
    def install
        system "make", "install", "prefix=#{bin}"
    end
    
    test do
        system "#{bin}/onx-tool" "--count=3"
    end
end