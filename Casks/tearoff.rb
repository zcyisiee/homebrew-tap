cask "tearoff" do
  version "4.2.0"

  on_arm do
    sha256 "89f87804db2dbf88533635bd2a808c6d651ac7337c3cc79675a2db70d8f9174c"
    url "https://github.com/zcyisiee/Tearoff/releases/download/v#{version}/Tearoff-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "5ec401b87077240bfc9adcee0d45453bd9d9d95c38030de4976bf6c9bbd7199d"
    url "https://github.com/zcyisiee/Tearoff/releases/download/v#{version}/Tearoff-v#{version}-x86_64.dmg"
  end

  name "Tearoff"
  desc "Native macOS side-panel Markdown notes app"
  homepage "https://github.com/zcyisiee/Tearoff"

  depends_on macos: :sequoia

  app "Tearoff.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Tearoff.app"]
  end
end
