# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Monad transformers and classes"
HOMEPAGE="https://int-index.github.io/ether/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/exceptions-0.8:=[profile?]
	>=dev-haskell/mmorph-1.0.4:=[profile?]
	>=dev-haskell/monad-control-1.0.0.4:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?]
	>=dev-haskell/transformers-base-0.4.4:=[profile?]
	>=dev-haskell/transformers-lift-0.1.0.1:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/quickcheck-2.8
		>=dev-haskell/tasty-0.10
		>=dev-haskell/tasty-quickcheck-0.8 )
"