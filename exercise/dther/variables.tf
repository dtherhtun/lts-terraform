variable "words" {
  type = object({
    nouns      = list(string),
    adjectives = list(string),
    verbs      = list(string),
    adverbs    = list(string),
    numbers    = list(number)
  })
  description = " A word pool"
}

variable is_create {
  type = string
}

#variable num_of_file {
#	type = number
#}
