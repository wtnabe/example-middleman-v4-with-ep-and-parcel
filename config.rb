# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

activate :external_pipeline, {
  name:    :parcel,
  command: build? ? 'yarn build' : 'yarn watch',
  source:  '.tmp/dist'
}

configure :build do
  activate :asset_hash
#   activate :minify_css
#   activate :minify_javascript
end
