class GoBinary < Formula
    desc "Go programming environment, binary installation."
    homepage "https://golang.org"
    version "1.7.4"

    url "https://storage.googleapis.com/golang/go#{version}.darwin-amd64.tar.gz"
    sha256 "f86c727012e33f3f482b049281aaee24211fe29dfafd121d93f32799a6b6ba2d"

    bottle :unneeded
    conflicts_with "go"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end

    def caveats; <<-EOS.undent
        As of go 1.2, a valid GOPATH is required to use the `go get` command:
            https://golang.org/doc/code.html#GOPATH
        So don't forget to set GOROOT:
            export GOROOT=$(brew --prefix go)
        You may wish to add the GOROOT-based install location to your PATH:
            export PATH=$PATH:$GOROOT/bin
        Besides you may also want to set GOPATH:
            export GO_PATH=$HOME/go
        EOS
    end
end
