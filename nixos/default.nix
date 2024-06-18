{pkgs,...}:

pkgs.rustPlatform.buildRustPackage rec {
pname = "regolith-displayd";
version = "main";

src = ../.;

cargoHash = "sha256-JG4tUeeMyBzoUwatBKsZTN3+QFRadSdmH7zrNw9tO7w=";

nativeBuildInputs = with pkgs;[pkg-config rustc];
buildInputs = with pkgs;[glib];

  meta = {
    mainProgram = "regolith-displayd";
    description = "Daemon for providing gnome-control-center DisplayConfig DBus bindings for sway. ";
    homepage = "https://github.com/regolith-linux/regolith-displayd";
    license = pkgs.lib.licenses.gpl3Plus;
  };
}