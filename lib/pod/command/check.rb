module Pod
  class Command
    class Check < Command
      self.summary = 'Checks if the dependencies listed in Podfile are satisfied by currently installed pods'
      self.description = <<-DESC
        If all pods are found, prints a success message and exits with a status of 0.
        If not, the first missing pod is listed and exits with a status of 1.
      DESC

      def run
        # compare lockfile against installed pods and
        # return 0 if matching, or 1 if missing pods.
      end
    end
  end
end
