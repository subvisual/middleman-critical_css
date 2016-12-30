require "middleman-core"

module Middleman
  class CriticalCssExtension < Extension
    option :binary, "node_modules/.bin/critical", "The criticalCSS binary to use"
    option :minify, true, "Minify inlined CSS"

    def after_build
      Dir.glob(html_files) do |file|
        asset_path = File.join(app.root, file)

        file.slice! app.config[:build_dir] + File::SEPARATOR

        `#{cmd(asset_path, file)}`
      end
    end

    def html_files
      File.join(app.config[:build_dir], "**", "*.html")
    end

    def cmd(asset_path, file)
      args = [
        options.binary,
        asset_path,
        "--base", app.config[:build_dir],
        "--htmlTarget", file,
        "--extract", "--inline"
      ]
      args << "--minify" if options.minify

      args.join(" ")
    end
  end
end
