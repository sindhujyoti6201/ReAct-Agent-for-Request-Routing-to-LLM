(define (problem route-llm-request)
  (:domain openrouter-routing)

  (:objects
    qwen_qwen3_0_6b_free qwen_qwen3_1_7b_free qwen_qwen3_4b_free opengvlab_internvl3_14b_free deepseek_deepseek_prover_v2_free - llm
    openrouter - provider
    multilingual coding safe_for_kids content_safety multimodal - capability
    req1 req2 - request
    free_user - account
    n0 n1 - number
    tokenlimit_32000 tokenlimit_128000 - tokenlimit
    text_input image_input - inputmodality
    text_output - outputmodality
    max_tokens temperature top_p - parameter
  )

  (:init
    ; LLMs and their capabilities
    (has-capability qwen_qwen3_0_6b_free multilingual)
    (has-capability qwen_qwen3_0_6b_free coding)
    (has-capability qwen_qwen3_1_7b_free multilingual)
    (has-capability opengvlab_internvl3_14b_free multimodal)
    (has-capability deepseek_deepseek_prover_v2_free content_safety)
    (provided-by qwen_qwen3_0_6b_free openrouter)
    (provided-by qwen_qwen3_1_7b_free openrouter)
    (provided-by qwen_qwen3_4b_free openrouter)
    (provided-by opengvlab_internvl3_14b_free openrouter)
    (provided-by deepseek_deepseek_prover_v2_free openrouter)

    ; LLM costs and token limits
    (has-cost-prompt qwen_qwen3_0_6b_free n0)
    (has-cost-completion qwen_qwen3_0_6b_free n0)
    (has-token-limit qwen_qwen3_0_6b_free tokenlimit_32000)
    (has-cost-prompt qwen_qwen3_1_7b_free n0)
    (has-cost-completion qwen_qwen3_1_7b_free n0)
    (has-token-limit qwen_qwen3_1_7b_free tokenlimit_32000)
    (has-token-limit qwen_qwen3_4b_free tokenlimit_128000)
    (has-cost-prompt qwen_qwen3_4b_free n0)
    (has-cost-completion qwen_qwen3_4b_free n0)
    (has-cost-prompt opengvlab_internvl3_14b_free n0)
    (has-cost-completion opengvlab_internvl3_14b_free n0)
    (has-token-limit opengvlab_internvl3_14b_free tokenlimit_32000)
    (has-cost-prompt deepseek_deepseek_prover_v2_free n0)
    (has-cost-completion deepseek_deepseek_prover_v2_free n0)

    ; LLM input and output modalities
    (llm-input-modality qwen_qwen3_0_6b_free text_input)
    (llm-output-modality qwen_qwen3_0_6b_free text_output)
    (llm-input-modality qwen_qwen3_1_7b_free text_input)
    (llm-output-modality qwen_qwen3_1_7b_free text_output)
    (llm-input-modality qwen_qwen3_4b_free text_input)
    (llm-output-modality qwen_qwen3_4b_free text_output)
    (llm-input-modality opengvlab_internvl3_14b_free image_input)
    (llm-input-modality opengvlab_internvl3_14b_free text_input)
    (llm-output-modality opengvlab_internvl3_14b_free text_output)
    (llm-input-modality deepseek_deepseek_prover_v2_free text_input)
    (llm-output-modality deepseek_deepseek_prover_v2_free text_output)

    ; LLM supported parameters
    (llm-supported-parameter qwen_qwen3_0_6b_free max_tokens)
    (llm-supported-parameter qwen_qwen3_0_6b_free temperature)
    (llm-supported-parameter qwen_qwen3_1_7b_free max_tokens)
    (llm-supported-parameter opengvlab_internvl3_14b_free max_tokens)
    (llm-supported-parameter deepseek_deepseek_prover_v2_free max_tokens)

    ; Request definitions
    (request-input-modality req1 text_input)
    (request-output-modality req1 text_output)
    (request-input-modality req2 text_input)
    (request-output-modality req2 text_output)

    ; Request requirements
    (meets-requirement req1 multilingual)
    (meets-requirement req1 coding)
    (meets-requirement req2 safe_for_kids)

    ; Initial state of requests
    (not-processed req1)
    (not-processed req2)

    ; Account budget
    (within-budget free_user n1)

    ; Fits-request predicate
    (fits-request qwen_qwen3_0_6b_free req1)
    (fits-request qwen_qwen3_1_7b_free req1)
    (fits-request deepseek_deepseek_prover_v2_free req2)
  )

  (:goal
    (and
      (processed req1)
      (processed req2)
    )
  )
)