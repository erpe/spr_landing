SprLanding.CatalogsRoute = Ember.Route.extend(

  model: ->
    @get('store').find('catalog')
  

  setupController: (controller, model) ->
    controller.set('model', model)
    controller.set('fields', {countryCode: 'de', termsAndConditions: true, targetAudience: 'youth'})
)
