class YarnBinary < Formula
    desc "JavaScript package manager, binary install (without any dependencies)."
    homepage "https://github.com/yarnpkg/yarn"
    url "https://github.com/yarnpkg/yarn/releases/download/v1.0.2/yarn-v1.0.2.tar.gz"
    sha256 "8a31f8fa50ab6d5f8852025fb0ea4a50f2f8b82792f060fa99de0acc370b0698"

    bottle :unneeded

    conflicts_with "yarn"

    def install
        libexec.install Dir["*"]
        bin.install_symlink "#{libexec}/bin/yarn.js" => "yarn"
        bin.install_symlink "#{libexec}/bin/yarn.js" => "yarnpkg"
        inreplace "#{libexec}/package.json", '"installationMethod": "tar"', '"installationMethod": "homebrew"'
    end
end
