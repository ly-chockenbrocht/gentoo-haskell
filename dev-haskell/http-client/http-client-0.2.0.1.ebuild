# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="An HTTP client engine, intended as a base layer for more user-friendly packages."
HOMEPAGE="https://github.com/snoyberg/http-client"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base64-bytestring-1.0:=[profile?] <dev-haskell/base64-bytestring-1.1:=[profile?]
	>=dev-haskell/blaze-builder-0.3:=[profile?]
	>=dev-haskell/case-insensitive-1.0:=[profile?] <dev-haskell/case-insensitive-1.2:=[profile?]
	dev-haskell/cookie:=[profile?]
	dev-haskell/data-default:=[profile?]
	>=dev-haskell/failure-0.2:=[profile?] <dev-haskell/failure-0.3:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?]
	>=dev-haskell/network-2.3:=[profile?]
	dev-haskell/publicsuffixlist:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	dev-haskell/transformers:=[profile?]
	>=dev-haskell/zlib-bindings-0.1:=[profile?] <dev-haskell/zlib-bindings-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/deepseq
		dev-haskell/hspec
		dev-haskell/monad-control
		dev-haskell/zlib )
"
