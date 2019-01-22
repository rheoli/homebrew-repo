class Kwebapp < Formula
	desc "web application source generator"
	homepage "https://kristaps.bsd.lv/kwebapp"
	url "https://kristaps.bsd.lv/kwebapp/snapshots/kwebapp-0.6.9.tar.gz"
	sha256 "b2bf1e0a3f7609e53e0877eb033c9a8a5e847628433aeb3d2e1e0f202bcad18e"
	def install
		system "./configure", "CPPFLAGS=-I#{include}", "LDFLAGS=-L#{lib}", "PREFIX=#{prefix}", "MANDIR=#{man}", "SHAREDIR=#{share}"
		system "make", "install"
	end
end
