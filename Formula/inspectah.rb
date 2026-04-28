class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  url "https://github.com/marrusl/inspectah/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "4cf19f161318be69a5e818febcff1c7463c9f27cd8cbe5f66130af23bba4bfd1"
  license "MIT"

  depends_on "go" => :build

  def install
    cd "cmd/inspectah" do
      ldflags = %W[
        -s -w
        -X main.version=#{version}
        -X main.commit=v#{version}
        -X main.date=#{time.iso8601}
      ]
      system "go", "build", *std_go_args(ldflags:), "-mod=vendor"
    end
  end

  test do
    output = shell_output("#{bin}/inspectah version")
    assert_match "inspectah wrapper", output
  end
end
