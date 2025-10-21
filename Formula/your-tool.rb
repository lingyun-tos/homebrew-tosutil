```ruby
class YourTool < Formula
  desc "tosutil is a command-line tool for accessing and managing TOS(Torch Object Storage) resource in the volcengine"
  homepage "https://www.volcengine.com/docs/6349/148775?lang=en"
  version "4.1.2"
  
  if Hardware::CPU.arm?
    url "https://github.com/volcengine/tosutil/releases/download/v4.1.2/tosutil-mac-arm64.zip"
    sha256 "PASTE_ARM64_SHA256_HERE"
  else
    url "https://github.com/volcengine/tosutil/releases/download/v4.1.2/tosutil-mac-amd64.zip"
    sha256 "PASTE_AMD64_SHA256_HERE"
  end

  def install
    bin.install "tosutil"
  end

  test do
    system "#{bin}/tosutil", "version"
  end
end
```