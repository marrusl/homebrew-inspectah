class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  version "0.9.0-beta.2"
  url "https://github.com/marrusl/inspectah/releases/download/v0.9.0-beta.2/inspectah-darwin-arm64"
  sha256 "531718e2475a62f74c11d7639f989039bccf82d1c95f7ba4b801e9853045240c"
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
