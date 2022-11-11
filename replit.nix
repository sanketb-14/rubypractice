{ pkgs }: {
	deps = [
        pkgs.openssh_with_kerberos
        pkgs.ruby
        pkgs.solargraph
        pkgs.rufo
	];
}