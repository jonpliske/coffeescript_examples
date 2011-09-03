var Note = Backbone.Model.extend({

  initialize: function() { ... },

  author: function() { ... },

  coordinates: function() { ... },

  allowedToEdit: function(account) {
    return true;
  }

});

var PrivateNote = Note.extend({

  allowedToEdit: function(account) {
    return account.owns(this);
  }

});

var Note = Backbone.Model.extend({
  set: function(attributes, options) {
    Backbone.Model.prototype.set.call(this, attributes, options);
    ...
  }
});
