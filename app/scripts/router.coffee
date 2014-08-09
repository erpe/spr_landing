SprLanding.Router.map( ->
  
  # route index to catalogs controller
  #@route('index', path: '/catalogs')

  @route('impressum')
  
  # here we go with /catalogs/
  @resource('catalogs', ->
    @resource('catalog', path: '/:catalog_id', ->
      @route('edit')
    )
    @route('create')
  )
)
