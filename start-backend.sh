#!/bin/bash

echo "🚀 Starting Medusa Backend Server..."
echo "📍 Make sure you've updated the DATABASE_URL in backend/.env with your Neon connection string"
echo ""

cd backend

echo "🔍 Checking database connection..."
echo "📊 Backend will start on: http://localhost:9000"
echo "🎛️  Admin panel will be available at: http://localhost:9000/app"
echo ""

echo "Starting development server..."
npm run dev