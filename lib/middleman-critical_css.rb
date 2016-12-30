require "middleman-core"

::Middleman::Extensions.register(:critical_css) do
  require "middleman-critical_css/extension"
  ::Middleman::CriticalCssExtension
end
