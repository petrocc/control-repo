class profile::r10k {
  class {'r10k':
    remote => 'git@github.com:petrocc/control-repo',
  }
  class {'r10k::webhook::config':
    use_mcollective => false,
    enable_ssl      => false,
  }
  class {'r10k::webhook':
    user  => 'root',
    group => 'root',
  }
}
