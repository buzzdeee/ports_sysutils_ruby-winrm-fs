# $OpenBSD$

COMMENT =	remote Windows file system operations

DISTNAME =	winrm-fs-0.4.3
CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/WinRb/Winrm-fs
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-erubis,${MODRUBY_FLAVOR}>=2.7,<3.0 \
			devel/ruby-logging,${MODRUBY_FLAVOR}>=1.6.1,<3.0 \
			archivers/ruby-rubyzip,${MODRUBY_FLAVOR}>=1.1,<2.0 \
			sysutils/ruby-winrm,${MODRUBY_FLAVOR}>=1.5,<2.0

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
