# Maintainer: Felix Yan <felixonmars@archlinux.org>
# Contributor: Ionut Biru <ibiru@archlinux.org>
# Contributor: dingjing <dingjing@live.cn>

pkgname=udisks2
pkgver=2.9.4
pkgrel=1
pkgdesc="Disk Management Service, version 2"
arch=('x86_64')
url="https://github.com/graceful-linux/udisks"
license=('GPL2')
depends=('polkit' 'libatasmart' 'libgudev' 'libblockdev')
makedepends=('docbook-xsl' 'gobject-introspection' 'parted' 'gtk-doc')
optdepends=('gptfdisk: GUID partition table support'
            'ntfs-3g: NTFS filesystem management support'
            'dosfstools: VFAT filesystem management support')
backup=('etc/udisks2/udisks2.conf')
source=("https://github.com/graceful-linux/udisks/archive/refs/tags/udisks-debug-2.9.4.tar.gz")
sha512sums=('3836f6d2d6fe02eb9cccbb85d940bb5b4a07db1dafe7beba1f2ded110b04de03b1e0b79e11592c3a9b2f0e047ae4fc4284d895a953e1f4dd042e544634e505ca')

prepare() {
  mv udisks-udisks-debug-$pkgver udisks-udisks-$pkgver 
  cd udisks-udisks-debug-$pkgver
  NOCONFIGURE=1 ./autogen.sh
}

build() {
  cd udisks-udisks-$pkgver
  ./configure --prefix=/usr --sysconfdir=/etc \
      --sbindir=/usr/bin --libexecdir=/usr/lib \
      --with-systemdsystemunitdir=/usr/lib/systemd/system \
      --localstatedir=/var --disable-static \
      --enable-gtk-doc enable_available_modules=yes
  make
}

check() {
  cd udisks-udisks-$pkgver
  make check
}

package() {
  cd udisks-udisks-$pkgver
  make DESTDIR="$pkgdir" install
}
