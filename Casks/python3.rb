cask 'python3' do
    version '3.6.1'
    sha256 'f8217c9f15de4cf8d331ef9c3617aee457cc6571090c65f51a87e4ccac654811'
    name 'Python official binary release.'
    homepage 'https://www.python.org/'

    url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.6.pkg"
    pkg "python-#{version}-macosx10.6.pkg"
end
