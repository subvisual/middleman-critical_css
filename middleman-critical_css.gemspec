# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "middleman-critical_css"
  spec.version       = "0.0.1"
  spec.authors       = ["Miguel Palhas"]
  spec.email         = ["miguel@subvisual.co"]

  spec.summary       = %q{criticalCSS integrated in middleman's pipeline}
  spec.description   = %q{criticalCSS integrated in middleman's pipeline}
  spec.homepage      = "https://github.com/subvisual/middleman-critical_css"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
end
