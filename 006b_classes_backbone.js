// from JC's presentation
// function binding =>
// this
Views.VolunteerList = Backbone.View.extend({
  // ...
  initialize: function() {
    this._render();
    this._bindCollectionEvents();
  },
  // ...
  _render: function() {
    var me = this;
    this.collection.each(function(volunteer) { me._add(volunteer); });
  }
});
