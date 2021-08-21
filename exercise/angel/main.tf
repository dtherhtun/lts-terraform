terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.1.0"
    }
  }
}

resource "random_shuffle" "random_nouns"{
    input = var.words["nouns"]
}

resource "random_shuffle" "random_verbs"{
    input = var.words["verbs"]
}

resource "random_shuffle" "random_adjectives"{
    input = var.words["adjectives"]
}

resource "random_shuffle" "random_adverbs"{
    input = var.words["adverbs"]
}

resource "random_shuffle" "random_numbers"{
    input = var.words["numbers"]
}


#after applying, random_shuffle.random_$.results are generated.

output "template_result" {
  value = templatefile("alice.txt",{
    nouns=random_shuffle.random_nouns.result
    adjectives=random_shuffle.random_adjectives.result
    verbs=random_shuffle.random_verbs.result
    adverbs=random_shuffle.random_adverbs.result
    numbers=random_shuffle.random_numbers.result
  })
}