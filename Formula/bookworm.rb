class Cask < Formula
  desc "Browser bookmarks, but better"
  homepage "https://github.com/dandeandean/bookworm"
  url "https://github.com/dandeandean/bookworm"
  sha256 ""
  license "MIT"
  head "https://github.com/dandeandean/bookworm", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end
end
