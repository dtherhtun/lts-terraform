## Local Provide Homework with random provider

```bash
#First,we have configuration template with random_shuffle generated values. 
File Name : alice.txt

Another file : data.txt 
In that data, we have list datas like nouns, adjectives, verbs, adverbs, numbers in words.
```

## Set Up Guide

Only have template and data files. So, we need variable file which include words and need actual data value file

```bash

# We need variables file after checking files. 
So, Created new variable file.
$ variables.tf

# Also need data for variables to add data in terraform variable
So, Created new tfvars file  (copied data file)
$ terraform.tfvars 


