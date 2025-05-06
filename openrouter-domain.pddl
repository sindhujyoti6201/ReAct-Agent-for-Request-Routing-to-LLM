(define (domain openrouter-routing)
  (:requirements :strips :typing)

  (:types
    llm provider capability request account tokenlimit cost number inputmodality outputmodality parameter
  )

  (:predicates
    (has-capability ?l - llm ?c - capability)
    (provided-by ?l - llm ?p - provider)
    (has-cost-prompt ?l - llm ?n - number)
    (has-cost-completion ?l - llm ?n - number)
    (has-token-limit ?l - llm ?t - tokenlimit)
    (request-token-length ?r - request ?n - number)
    (request-input-modality ?r - request ?i - inputmodality)
    (request-output-modality ?r - request ?o - outputmodality)
    (request-parameter ?r - request ?p - parameter)
    (llm-input-modality ?l - llm ?i - inputmodality)
    (llm-output-modality ?l - llm ?o - outputmodality)
    (llm-supported-parameter ?l - llm ?p - parameter)
    (within-budget ?a - account ?n - number)
    (meets-requirement ?r - request ?c - capability)
    (fits-request ?l - llm ?r - request)
    (not-processed ?r - request)
    (processed ?r - request)
    (routed ?r - request ?l - llm)
  )

  (:action route-request
    :parameters (?r - request ?l - llm)
    :precondition (and
      (not-processed ?r)
      (fits-request ?l ?r)
    )
    :effect (and
      (not (not-processed ?r))
      (processed ?r)
      (routed ?r ?l)
    )
  )
)