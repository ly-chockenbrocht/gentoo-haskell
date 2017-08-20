# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="HaRe"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="the Haskell Refactorer"
HOMEPAGE="https://github.com/RefactoringTools/HaRe/wiki"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # tests build a lot of time

RDEPEND=">=app-emacs/ghc-mod-5.8.0:=[profile?] <app-emacs/ghc-mod-5.8.1:=[profile?]
	dev-haskell/cabal:=[profile?]
	dev-haskell/cabal-helper:=[profile?]
	>=dev-haskell/ghc-exactprint-0.5.3.0:=[profile?]
	dev-haskell/ghc-syb-utils:=[profile?]
	>=dev-haskell/gitrev-1.1:=[profile?]
	dev-haskell/hslogger:=[profile?]
	dev-haskell/monad-control:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/optparse-applicative-0.13.2:=[profile?]
	dev-haskell/optparse-simple:=[profile?]
	dev-haskell/strafunski-strategylib:=[profile?]
	dev-haskell/syb:=[profile?]
	dev-haskell/syz:=[profile?]
	dev-lang/ghc:=[profile?]
	>=dev-lang/ghc-7.10.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.4.0
"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	default

	# ghc blows up and does not finish compilation
	[[ $(ghc-version) == 7.10.* ]] && replace-hcflags -O[1-9] -O0

	cabal_chdeps \
		'optparse-applicative == 0.13.2.*' 'optparse-applicative >= 0.13.2'
}