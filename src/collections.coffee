class TastyPieCollection extends Backbone.Collection
  url: (data) ->
    @urlRoot

  parse: (data) ->
    if data? and data.meta?
      @meta = data.meta

    data.objects or data

  @factory = (model, endpoint) ->
    class AutoTastyPieCollection extends TastyPieCollection
      model: model
      urlRoot: endpoint

window.TastyBone.Collection = TastyPieCollection

