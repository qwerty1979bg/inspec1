# InSpec Profile to check for the Russians

Check the syntax of the profile:
$ inspec check russians

Run all checks:
$ inspec exec russians

To run one control from the profile use `inspec exec /path/to/profile --controls name`.
$ inspec exec russians --controls <name>
