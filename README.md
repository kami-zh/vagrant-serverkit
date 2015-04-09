# vagrant-serverkit (Mock)

vagrant-serverkit is a vagrant plugin for [Serverkit](https://github.com/r7kamura/serverkit/).

## Installation

**NOTE**: This plugin is nothing but a mock. Reserve `vagrant-serverkit` namespace for serverkit's official plugin.

```
$ vagrant plugin install vagrant-serverkit-mock
```

## Usage

Set up `~/.ssh/config`:

```
$ vagrant up --no-provision
$ vagrant ssh-config --host host_name >> ~/.ssh/config
```

Configure `Vagrantfile`:

```ruby
Vagrant.configure(2) do |config|
  config.vm.provision :serverkit do |config|
    # Host name set in ~/.ssh/confg
    config.host = 'host_name'

    # Path to the recipe file
    config.recipe = 'recipe.yml'

    # Path to the variables file (Optional)
    config.variables = 'variables.yml'
  end
end
```

Run:

```
$ vagrant provision
```

## Contributing

1. Fork it ( https://github.com/kami30k/vagrant-serverkit/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
