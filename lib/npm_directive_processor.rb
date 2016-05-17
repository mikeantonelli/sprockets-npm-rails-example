require 'sprockets/directive_processor'

# Credit: Rafael França @ RailsConf 2016 KCMO
# https://speakerdeck.com/rafaelfranca/how-sprockets-works

class NpmDirectiveProcessor < Sprockets::DirectiveProcessor

  def initialize(options = {})
    Rails.application.config.assets.paths << node_modules_root
    super(options)
  end

  def process_npm_directive(path)
    dirs = node_module_paths(path)
    uri, deps = @environment.resolve!(
      path,
      accept: @content_type,
      pipeline: :self,
      load_paths: dirs
    )
    @dependencies.merge(deps)
    @required << uri
  end

  private

  def node_module_paths(path)
    module_root = File.join(node_modules_root, path)
    # Create array of common npm distribution directories
    [module_root, File.join(module_root, 'dist')]
  end

  def node_modules_root
    @node_modules_root ||= File.join(Rails.root, 'node_modules')
  end
end
