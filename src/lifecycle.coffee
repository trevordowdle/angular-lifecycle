# follows http://emberjs.com/guides/models/model-lifecycle/
# Note: Do not bind to this with =>, because will be mixing in to a new object
angular.module('angular-lifecycle').service 'Lifecycle',  ->

  dependencies: ->
    @_state = null

  setLifecycle: (state, model = @) ->
    model._state = state

  getLifecycle: (model = @) ->
    model._state

  isLifecycle: (state, model = @)->
    model._state is state

  hasLifecycle: (model = @) ->
    @getLifecycle(model)?

  isLoaded: (model = @) ->
    model._state is 'loaded'

  isDirty: (model = @) ->
    model._state is 'dirty'

  isSaving: (model = @) ->
    model._state is 'saving'

  isFetching: (model = @) ->
    model._state is 'fetching'

  isDeleted: (model = @) ->
    model._state is 'deleted'

  isError: (model = @) ->
    model._state is 'error'

  isNew: (model = @) ->
    model._state is 'new'

  isValid: (model = @) ->
    model._state is 'valid'
