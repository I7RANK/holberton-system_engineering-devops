exec { 'custom_header':
  command   => 'sudo apt-get -y update;
  sudo apt -y install nginx;
  H_NAME=$(cat /etc/hostname);
  ARG_SED="/location \/ {/a \\\t\tadd_header X-Served-By $H_NAME;";
  sudo sed -i ${ARG_SED} /etc/nginx/sites-available/default;
  sudo service nginx restart',
  provider  => 'shell',
}
