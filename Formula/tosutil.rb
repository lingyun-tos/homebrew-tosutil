class Tosutil < Formula
  desc "tosutil is a command-line tool for accessing and managing TOS(Torch Object Storage) resource in the volcengine"
  homepage "https://www.volcengine.com/docs/6349/148775?lang=en"
  version "4.1.2"
  
  if Hardware::CPU.arm?
    url "https://github.com/volcengine/tosutil/releases/download/v4.1.2/tosutil-mac-arm64.zip"
    sha256 "dffdc78932c3c2c23cc1d4015d7a32be72d4cfe9cd1ca1cc69b36a86bc8dc272"
  else
    url "https://github.com/volcengine/tosutil/releases/download/v4.1.2/tosutil-mac-amd64.zip"
    sha256 "8da4628a3178944d8c56814478d1ee3f935befd91ef248ebf3338e9ffb65c1ca"
  end

  def install
    bin.install "tosutil"
  end

  test do
    system "#{bin}/tosutil", "version"
  end
end
