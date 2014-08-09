SprLanding.CatalogRoute = Ember.Route.extend(
  model: (params) ->
    @get('store').find('catalog', params.catalog_id)
)

