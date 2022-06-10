resource "aws_key_pair" "orcamento_express_dev" {
  key_name = "orcamento_express_dev"
  public_key = file("${path.root}/key/aws-jn-dev.pub")
}