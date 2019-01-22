class Lowdown < Formula
	desc "simple Markdown translator"
	homepage "https://kristaps.bsd.lv/lowdown"
	url "https://kristaps.bsd.lv/lowdown/snapshots/lowdown-0.4.2.tar.gz"
	sha256 "2a9d318a4f0898dd6cb65a46ad5cdf23d85660fcbbcebe19aa4828a4ca2f5c04"
	depends_on "kristapsdz/repo/libdiff" => :build
	def install
		system "./configure", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{share}", "BINDIR=#{bin}", "INCLUDEDIR=#{include}", "LIBDIR=#{lib}"
		system "make", "install"
	end
end
