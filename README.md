# Sandbox
Sandbox repo for testing all the things


## Notes

https://faun.pub/automate-infrastructure-provisioning-with-terraform-cloud-github-actions-iac-gitops-9aad3c35347f

https://github.com/marketplace/actions/terraform-cloud-action?version=v2


Example Query

```bash
pat='--- Enter your GitHub Personal Access Token ---'

curl \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $pat"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -X POST https://api.github.com/repos/jf781/sandbox/actions/workflows/45390399/dispatches \
  -d '{"ref":"main", "inputs": { "name":"Fox", "color":"Red", "tags":"{ \"costcenter\": \"1234\", \"businessunit\": \"Engineering\", \"dayofweek\": \"Tuesday\"}" }}'

```


Testing again




curl -X POST 'https://api.github.com/repos/jf781/lz-on-demand/actions/workflows/46876596/dispatches' \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $pat"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -d '{"ref":"main", "inputs": { "REGION":"CentralUS", "LANDING_ZONE_NAME":"exp-lz-repo-03", "TAGS":"{\"costcenter\": \"1234\", \"businessunit\": \"Engineering\", \"dayofweek\": \"Tuesday\"}", "TEMPLATE_REPO_URL":"https://github.com/jf781/lz-infra-bootstrap-repo" }}'



  curl -X POST 'https://api.github.com/orgs/jf781/repos' \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $pat"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -d '{"name":"exampleRepo","private":true}'


  curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $pat" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/user/repos \
  -d '{"name":"Hello-World-TEST","description":"This is your first repository","homepage":"https://github.com","private":false,"has_issues":true,"has_projects":true,"has_wiki":true}'


repoTestOutput=$(curl \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $pat"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/jf781/exampleRepo2)
repoExists=$( echo $repoTestOutput | jq '.id' -r )
if [ "$repoExists" != 'null' ]; then 
  repo_exists="true"
else
  repo_exists="false"
fi 

export TF_TOKEN_app_terraform_io='aD2hJV76W8VMcA.atlasv1.gD0wLVMyZYyVP2KAwgLdXi9btz5jYmEDFJcyy3Xt6w8YL6oApqmhjpIzGv5fP6HSzwk'

tfpat='aD2hJV76W8VMcA.atlasv1.gD0wLVMyZYyVP2KAwgLdXi9btz5jYmEDFJcyy3Xt6w8YL6oApqmhjpIzGv5fP6HSzwk'



output=$( curl \
        --header "Authorization: Bearer $tfpat" \
        --header "Content-Type: application/vnd.api+json" \
        --request GET https://app.terraform.io/api/v2/organizations/joe-demo/varsets )



applyOutput=$( curl -X POST 'https://app.terraform.io/api/v2/varsets/varset-hoBQTQ5TA98AzCti/relationships/workspaces' \
--header "Authorization: Bearer $tfpat" \
--header "Content-Type: application/vnd.api+json" \
--data-raw '{"data": [{"type": "workspaces", "id": "ws-ThP7mQur8brQcvnU"}]}' )


applyOutput=$( curl -X POST 'https://app.terraform.io/api/v2/varsets/varset-hoBQTQ5TA98AzCti/relationships/workspaces' \
--header "Authorization: Bearer $tfpat" \
--header "Content-Type: application/vnd.api+json" \
--data-raw '{"data": [{"type": "workspaces", "id": "ws-"}]}' )


applyOutput=$( curl -X POST 'https://app.terraform.io/api/v2/varsets/varset-hoBQTQ5TA98AzCti/relationships/workspaces' \
--header "Authorization: Bearer $tfpat" \
--header "Content-Type: application/vnd.api+json" \
--data @<(cat <<EOF
{
  "data": [
    {
      "type": "workspaces",
      "id": "ws-ThP7mQur8QcvnU"
    }
  ]
}
EOF
) )


applyOutput=$( curl -X POST 'https://app.terraform.io/api/v2/varsets/varset-hoBQTQ5TA98AzCti/relationships/workspaces' \
--header "Authorization: Bearer $tfpat" \
--header "Content-Type: application/vnd.api+json" \
--data-raw '{"data": [{"type": "workspaces", "id": "ws-UWKhX8ShFrm1SypJ"}]}' )


output=$( curl -X PATCH 'https://app.terraform.io/api/v2/organizations/joe-demo/workspaces/exp-lz-repo-02' \
        --header "Authorization: Bearer $tfpat" \
        --header "Content-Type: application/vnd.api+json" \
        --data-raw '{"data":{"attributes":{"vcs-repo":{"identifier":"jf781/exp-lz-repo-02","oauth-token-id":"ot-JEuwU5L9F4CvMdVe","branch":"main"}}}}' )



curl \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $pat"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/jf781/exp-lz-repo-01/import