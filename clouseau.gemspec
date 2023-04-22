# frozen_string_literal: true

require_relative 'lib/clouseau/version'

Gem::Specification.new do |spec|
  spec.name = 'clouseau'
  spec.version = Clouseau::VERSION
  spec.authors = ['Sam Jenkins']
  spec.email = ['dustpan.umpires0y@icloud.com']
  spec.summary = 'Anonymise the data in your database.'
  spec.required_ruby_version = '>= 3.0.0'
  spec.description = <<~DESCRIPTION
    Want to develop your application using a copy of your produciton data?
    Does your production data contain sensitive user information?
    Clouseau provides a convenient way to anonymise the data in a database.
  DESCRIPTION
  spec.homepage = 'https://github.com/team-florence/clouseau'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = 'https://github.com/team-florence/clouseau/blob/main/CHANGELOG.md'
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = 'exe'
  spec.executables << 'clouseau'
  spec.require_paths = ['lib']
end
