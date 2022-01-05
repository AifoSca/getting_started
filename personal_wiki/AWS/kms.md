# Encrypt and Decrypt data

KMS is used to encrypt and decrypt data

You can create your Key in AWS Console or with terraform
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key

Command used to encrypt data:

`$ aws kms encrypt --key-id {KEY_ID} --plaintext {YOUR_SECRET} --output text --query CiphertextBlob --cli-binary-format raw-in-base64-out`

https://eddwardo.github.io/posts/terraform-secrets-and-passwords/

```
{ data "aws_kms_secrets" "secrets" {
  secret {
        name = "master-password",
        payload = "AQECAHgaPa0J8WadplGCqqVAr4H...."
  }
}
```

`master_password = "${data.aws_kms_secrets.secrets.plaintext["master-password"]}" `



