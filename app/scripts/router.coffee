SprLanding.Router.map( ->
  
  @resource('catalogs', ->
    @resource('catalog', path: '/:catalog_id')
  )
  
  @resource('catalogorders', ->
    @resource('catalogorder', path: '/:catalogorder_id')
  )
  
  @route('impressum')
  
)


SprLanding.Router.reopen
  notifyPiwikAnalytics: ( ->
    u = this.get('url')
    console.log("tracking url: " + u)
    return PiwikAnalytics.trackPageView(u)
  ).on('didTransition')
