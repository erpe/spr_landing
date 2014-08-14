SprLanding.LineitemsController = Ember.ObjectController.extend(
  actions:
    createOrder: ->
      #console.log("before creating the order")
      order = @get('store').createRecord('lineItem', {
        name: 'here we go'
      })
      order.save()
      @transitionTo('impressum')
)
