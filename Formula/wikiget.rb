class Wikiget < Formula
  include Language::Python::Virtualenv

  desc "Download files from MediaWiki sites"
  homepage "https://github.com/clpo13/wikiget"
  url "https://github.com/clpo13/wikiget/archive/v0.2.1.tar.gz"
  sha256 "a79fbfeb163b1b37ac59a45d715884d8f03806fba30dce661b8743efefa15b76"

  depends_on "python"

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/62/85/7585750fd65599e88df0fed59c74f5075d4ea2fe611deceb95dd1c2fb25b/certifi-2019.9.11.tar.gz"
    sha256 "e4f3620cfea4f83eedc95b24abd9cd56f3c4b146dd0177e83a21b4eb49e21e50"
  end

  resource "chardet" do
    url "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz"
    sha256 "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae"
  end

  resource "future" do
    url "https://files.pythonhosted.org/packages/f6/85/c273089eb6efa5644c0a1382ea553554bc0d40e00a46d989ec67f123f8b5/future-0.18.0.tar.gz"
    sha256 "6142ef79e2416e432931d527452a1cab3aa4a754a0a53d25b2589f79e1106f34"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/ad/13/eb56951b6f7950cadb579ca166e448ba77f9d24efc03edd7e55fa57d04b7/idna-2.8.tar.gz"
    sha256 "c357b3f628cf53ae2c4c05627ecc484553142ca23264e593d327bcde5e9c3407"
  end

  resource "mwclient" do
    url "https://files.pythonhosted.org/packages/c1/ec/6206a7b3834572b3c1082f58dc960f4e49543395aa55955b598c29c9f8ad/mwclient-0.10.0.tar.gz"
    sha256 "c3f1598a5f75fb80e9b8373f6574042208358aed81470fc2178a8ae7474069af"
  end

  resource "oauthlib" do
    url "https://files.pythonhosted.org/packages/fc/c7/829c73c64d3749da7811c06319458e47f3461944da9d98bb4df1cb1598c2/oauthlib-3.1.0.tar.gz"
    sha256 "bee41cc35fcca6e988463cacc3bcb8a96224f470ca547e697b604cc697b2f889"
  end

  resource "pytest-runner" do
    url "https://files.pythonhosted.org/packages/d9/6d/4b41a74b31720e25abd4799be72d54811da4b4d0233e38b75864dcc1f7ad/pytest-runner-5.1.tar.gz"
    sha256 "25a013c8d84f0ca60bb01bd11913a3bcab420f601f0f236de4423074af656e7a"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/01/62/ddcf76d1d19885e8579acb1b1df26a852b03472c0e46d2b959a714c90608/requests-2.22.0.tar.gz"
    sha256 "11e007a8a2aa0323f5a921e9e6a2d7e4e67d9877e85773fba9ba6419025cbeb4"
  end

  resource "requests-oauthlib" do
    url "https://files.pythonhosted.org/packages/de/a2/f55312dfe2f7a344d0d4044fdfae12ac8a24169dc668bd55f72b27090c32/requests-oauthlib-1.2.0.tar.gz"
    sha256 "bd6533330e8748e94bf0b214775fed487d309b8b8fe823dc45641ebcd9a32f57"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz"
    sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/80/b3/6ca4806441b730782fc4613c6aa2070412295c5521f33ae151988e448929/tqdm-4.36.1.tar.gz"
    sha256 "abc25d0ce2397d070ef07d8c7e706aede7920da163c64997585d42d3537ece3d"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/ff/44/29655168da441dff66de03952880c6e2d17b252836ff1aa4421fba556424/urllib3-1.25.6.tar.gz"
    sha256 "9a107b99a5393caf59c7aa3c1249c16e6879447533d0887f4336dde834c7be86"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    system bin/"wikiget", "-vv", "File:Example.jpg"
    assert_predicate testpath/"Example.jpg", :exist?
  end
end
