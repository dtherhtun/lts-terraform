locals {
  up_words = { for k, v in var.words : k => [for i in v : upper(i)] if k != "numbers" }
}

resource "random_shuffle" "random_nouns" {
  input = local.up_words["nouns"]
}

resource "random_shuffle" "random_adjectives" {
  input = local.up_words["adjectives"]
}

resource "random_shuffle" "random_verbs" {
  input = local.up_words["verbs"]
}

resource "random_shuffle" "random_adverbs" {
  input = local.up_words["adverbs"]
}

resource "random_shuffle" "random_numbers" {
  input = var.words["numbers"]
}

output "template_result" {
  value = templatefile("alice1.txt", {
    nouns      = random_shuffle.random_nouns.result
    adjectives = random_shuffle.random_adjectives.result
    verbs      = random_shuffle.random_verbs.result
    adverbs    = random_shuffle.random_adverbs.result
    numbers    = random_shuffle.random_numbers.result
  })
}

resource "local_file" "final_result" {
	count = var.is_create == "yes" ? 1 : 0
	#count = var.is_create ? var.num_of_file : 0
  content = templatefile("alice1.txt", {
    nouns      = random_shuffle.random_nouns.result
    adjectives = random_shuffle.random_adjectives.result
    verbs      = random_shuffle.random_verbs.result
    adverbs    = random_shuffle.random_adverbs.result
    numbers    = random_shuffle.random_numbers.result
  })

  filename = format("final_result-%s.txt", count.index + 1) 
}
