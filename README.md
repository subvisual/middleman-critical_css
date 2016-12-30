## Middleman Critical CSS

Integration of [critical](https://github.com/addyosmani/critical) into [Middleman](https://middlemanapp.com/)'s pipeline.

### Dependencies

The `critical` binary must be available on the system.


### Usage


```
# Gemfile

gem "middleman-critical-css", "~> 0.0.1"

```

`bundle install`

```ruby
# config.rb

configure :build do
  activate :critical,
    :binary => "node_modules/.bin/critical",
    :minify => true

```
