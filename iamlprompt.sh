# this is if you prefer to have your iam role above your left prompt
function whoiam () {
    node -pe 'JSON.parse(process.argv[1])["Arn"]' "$(aws sts get-caller-identity)"
}
PROMPT="$(whoiam)
$(echo $PROMPT)"
