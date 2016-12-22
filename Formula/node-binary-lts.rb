class NodeBinaryLts < Formula
    desc "Platform built on the V8 JavaScript runtime to build network applications, binaries installation. This is the LTS version and is recommended for most users."
    homepage "https://nodejs.org/"
    version "6.9.2"

    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/node/, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "taobao-mirror"
        url "https://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}-darwin-x64.tar.xz"
    else
        url "https://nodejs.org/dist/v#{version}/node-v#{version}-darwin-x64.tar.xz"
    end

    sha256 "e14b5d06ad16c10fb2ff2e0e6bc894d511d70ad3121c1815a241b10295518747"

    bottle :unneeded
    conflicts_with "node", "node-binary"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
