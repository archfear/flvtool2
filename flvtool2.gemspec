# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flvtool2/version'

Gem::Specification.new do |spec|
  spec.name          = "flvtool2"
  spec.version       = FLVTool2::VERSION
  spec.authors       = ["Norman Timmler"]
  spec.email         = ["norman.timmler@inlet-media.de"]
  spec.description   = %q{FLVTool2 is a manipulation tool for Macromedia Flash Video files (FLV). It can calculate a lot of meta data, insert an onMetaData tag, cut FLV files, add cue points (onCuePoint), show the FLV structure and print meta data information in XML or YAML.}
  spec.summary       = %q{Flash video (FLV) manipulation tool}
  spec.homepage      = "http://www.inlet-media.de/flvtool2"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
