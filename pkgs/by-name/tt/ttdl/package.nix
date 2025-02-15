{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "ttdl";
  version = "4.8.0";

  src = fetchFromGitHub {
    owner = "VladimirMarkelov";
    repo = "ttdl";
    rev = "v${version}";
    sha256 = "sha256-RHmKCayouxtlbp/dpZlC9d9OuUXHDLVWucnuIP3rEhA=";
  };

  useFetchCargoVendor = true;
  cargoHash = "sha256-Jrr9/H9c9/u5Vf5Ym/WGIKPH/wXyt25LjK3XWidUyIc=";

  meta = with lib; {
    description = "CLI tool to manage todo lists in todo.txt format";
    homepage = "https://github.com/VladimirMarkelov/ttdl";
    changelog = "https://github.com/VladimirMarkelov/ttdl/blob/v${version}/changelog";
    license = with licenses; [ mit ];
    maintainers = with maintainers; [ _3JlOy-PYCCKUi ];
    mainProgram = "ttdl";
  };
}
