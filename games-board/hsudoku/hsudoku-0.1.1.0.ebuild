# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Sudoku game with a GTK3 interface"
HOMEPAGE="https://github.com/marcelmoosbrugger/hsudoku"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # loads sudoku from internet

RDEPEND=">=dev-haskell/gi-gtk-3.0:=[profile?] <dev-haskell/gi-gtk-3.1:=[profile?]
	>=dev-haskell/handsomesoup-0.4:=[profile?] <dev-haskell/handsomesoup-0.5:=[profile?]
	>=dev-haskell/haskell-gi-base-0.20:=[profile?] <dev-haskell/haskell-gi-base-0.21:=[profile?]
	>=dev-haskell/http-client-0.5:=[profile?] <dev-haskell/http-client-0.6:=[profile?]
	>=dev-haskell/http-client-tls-0.3:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
	>=dev-haskell/hxt-9.3:=[profile?] <dev-haskell/hxt-9.4:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( >=dev-haskell/hspec-2.2 <dev-haskell/hspec-2.5
		>=dev-haskell/quickcheck-2.9 <dev-haskell/quickcheck-2.10 )
"
