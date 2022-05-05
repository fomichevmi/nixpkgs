{ callPackage, Foundation, libobjc }:

callPackage ./generic.nix ({
  inherit Foundation libobjc;
  version = "6.12.0.171";
  srcArchiveSuffix = "tar.xz";
  sha256 = "0a025x5b3i8mswz9lb7hbmwhc1lis1ylwjpx3iqmbzd26s9fbgdc";
  enableParallelBuilding = true;
})
