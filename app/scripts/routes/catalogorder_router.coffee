SprLanding.CatalogorderRoute = Ember.Route.extend(
  motherHost: "http://www.example.com"
  model: (params) ->
    console.log("CatalogOrderRoute - params: " + params)
    params
)
