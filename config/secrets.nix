{ config, pkgs, lib, ... }: {
  # Secrets
  age.secrets = {
    api-nist = {
      file = ../secrets/api-nist.age;
    };
    api-shodan = {
      file = ../secrets/api-shodan.age;
    };
    api-telegram = {
      file = ../secrets/api-telegram.age;
    };
    api-virustotal = {
      file = ../secrets/api-virustotal.age;
    };
    vpn-mullvad = {
      file = ../secrets/vpn-mullvad.age;
    };
  };

  environment.etc = {
    api-nist =
    {
      source = config.age.secrets.api-nist.path;
      mode = "0444";
    };
    api-shodan =
    {
      source = config.age.secrets.api-shodan.path;
      mode = "0444";
    };
    api-telegram =
    {
      source = config.age.secrets.api-telegram.path;
      mode = "0444";
    };
    api-virustotal =
    {
      source = config.age.secrets.api-virustotal.path;
      mode = "0444";
    };
    vpn-mullvad =
    {
      source = config.age.secrets.vpn-mullvad.path;
      mode = "0444";
    };
  };
}