case platform
when "fedora"
  default["graphite"]["platform"] = {
    "carbon_packages" => ["carbon"],
    "carbon_service" => "carbon-cache",
    "carbon_config" => "/etc/graphite/storage-schemas.conf.example",
    "whisper_packages" => ["whisper"],
    "graphite_packages" => ["graphite-web", "mod_python"],
    "package_overrides" => ""
  }
when "ubuntu"
  default["graphite"]["platform"] = {
    "carbon_packages" =>["python-carbon"],
    "carbon_service" => "carbon-cache",
    "carbon_config" => "/etc/carbon/storage-schemas.conf",
    "whisper_packages" => ["python-whisper"],
    "graphite_packages" => ["graphite"],
    "package_overrides" => "-o Dpkg::Options::='--force-confold' -o Dpkg::Options::='--force-confdef'",
  }
end
