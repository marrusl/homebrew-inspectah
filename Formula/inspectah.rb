class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  url "https://github.com/marrusl/inspectah/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "2de999fb6548201295f414066b8a71510ea90c3c633eac272a3b9bdd0a32c26f"
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
