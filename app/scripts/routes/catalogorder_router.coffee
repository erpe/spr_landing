SprLanding.CatalogorderRoute = Ember.Route.extend(
  
  model: (params) ->
    console.log("CatalogOrderRoute - params: " + params)
    params

  setupController: (controller, model) ->
    controller.set('model', model)
    controller.set('motherShip', "http://www.example.com")

)
