SprLanding.CatalogEditController = Ember.ObjectController.extend(
  needs: 'catalog'
  actions:
    save: ->
      self = this
      @get('buffer').forEach (attr)->
        self.get('controllers.catalog.model').set(attr.key, attr.value)
      @transitionToRoute 'catalog', @get('model')
)
