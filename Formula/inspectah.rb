class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  version "0.9.0-beta.3"
  url "https://github.com/marrusl/inspectah/releases/download/v0.9.0-beta.3/inspectah-darwin-arm64"
  sha256 "035248db355f0cb85d516de6a76e550e355a89eacf47116b7eecb2f4a64771cb"
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
