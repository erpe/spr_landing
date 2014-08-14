SprLanding.Router.map( ->
  
  @resource('catalogs', ->
    @route('create')
  )
 
  @resource('catalogorder')
    
  @route('impressum')
  @route('thanks')
  
)
