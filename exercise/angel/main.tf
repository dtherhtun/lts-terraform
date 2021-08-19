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


