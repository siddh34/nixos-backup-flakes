{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    (python310.withPackages (
      ps:
        with ps; [
          # IDE
          jupyterlab
          ipython
          ipykernel

          # DS
          matplotlib
          numpy
          plotly
          scipy
          seaborn
          pandas

          # formatter
          black

          virtualenv
        ]
    )
    )
  ];
}
