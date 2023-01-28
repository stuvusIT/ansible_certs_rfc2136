# Role Name

This role obtains TLS certificates from Let's Encrypt via the ACME-DNS01 mechanism.



## Requirements

This role was developed and tested on a machine running Debian.
It might work on other linux distributions, but other operating systems are not supported.


## Role Variables

The role sets the `certs_rfc2136_lego_version` variable to the version of the latest release if it is not set.

| Name                         | Required/Default  | Description                                                                                                                                                                        |
| ---------------------------- | :---------------: | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `certs_rfc2136_dns_server`   | :heavy_checkmark: | IP address of the DNS server.                                                                                                                                                      |
| `certs_rfc2136_dns_port`     |       `53`        | The port of the DNS server.                                                                                                                                                        |
| `certs_rfc2136_algorithm`    |   `hmac-sha256`   | Algorithm used for the signature.                                                                                                                                                  |
| `certs_rfc2136_lego_version` |     `latest`      | The version of [lego](https://github.com/go-acme/lego) that should be installed. If not set, or set to `latest` the the variable will be set to the version of the latest release. |
| `certs_rfc2136_key_name`     | :heavy_checkmark: | The name of the TSIG key.                                                                                                                                                          |
| `certs_rfc2136_key_secret`   | :heavy_checkmark: | The TSIG key.                                                                                                                                                                      |
| `certs_rfc2136_certs`        | :heavy_checkmark: | List of `domains` dictionaries that each contain the list of domains for one certificate.                                                                                          |


## Example

The following example playbook assumes that you cloned this role to `roles/certs_rfc2136`
(i.e. the name of the role is `certs_rfc2136` instead of `ansible_certs_rfc2136`).

```yml
- hosts: rfc2136
  roles:
    - role: certs_rfc2136
      certs_rfc2136_dns_server: 127.0.0.1
      certs_rfc2136_key_name: example
      certs_rfc2136_key_secret: <<insert key>>
      certs_rfc2136_certs:
        - domains:
          - example.com
        - domains:
          - example.org
```


## License

This work is licensed under the [MIT License](./LICENSE).


## Author Information

- [Sven Feyerabend (SF2311)](https://github.com/SF2311) _sven.feyerabend at stuvus.uni-stuttgart.de_
