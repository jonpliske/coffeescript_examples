# properly sets up inheritance chain
# keeps track of superclass
# adds __extends special function

class Note extends Backbone.Model
  initialize: ->

  set: (attributes, options) ->
    console.log "setting something..."
    super()
    console.log "...done setting"
