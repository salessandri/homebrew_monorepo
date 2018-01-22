# Homebrew taps monorepo [![Build Status](https://travis-ci.org/athrunsun/homebrew_monorepo.svg?branch=master)](https://travis-ci.org/athrunsun/homebrew_monorepo)
This is the monorepo of all my homebrew taps, every tap is automatically updated when things checked in to this repo.

* homebrew-appimage -> https://github.com/athrunsun/homebrew-appimage
* homebrew-athruncask -> https://github.com/athrunsun/homebrew-athruncask
* homebrew-genericbinary -> https://github.com/athrunsun/homebrew-genericbinary
* homebrew-linuxbinary -> https://github.com/athrunsun/homebrew-linuxbinary
* homebrew-osxbinary -> https://github.com/athrunsun/homebrew-osxbinary

## FAQ
### Why "monorepo"?
As the number of my homebrew/linuxbrew tap repositories increases, it has been more and more annoying to do `git add`, `git commit`, `git push`, etc. for every one of them.

It'll be much more convenient to have a single repo to manage the source code of all taps, and use [travis-ci](https://travis-ci.org) to update each tap repo respectively.

### Why do I encounter conflicts when `brew update`?
However because I'm using force push when updating code (it would be impossible for travis-ci to fix conflicts), the downside is you may see conflicts when `brew update` (or `brew update -v`) on your local machines. If this does happen, untap the tap(s) and tap again.
