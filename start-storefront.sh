#!/bin/bash

echo "🛍️  Starting Medusa Next.js Storefront..."
echo "📍 Make sure the backend is running first (http://localhost:9000)"
echo ""

cd backend-storefront

echo "🔍 Checking backend connection..."
echo "🌐 Storefront will start on: http://localhost:8000"
echo ""

echo "Starting development server..."
npm run dev