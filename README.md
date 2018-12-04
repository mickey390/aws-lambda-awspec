# 概要

- AWS lambda でawspecを動かすサンプル

# 手順

## 準備

```
cd functions/dev/
bundle install --path vendor/bundler
```

## Lambda用のIAMの作成

```
# create symlink
apex infra get
# check
apex infra plan -target=module.iam
# apply
apex infra apply -target=module.iam
```

## Lambda Functionをデプロイ

```
apex deploy dev
```

# メモ

## エラー

```
WARNING: Unable to find ~/.rspec because the HOME environment variable is not set.
Called from /var/task/vendor/bundle/ruby/2.5.0/gems/rspec-core-3.8.0/exe/rspec:4:in `<main>'.
```
