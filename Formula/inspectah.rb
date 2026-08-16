class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  version "0.8.6-beta.5"
  url "https://github.com/marrusl/inspectah/archive/refs/tags/v0.9.0-beta.2.tar.gz"
  sha256 "596963115960f0d57fa8b2edff7958b0efe6c7970aeb6687628874bec0cd1833"
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
