# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Be notified when a file gets appended, solely with what was added"
HOMEPAGE="http://hackage.haskell.org/package/follow-file"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/attoparsec:=[profile?]
	dev-haskell/attoparsec-path:=[profile?]
	dev-haskell/conduit:=[profile?]
	dev-haskell/conduit-combinators:=[profile?]
	dev-haskell/exceptions:=[profile?]
	dev-haskell/hinotify:=[profile?]
	dev-haskell/monad-control:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/path:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"
