#Random_provider_Section
resource "random_shuffle" "nouns" {
  input = var.word_from_data.nouns
  #var.word_from_data.nouns = random_shuffle.nouns.result
}

resource "random_shuffle" "adjectives" {
  input = var.word_from_data.adjectives
}

resource "random_shuffle" "verbs" {
  input = var.word_from_data.verbs
}

resource "random_shuffle" "adverbs" {
  input = var.word_from_data.adverbs
}

resource "random_shuffle" "numbers" {
  input = var.word_from_data.numbers
}


#Local_Proider_Section
resource "local_file" "ncm" {
  filename = "Result.txt"
  content  = <<EOF
	Lewis Carroll's classic, "Alice's Adventures in Wonderland", as well
as its ${random_shuffle.adjectives.result[0]} sequel, "Through the Looking ${random_shuffle.nouns.result[0]}",
have enchanted both the young and old ${random_shuffle.nouns.result[1]}s for the last
${random_shuffle.numbers.result[0]} years, Alice's ${random_shuffle.adjectives.result[1]} adventures begin
when she ${random_shuffle.verbs.result[0]}s down a/an ${random_shuffle.adjectives.result[2]} hole and lands
in a strange and topsy-turvy ${random_shuffle.nouns.result[2]}. There she discovers she
can become a tall ${random_shuffle.nouns.result[3]} or a small ${random_shuffle.nouns.result[4]} simply by
nibbling on alternate sides of a magic ${random_shuffle.nouns.result[5]}. In her travels
through Wonderland, Alice ${random_shuffle.verbs.result[1]}s such remarkable
characters as the White ${random_shuffle.nouns.result[6]}, the ${random_shuffle.adjectives.result[3]} Hatter,
the Cheshire ${random_shuffle.nouns.result[7]}, and even the Queen of ${random_shuffle.nouns.result[8]}s.
Unfortunately, Alice's adventures come to a/an ${random_shuffle.adjectives.result[4]}
end when Alice awakens from her ${random_shuffle.nouns.result[8]}.
EOF
}

#Output_variable_Section
output "random_nouns_result" {
  value       = random_shuffle.nouns.result
  description = "The result for random shuffling nouns."
  #  sensitive   = true
}

output "random_adjectives_result" {
  value       = random_shuffle.adjectives.result
  description = "The result for random shuffling adjectives."
  #  sensitive   = true
}

output "random_verbs_result" {
  value       = random_shuffle.verbs.result
  description = "The result for random shuffling verbs."
  #  sensitive   = true
}

output "random_adverbs_result" {
  value       = random_shuffle.adverbs.result
  description = "The result for random shuffling adverbs."
  #  sensitive   = true
}

output "random_numbers_result" {
  value       = random_shuffle.numbers.result
  description = "The result for random shuffling numbers."
  #  sensitive   = true
}

