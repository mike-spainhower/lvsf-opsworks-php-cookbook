# lvsf-opsworks-php-cookbook-cookbook

Cookbook that brings up any of our PHP apps.

## Usage

Be sure you have kitchen and chef fully set up first - https://github.com/LiveSafe/livesafe-tech-wiki/wiki/Get-started-with-Chef


Install all the deps:
```bash
bundle install
berks install
```

Bring up the VM with Kitchen:
```bash
bundle exec kitchen converge
```

## Supported Platforms

Ubuntu 14.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['lvsf-opsworks-php-cookbook']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### lvsf-opsworks-php-cookbook::default

Include `lvsf-opsworks-php-cookbook` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[lvsf-opsworks-php-cookbook::default]"
  ]
}
```

## License and Authors

LiveSafe
MIT License
