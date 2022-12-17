# whoiam-zsh-prompt
RPROMPT for the user with multiple IAM roles

1. Add your credentials to your .aws folder.
2. Copy the contents of the `iamrprompt.sh` to your `.zshrc` file.
3. Restart your terminal.

Your IAM role should show up on your right side prompt so you know which AWS account and role you are currently using.
To refresh the prompt and make sure you are who you think you are, run `refreshIamPrompt`.

You can also run `whoiam` whenever you need to check.
