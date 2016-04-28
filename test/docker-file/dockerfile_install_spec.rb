require 'byebug'

describe "Dockerfile" do

  def run_os_check(command)
    `#{command}`.downcase
  end

  it "installs the right version of Ubuntu" do
    os = "ubuntu"
    version = "14"
    installation = run_os_check('lsb_release -a')
    expect(installation).to include(os)
    expect(installation).to include(version)
  end

  it "installs wget" do
    response = run_os_check('wget -O- http://www.google.com')
    expect(response).to include('google.com')
  end

  it "installs vim" do
    installation = run_os_check('vim --version')
    expect(installation).to include('vim - vi')
  end

  it "installs git" do
    installation = run_os_check('git version')
    expect(installation).to include('git version')
  end

  it "installs heroku" do
    installation = run_os_check('heroku version')
    expect(installation).to include('heroku-toolbelt')
  end

  it "installs ruby" do
    installation = run_os_check('ruby -v')
    expect(installation).to include('ruby')
  end

end
