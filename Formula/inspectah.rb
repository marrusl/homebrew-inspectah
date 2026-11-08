class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  version "0.9.0-beta.5"
  url "https://github.com/marrusl/inspectah/releases/download/v0.9.0-beta.5/inspectah-darwin-arm64"
  sha256 "9fcfc6bb2f745479090394a0263a1461240bb1dd5b92222def6aa744120a4cac"
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
