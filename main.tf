data "aws_iam_policy_document" "empty" {
}

data "aws_iam_policy_document" "zero" {
  count         = length(var.source_documents) > 0 ? 1 : 0
  source_json   = data.aws_iam_policy_document.empty.json
  override_json = var.source_documents[0]
}

data "aws_iam_policy_document" "one" {
  count         = length(var.source_documents) > 1 ? 1 : 0
  source_json   = data.aws_iam_policy_document.zero.*.json
  override_json = var.source_documents[1]
}

data "aws_iam_policy_document" "two" {
  count         = length(var.source_documents) > 2 ? 1 : 0
  source_json   = data.aws_iam_policy_document.one.*.json
  override_json = var.source_documents[2]
}

data "aws_iam_policy_document" "three" {
  count         = length(var.source_documents) > 3 ? 1 : 0
  source_json   = data.aws_iam_policy_document.two.*.json
  override_json = var.source_documents[3]
}

data "aws_iam_policy_document" "four" {
  count         = length(var.source_documents) > 4 ? 1 : 0
  source_json   = data.aws_iam_policy_document.three.*.json
  override_json = var.source_documents[4]
}

data "aws_iam_policy_document" "five" {
  count         = length(var.source_documents) > 5 ? 1 : 0
  source_json   = data.aws_iam_policy_document.four.*.json
  override_json = var.source_documents[5]
}

data "aws_iam_policy_document" "six" {
  count         = length(var.source_documents) > 6 ? 1 : 0
  source_json   = data.aws_iam_policy_document.five.*.json
  override_json = var.source_documents[6]
}

data "aws_iam_policy_document" "seven" {
  count         = length(var.source_documents) > 7 ? 1 : 0
  source_json   = data.aws_iam_policy_document.six.*.json
  override_json = var.source_documents[7]
}

data "aws_iam_policy_document" "eight" {
  count         = length(var.source_documents) > 8 ? 1 : 0
  source_json   = data.aws_iam_policy_document.seven.*.json
  override_json = var.source_documents[8]
}

data "aws_iam_policy_document" "nine" {
  count         = length(var.source_documents) > 9 ? 1 : 0
  source_json   = data.aws_iam_policy_document.eight.*.json
  override_json = var.source_documents[9]
}

data "aws_iam_policy_document" "default" {
  source_json = join("", data.aws_iam_policy_document.nine.*.json)
}

