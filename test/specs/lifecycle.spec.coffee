describe 'angular-lifecycle.Lifecycle', ->

  Lifecycle = null

  beforeEach module 'angular-lifecycle'

  beforeEach inject (_Lifecycle_)->
    Lifecycle = _Lifecycle_

  it 'exists', ->
    Lifecycle.should.exist

  it 'is settable', ->
    lc = Lifecycle
    lc.setLifecycle 'qwer'
    lc.getLifecycle().should.eql 'qwer'

  describe '#dependencies', ->

    it 'doesnt start with state', ->
      lc = Lifecycle
      lc.should.not.have.property 'state'

    it 'sets state after dependencies() called', ->
      lc = Lifecycle
      lc.dependencies()
      lc.should.have.property '_state'


  describe 'Special states', ->
    lc = null

    beforeEach ->
      lc = Lifecycle

    it 'is empty without state', ->
      lc.hasLifecycle().should.be.false

    it 'checks for loaded', ->
      lc.isLoaded().should.be.false
      lc.setLifecycle 'loaded'
      lc.isLoaded().should.be.true

    it 'checks for dirty', ->
      lc.isDirty().should.be.false
      lc.setLifecycle 'dirty'
      lc.isDirty().should.be.true

    it 'checks for saving', ->
      lc.isSaving().should.be.false
      lc.setLifecycle 'saving'
      lc.isSaving().should.be.true

    it 'checks for deleted', ->
      lc.isDeleted().should.be.false
      lc.setLifecycle 'deleted'
      lc.isDeleted().should.be.true

    it 'checks for error', ->
      lc.isError().should.be.false
      lc.setLifecycle 'error'
      lc.isError().should.be.true

    it 'checks for new', ->
      lc.isNew().should.be.false
      lc.setLifecycle 'new'
      lc.isNew().should.be.true

    it 'checks for valid', ->
      lc.isValid().should.be.false
      lc.setLifecycle 'valid'
      lc.isValid().should.be.true
