class NodeBinary < Formula
    desc "Platform built on the V8 JavaScript runtime to build network applications, binaries installation. This is the current version with latest features."
    homepage "https://nodejs.org/"
    version "7.3.0"

    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/node/, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "taobao-mirror"
        url "https://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}-darwin-x64.tar.xz"
    else
        url "https://nodejs.org/dist/v#{version}/node-v#{version}-darwin-x64.tar.xz"
    end

    sha256 "1c495c2e7af7ce5266d4bb64ef1b6fb114e0a662efdd7682e268a805f8a35946"

    bottle :unneeded
    conflicts_with "node", "node-binary-lts"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
