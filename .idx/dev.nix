{ pkgs, ... }: {
  channel = "stable-24.05";
  packages = [
    pkgs.nodejs_20,
    pkgs.nodePackages.nodemon,
    pkgs.nodePackages.http-server
  ];
  idx = {
    extensions = [];
    previews = {
      enable = true;
      previews = {
        web = {
          command = ["http-server", "-p", "$PORT", "-c-1"];
          manager = "web";
        };
      };
    };
  };
}
