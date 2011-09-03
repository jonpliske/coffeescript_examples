# preserves 'this' using bind
# one of the special cases where a secret function is added
# callbacks and iterators

class Finch.Experiment
  # Ensure all guard functions return true. If a guard cannot be found, this
  # test will fail.
  guardMatches: (window) ->
    return true if @guards.length is 0

    _.all(@guards, (guard) =>
      # Check the specific experiment definition for the guard and fallback to
      # the `Finch.Experiments.Global` namespace
      @experimentDefinition().guards?[guard]?.call(window) or
        Finch.Experiments.Global.guards?[guard]?.call(window)
    )


class SubheaderMessageExperiment
  defer: ->
    $(document).bind 'finchDeferredRun', (event) =>
      @deferredRun window

