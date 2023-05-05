{
  stdenv,
  pkgs,
}: {
  package,
  pname,
  version,
}:
stdenv.mkDerivation {
  inherit pname version;

  phases = ["installPhase"];
  installPhase = ''
    mkdir -p $out/bin
    echo '#!${pkgs.runtimeShell}' >> $out/bin/${pname}
    echo 'exec ${pkgs.bun}/bin/bun --bun ${package}/bin/${pname} "''$@"' >> $out/bin/${pname}
    chmod a+x $out/bin/${pname}
  '';
}
