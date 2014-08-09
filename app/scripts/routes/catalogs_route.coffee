SprLanding.CatalogsRoute = Ember.Route.extend(
  model: ->
    @get('store').find('catalog')
)
