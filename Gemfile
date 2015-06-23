source 'https://rubygems.org'

# Specify your gem's dependencies in pod-check.gemspec
gemspec

group :development do
  gem 'cocoapods',      :git => "https://github.com/CocoaPods/CocoaPods.git", :branch => 'master'
  gem 'cocoapods-core', :git => "https://github.com/CocoaPods/Core.git", :branch => 'master'
  gem 'claide',         :git => 'https://github.com/CocoaPods/CLAide.git', :branch => 'master'
  gem 'rspec'

  if RUBY_VERSION >= '1.9.3'
    gem 'rubocop'
  end
end
