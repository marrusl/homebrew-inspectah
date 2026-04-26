class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  url "https://github.com/marrusl/inspectah/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "1ac23bc36cc5b8761e376d2af3243c9563f1b318c00352492048700ca97773d0"
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
