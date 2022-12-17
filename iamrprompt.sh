function whoiam () {
    node -pe 'JSON.parse(process.argv[1])["Arn"]' "$(aws sts get-caller-identity)"
}
function refreshIamPrompt() {
    echo 'You are interacting with AWS as'
    whoiam
    RPROMPT=$(whoiam)
}
refreshIamPrompt
