class Cask < Formula
  version "0.0.0"
  desc "Browser bookmarks, but better"
  homepage "https://github.com/dandeandean/bookworm"
  url "https://github.com/dandeandean/bookworm/releases/download/v#{version}/bookworm-macos-latest.zip"
  sha256 "f329c83947f2c26a5664d47e7bcf81bd00e2efb7900e0d00917759aa9e34e1d3"
  license "MIT"
  head "https://github.com/dandeandean/bookworm", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end
end
