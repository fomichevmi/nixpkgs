{ stdenv, fetchFromGitHub, cmake, SDL2}:

#TODO: tests

stdenv.mkDerivation rec {
	pname = "faudio";
  version = "20.04";

  src = fetchFromGitHub {
    owner = "FNA-XNA";
    repo = "FAudio";
    rev = version;
    sha256 = "0ykc2y1w0wh6s3g9xzk3zqscvdjnf59923zxh2x0whxlcvndab2d";
  };

	nativeBuildInputs = [cmake];

  buildInputs = [ SDL2 ];

  meta = with stdenv.lib; {
    description = "XAudio reimplementation focusing to develop a fully accurate DirectX audio library";
    homepage = "https://github.com/FNA-XNA/FAudio";
    license = licenses.zlib;
    platforms = platforms.linux;
    maintainers = [ maintainers.marius851000 ];
  };
}
