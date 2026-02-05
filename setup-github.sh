#!/bin/bash

# GitHub仓库设置脚本
# 使用方法：./setup-github.sh <repository-name> <github-username>

REPO_NAME=${1:-"openclaw-workflow-architecture"}
GITHUB_USER=${2:-"Akikoso"}

echo "准备将项目推送到 GitHub..."
echo "仓库名称: $REPO_NAME"
echo "GitHub 用户名: $GITHUB_USER"
echo ""
echo "请先在 GitHub 上创建仓库："
echo "1. 访问 https://github.com/new"
echo "2. 仓库名称填写: $REPO_NAME"
echo "3. 选择 Public (开源)"
echo "4. 不要初始化 README、.gitignore 或 license"
echo "5. 点击 'Create repository'"
echo ""
read -p "按 Enter 键继续（确保已创建仓库）..."

# 添加远程仓库
git remote add origin "https://github.com/${GITHUB_USER}/${REPO_NAME}.git"

# 推送代码
echo "正在推送代码到 GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ 完成！项目已推送到 GitHub"
echo "访问: https://github.com/${GITHUB_USER}/${REPO_NAME}"
