## Local Provide Homework with random provider

```bash
#First,we have configuration template with random_shuffle generated values. 
File Name : alice.txt

Another file : data.txt 
In that data, we have list datas like nouns, adjectives, verbs, adverbs, numbers in words.
```

## Set Up Guide

Only have template and data files. So, we need variable file which include words and need actual data values file.

```bash

# We need variables file after checking files. 
So, Created new variable file.
$ variables.tf

# Also need data for variables to add data in terraform variable
So, Created new actual data values file  (copied data file)
$ terraform.tfvars 
```



## Let's initialize/plan and add Random Provider and random_shuffle Part
New File called main.tf
The resource random_shuffle generates a random permutation of a list of strings given as an argument.
1. Firstly, We will use  **random provider**  and **random_shuffel**.
2. After adding that random provider & random_shuffel resources ,

$ random_shuffle.random_nouns

$ random_shuffle.random_adverbs

$ random_shuffle.random_adjectives

$ random_shuffle.random_numbers

$ random_shuffle.random_verbs will be created
 


