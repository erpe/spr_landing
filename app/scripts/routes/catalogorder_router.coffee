SprLanding.CatalogorderRoute = Ember.Route.extend(

  model: ->
    @get('store').find('catalog')

 )
