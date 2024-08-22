# 1-user_limit.pp
# Allowing higher hard/soft file open limits

$file = '/etc/security/limits.conf'

$hard_txt = 'holberton hard nofile'
$hard_rep = "${::hard_txt} 10000"
$soft_txt = 'holberton soft nofile'
$soft_rep = "${::soft_txt} 8000"

$hard_exists = "grep ${::hard_rep} ${::file}"
$soft_exists = "grep ${::soft_rep} ${::file}"

$hard_cmd = "sed -i '/${::hard_txt} /c ${::hard_rep}' ${::file}"
$soft_cmd = "sed -i '/${::soft_txt} /c ${::soft_rep}' ${::file}"

exec { 'hard_limit_fix':
  path    => '/bin',
  unless  => $hard_exists,
  command => $hard_cmd,
}
exec { 'soft_limit_fix':
  path    => '/bin',
  unless  => $soft_exists,
  command => $soft_cmd,
}

exec { 'notify_for_relogin':
  command     => 'echo "Please logout and login again or restart the system to apply file descriptor limits."',
  path        => '/bin',
  subscribe   => [Exec['soft_limit_fix'], Exec['hard_limit_fix']],
  refreshonly => true,
}
