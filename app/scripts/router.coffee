SprLanding.Router.map( ->
  
  @resource('catalogs', ->
    @resource('catalog', path: '/:catalog_id')
  )
  
  @resource('catalogorders', ->
    @resource('catalogorder', path: '/:catalogorder_id')
  )
  
  @route('impressum')
  
)
