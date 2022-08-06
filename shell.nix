let 
    pkgs = import <nixpkgs> {};
    tex = pkgs.texlive.combine {
        inherit (pkgs.texlive) scheme-full;
    };
in
    pkgs.mkShell.override {} {
        buildInputs = with pkgs; [
            texstudio
            tex
            gv
        ];
    }