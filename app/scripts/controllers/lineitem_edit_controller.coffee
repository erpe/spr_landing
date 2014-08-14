SprLanding.LineitemEditController = Ember.ObjectController.extend(
  needs: [ 'lineitem']
  actions:
    save: ->
      self = this
      @get('buffer').forEach (attr)->
        self.get('controllers.lineitem.model').set(attr.key, attr.value)

      mod = @get('model')
      mod.save()
      @transitionToRoute 'lineitem', @get('model')
)
