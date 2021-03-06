window.App = Ember.Application.create()

App.ApplicationView = Ember.View.extend
  classNames: 'ember-app'
  templateName: 'application'

App.ApplicationController = Ember.Controller.extend
  tableController: Ember.computed ->
    controller = Ember.get('App.TreeTableExample.TableController').create()
    controller.set 'data', window.treedata
    controller
  .property()

App.Router = Ember.Router.extend
  root: Ember.Route.extend
    index: Ember.Route.extend
      route: '/'

App.initialize()