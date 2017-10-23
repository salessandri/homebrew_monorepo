class YarnBinary < Formula
    desc "JavaScript package manager, binary install (without any dependencies)."
    homepage "https://github.com/yarnpkg/yarn"
    version "1.2.1"

    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/yarn/, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "taobao-mirror"
        url "https://npm.taobao.org/mirrors/yarn/#{version}/yarn-v#{version}.tar.gz"
    else
        url "https://github.com/yarnpkg/yarn/releases/download/v#{version}/yarn-v#{version}.tar.gz"
    end

    sha256 "f8ed07675c3a0b866e11a02af5c15d2f34c3aa261ab1501943ecee328786c959"

    bottle :unneeded

    conflicts_with "yarn"

    def install
        libexec.install Dir["*"]
        bin.install_symlink "#{libexec}/bin/yarn.js" => "yarn"
        bin.install_symlink "#{libexec}/bin/yarn.js" => "yarnpkg"
        inreplace "#{libexec}/package.json", '"installationMethod": "tar"', '"installationMethod": "homebrew"'
    end

    def caveats; <<-EOS.undent
        This formula differs from the original one,
        as it doesn't have any dependencies,
        and is downloading tarball from github or mirror site instead of official site.
        EOS
    end
end
