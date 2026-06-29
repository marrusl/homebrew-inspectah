class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  version "0.8.6-beta.5"
  url "https://github.com/marrusl/inspectah/archive/refs/tags/v0.8.7-beta.1.tar.gz"
  sha256 "342c7a70767653bc5de8b26255148647d1c206f8f90314ae9dab4cdaee03d69b"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "inspectah-darwin-arm64" => "inspectah"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inspectah version")
  end
end
