SprLanding.Router.map( ->
  
  @resource('catalogs', ->
    @resource('catalog', path: '/:catalog_id', ->
      @route('edit')
    )
    @route('create')
  )
  
  @resource('catalogorders', ->
    @resource('catalogorder', path: '/:catalogorder_id')
  )

  
  @resource('foobars', ->
    @resource('foobar', path: '/:foobar_id', ->
      @route('edit')
    )
    @route('create')
  )

  @route('impressum')
  
)
