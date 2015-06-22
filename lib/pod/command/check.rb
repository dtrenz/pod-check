module Pod
  class Command
    class Open < Command

      self.summary = 'Checks if the dependencies listed in Podfile are satisfied by currently installed pods'
      self.description = <<-DESC
        If all pods are found, prints a success message and exits with a status of 0.
        If not, the first missing pod is listed and exits with a status of 1.
      DESC

      # def self.options
      #   [
      #     ['-a',     'Open in AppCode.']
      #   ]
      # end

      # def initialize(argv)
      #   @use_appcode = (argv.shift_argument == '-a')
      #   @workspace = find_workspace_in(Pathname.pwd)
      #   super
      # end

      # def validate!
      #   super
      #   raise Informative, "No xcode workspace found" unless @workspace
      #   if @use_appcode
      #     raise Informative, "Can't find `#{appcode_executable}` command line launcher. Have you created it? 'AppCode->Tools->Create Command line launcher'" unless appcode_available?
      #   end
      # end

      # def run
      #   if @use_appcode
      #     `#{appcode_executable} "#{@workspace}"`
      #   else
      #     `open "#{@workspace}"`
      #   end
      # end

      # private

      # def find_workspace_in(path)
      #   path.children.find {|fn| fn.extname == '.xcworkspace'} || find_workspace_in_parent(path)
      # end

      # def find_workspace_in_parent(path)
      #   find_workspace_in(path.parent) unless path.root?
      # end

      # def appcode_available?
      #   `which #{appcode_executable}`
      #   $?.exitstatus == 0
      # end

      # def appcode_executable
      #   'appcode'
      # end
    end
  end
end