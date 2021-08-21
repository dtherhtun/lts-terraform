## Run terraform command 

```bash
$ terraform init && terraform apply --auto-approve
```
```bash
Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/local from the dependency lock file
- Reusing previous version of hashicorp/random from the dependency lock file
- Using previously-installed hashicorp/local v2.1.0
- Using previously-installed hashicorp/random v3.1.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
random_shuffle.random_verbs: Refreshing state... [id=-]
random_shuffle.random_adjectives: Refreshing state... [id=-]
random_shuffle.random_adverbs: Refreshing state... [id=-]
random_shuffle.random_numbers: Refreshing state... [id=-]
random_shuffle.random_nouns: Refreshing state... [id=-]
local_file.final_result: Refreshing state... [id=dc88332a09fa521b2a888946031e3521cec9638e]

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration and found no differences, so no changes are needed.

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

final_result_output = <<EOT
Lewis Carroll's classic, "Alice's Adventures in Wonderland", as well
as its sticky sequel, "Through the Looking cat",
have enchanted both the young and old jigsaws for the last
0 years, Alice's bitter adventures begin
when she kickeds down a/an grumpy hole and lands
in a strange and topsy-turvy jellyfish. There she discovers she
can become a tall milk or a small sun simply by
nibbling on alternate sides of a magic sandwich. In her travels
through Wonderland, Alice dances such remarkable
characters as the White panther, the abundant Hatter,
the Cheshire Zeus, and even the Queen of walnutss.
Unfortunately, Alice's adventures come to a/an chubby
end when Alice awakens from her walnuts.

EOT

```
