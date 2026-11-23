class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  version "0.9.0-beta.7"
  url "https://github.com/marrusl/inspectah/releases/download/v0.9.0-beta.7/inspectah-darwin-arm64"
  sha256 "79c6f428d6230b80dcf67b671dae08ec3d026eaad428b29fc0dc9c0aa1da9ba9"
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
