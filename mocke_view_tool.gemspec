
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mocke_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "mocke_view_tool"
  spec.version       = MockeViewTool::VERSION
  spec.authors       = ["Rick"]
  spec.email         = ["50fpsocr@gmail.com"]

  spec.summary       = %q{Common Practical Methods for Views}
  spec.description   = %q{Generates HTML data for Rails applications}
  spec.homepage      = "http://github.com/50fps"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
