data "aws_iam_policy_document" "empty" {
}

data "aws_iam_policy_document" "zero" {
  count         = 1
  source_json   = data.aws_iam_policy_document.empty.json
  override_json = length(var.source_documents) > 0 ? var.source_documents[0] : jsonencode({})
}

data "aws_iam_policy_document" "one" {
  count         = 1
  source_json   = data.aws_iam_policy_document.zero[0].json
  override_json = length(var.source_documents) > 1 ? var.source_documents[1] : jsonencode({})
}

data "aws_iam_policy_document" "two" {
  count         = 1
  source_json   = data.aws_iam_policy_document.one[0].json
  override_json = length(var.source_documents) > 2 ? var.source_documents[2] : jsonencode({})
}

data "aws_iam_policy_document" "three" {
  count         = 1
  source_json   = data.aws_iam_policy_document.two[0].json
  override_json = length(var.source_documents) > 3 ? var.source_documents[3] : jsonencode({})
}

data "aws_iam_policy_document" "four" {
  count         = 1
  source_json   = data.aws_iam_policy_document.three[0].json
  override_json = length(var.source_documents) > 4 ? var.source_documents[4] : jsonencode({})
}

data "aws_iam_policy_document" "five" {
  count         = 1
  source_json   = data.aws_iam_policy_document.four[0].json
  override_json = length(var.source_documents) > 5 ? var.source_documents[5] : jsonencode({})
}

data "aws_iam_policy_document" "six" {
  count         = 1
  source_json   = data.aws_iam_policy_document.five[0].json
  override_json = length(var.source_documents) > 6 ? var.source_documents[6] : jsonencode({})
}

data "aws_iam_policy_document" "seven" {
  count         = 1
  source_json   = data.aws_iam_policy_document.six[0].json
  override_json = length(var.source_documents) > 7 ? var.source_documents[7] : jsonencode({})
}

data "aws_iam_policy_document" "eight" {
  count         = 1
  source_json   = data.aws_iam_policy_document.seven[0].json
  override_json = length(var.source_documents) > 8 ? var.source_documents[8] : jsonencode({})
}

data "aws_iam_policy_document" "nine" {
  count         = 1
  source_json   = data.aws_iam_policy_document.eight[0].json
  override_json = length(var.source_documents) > 9 ? var.source_documents[9] : jsonencode({})
}

data "aws_iam_policy_document" "default" {
  source_json = data.aws_iam_policy_document.nine[0].json
}

