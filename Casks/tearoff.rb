cask "tearoff" do
  version "4.0.1"

  on_arm do
    sha256 "7340f976a72be79d329878ab2826323d6bb9d13f36ef280048e029325e64e951"
    url "https://github.com/zcyisiee/Tearoff/releases/download/v#{version}/Tearoff-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "8eec1158acdb421c7886d7db84231dbbc9ffb2283b9c0acf6ca60be0255782cb"
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
