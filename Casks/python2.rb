cask 'python2' do
    version '2.7.13'
    sha256 '0843c59d394c64f24a5f9c342c7f41f8ae4e3adc65e32f24cc6f4a07cf55741a'
    name 'Python official binary release.'
    homepage 'https://www.python.org/'

    url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.6.pkg"
    pkg "python-#{version}-macosx10.6.pkg"
end
