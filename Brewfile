# Install command-line tools using Homebrew
# Usage: `brew bundle Brewfile`

# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
install coreutils
# Install some other useful utilities like `sponge`
install moreutils
# Install GNU `sed`, overwriting the built-in `sed`
install gnu-sed --default-names

# Install more recent versions of some OS X tools
install vim --override-system-vi
install homebrew/dupes/grep
install homebrew/dupes/screen

# Install other useful binaries
install ack
install git
install imagemagick --with-webp
install nmap
install node # This installs `npm` too using the recommended installation method
install p7zip
install pigz
install pv
install rename
install tree

# RCM
# tap thoughtbot/formulae
# install rcm

# Remove outdated versions from the cellar
cleanup