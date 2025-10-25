class Bookworm < Formula
  version "0.0.0"
  desc "Browser bookmarks, but better"
  homepage "https://github.com/dandeandean/bookworm"
  url "https://github.com/dandeandean/bookworm/archive/refs/tags/v0.0.0.tar.gz"
  sha256 "7d90e1d721924aa1de6329de75f101b0445b035390782dec02f327acc3e82214"
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
    generate_completions_from_executable(bin/"bookworm", "completion", shells: [:bash, :zsh])
  end

end
