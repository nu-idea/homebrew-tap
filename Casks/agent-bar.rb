cask "agent-bar" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "f45859ea6a0403c9d23e3345474ad40f80d598b936fa0c53c968d3b7bbf83f60",
         intel: "bd5e0415a4328acc5b82aee71d1ef8a6b0d84b53089ec381a2d3842fb08eb267"

  url "https://github.com/nu-idea/agent-bar/releases/download/v#{version}/agent-bar-#{arch}.dmg"
  name "agent-bar"
  desc "Floating widget that shows which AI coding agent sessions are waiting for you"
  homepage "https://github.com/nu-idea/agent-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "agent-bar.app"

  # Not signed with a paid Apple Developer ID, so without this macOS blocks the first launch.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/agent-bar.app"]
  end

  zap trash: [
    "~/Library/Application Support/agent-bar",
    "~/Library/Logs/agent-bar.log",
    "~/Library/Preferences/io.github.nu-idea.agent-bar.plist",
    "~/Library/Saved Application State/io.github.nu-idea.agent-bar.savedState",
  ]
end
