class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  version "0.8.6-beta.5"
  url "https://github.com/marrusl/inspectah/archive/refs/tags/v0.9.0-beta.3.tar.gz"
  sha256 "27d34fa10b5769c6ef7b815600ded90d93af2e49bd6812fff5db4c918bf8b6c0"
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
