describe 'angular-lifecycle.Lifecycle', ->

  Lifecycle = null

  beforeEach module 'angular-lifecycle'

  beforeEach inject (_Lifecycle_)->
    Lifecycle = _Lifecycle_

  it 'exists', ->
    Lifecycle.should.exist
