class Bookworm < Formula
  version "0.0.0"
  desc "Browser bookmarks, but better"
  homepage "https://github.com/dandeandean/bookworm"
  url "https://github.com/dandeandean/bookworm/archive/refs/tags/v0.0.0.tar.gz"
  sha256 "f329c83947f2c26a5664d47e7bcf81bd00e2efb7900e0d00917759aa9e34e1d3"
  license "MIT"
  head "https://github.com/dandeandean/bookworm", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "go" => :build
  depends_on "icu4c@77"

  def install
    ldflags = "-s -w -X main.Version=#{version} -X main.Build=#{tap.user}"
    tags = %w[fts5 icu]
    system "go", "build", *std_go_args(ldflags:, tags:)
  end

end
