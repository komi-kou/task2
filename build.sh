#!/bin/bash
# Render build script
echo "Starting build process for Render..."

# Prismaのクライアント生成
echo "Generating Prisma client..."
npx prisma generate

# データベースのマイグレーション実行
echo "Running database migrations..."
npx prisma migrate deploy

# Next.jsのビルド
echo "Building Next.js application..."
npm run build