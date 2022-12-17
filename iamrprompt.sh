alias whoiam="aws sts get-caller-identity"
function getArn () {
    node -pe 'JSON.parse(process.argv[1])["Arn"]' "$(whoiam)"
}
function refreshIamPrompt() {
    echo 'You are interacting with AWS as'
    getArn
    RPROMPT=$(getArn)
}
refreshIamPrompt
