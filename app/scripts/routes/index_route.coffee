SprLanding.IndexRoute = Ember.Route.extend(
  beforeModel: ->
    @transitionTo('catalogs')
)

