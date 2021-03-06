# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Extra goodies for aeson"
HOMEPAGE="https://github.com/phadej/aeson-extra#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.7.0.6:=[profile?] <dev-haskell/aeson-1.3:=[profile?]
	>=dev-haskell/aeson-compat-0.3.0.0:=[profile?] <dev-haskell/aeson-compat-0.4:=[profile?]
	>=dev-haskell/attoparsec-0.11.3.4:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/attoparsec-iso8601-1.0:=[profile?] <dev-haskell/attoparsec-iso8601-1.1:=[profile?]
	>=dev-haskell/base-compat-0.6.0:=[profile?] <dev-haskell/base-compat-0.10:=[profile?]
	>=dev-haskell/exceptions-0.8:=[profile?] <dev-haskell/exceptions-0.9:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/parsec-3.1.9:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/recursion-schemes-4.1.2:=[profile?] <dev-haskell/recursion-schemes-5.1:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/these-0.7.4:=[profile?] <dev-haskell/these-0.8:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/quickcheck-instances-0.3 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/tasty-0.10
		>=dev-haskell/tasty-hunit-0.9
		>=dev-haskell/tasty-quickcheck-0.8
		>=dev-haskell/time-parsers-0.1.0.0 <dev-haskell/time-parsers-0.2 )
"

src_prepare() {
	default

	cabal_chdeps \
		'base                     >=4.6  && <4.11' 'base                     >=4.6' \
		'tasty                 >=0.10  && <0.12' 'tasty                 >=0.10' \
		'tasty-hunit           >=0.9   && <0.10' 'tasty-hunit           >=0.9' \
		'tasty-quickcheck      >=0.8   && <0.10' 'tasty-quickcheck      >=0.8'
}
