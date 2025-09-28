# Medusa E-commerce Setup Guide

This guide will help you complete the setup of your Medusa e-commerce project with Next.js storefront.

## Project Structure

```
medusa-ecommerce/
├── backend/                 # Medusa backend server
│   ├── .env                # Backend environment variables
│   ├── medusa-config.ts    # Medusa configuration
│   └── src/                # Backend source code
└── backend-storefront/     # Next.js storefront
    ├── .env.local          # Storefront environment variables
    └── src/                # Storefront source code
```

## Step 1: Set Up Neon PostgreSQL Database

1. **Create a Neon Account:**
   - Visit https://console.neon.tech/signup
   - Sign up for a free account using email, GitHub, or Google

2. **Create a New Project:**
   - After signing up, you'll be directed to create your first project
   - Project name: `medusa-ecommerce` (or any name you prefer)
   - PostgreSQL version: Latest (recommended)
   - Database name: `neondb` (default)
   - Region: Choose closest to your location

3. **Get Your Connection String:**
   - In your project dashboard, click the "Connect" button
   - Select "Direct connection"
   - Choose your database from the dropdown
   - Copy the connection string that looks like:
     ```
     postgresql://neondb_owner:YOUR_PASSWORD@ep-your-endpoint.region.aws.neon.tech/neondb?sslmode=require
     ```

## Step 2: Configure Backend Environment

1. **Update Database Connection:**
   ```bash
   cd medusa-ecommerce/backend
   ```

2. **Edit the `.env` file:**
   Replace the placeholder DATABASE_URL with your actual Neon connection string:
   ```env
   DATABASE_URL=postgresql://neondb_owner:YOUR_ACTUAL_PASSWORD@ep-your-actual-endpoint.us-east-2.aws.neon.tech/neondb?sslmode=require
   ```

3. **Current Backend Configuration:**
   - Admin Panel: http://localhost:9000/app
   - API: http://localhost:9000
   - Admin CORS: Configured for localhost:5173, localhost:9000
   - Store CORS: Configured for localhost:8000

## Step 3: Configure Storefront Environment

The storefront is already configured with these settings in `backend-storefront/.env.local`:

```env
MEDUSA_BACKEND_URL=http://localhost:9000
NEXT_PUBLIC_MEDUSA_PUBLISHABLE_KEY=pk_test
NEXT_PUBLIC_BASE_URL=http://localhost:8000
NEXT_PUBLIC_DEFAULT_REGION=us
REVALIDATE_SECRET=supersecret
```

## Step 4: Start the Application

### Terminal 1 - Start Backend Server:
```bash
cd medusa-ecommerce/backend
npm run dev
```

The backend will start on http://localhost:9000
- Admin panel: http://localhost:9000/app
- API documentation: http://localhost:9000/docs

### Terminal 2 - Start Storefront:
```bash
cd medusa-ecommerce/backend-storefront
npm run dev
```

The storefront will start on http://localhost:8000

## Step 5: Create Admin User

Once the backend is running successfully, create an admin user:

```bash
cd medusa-ecommerce/backend
npx medusa user -e admin@medusa-test.com -p supersecret
```

## Step 6: Seed Sample Data (Optional)

To add sample products and data:

```bash
cd medusa-ecommerce/backend
npm run seed
```

## URLs and Access Points

### Backend:
- **Admin Panel**: http://localhost:9000/app
- **API**: http://localhost:9000
- **API Documentation**: http://localhost:9000/docs

### Storefront:
- **Customer Storefront**: http://localhost:8000

### Default Credentials:
- **Admin Email**: admin@medusa-test.com
- **Admin Password**: supersecret

## Important Notes

1. **Database Connection**: You MUST replace the placeholder DATABASE_URL with your actual Neon connection string for the backend to work.

2. **Redis**: Redis is automatically handled with a fake instance for development.

3. **CORS**: The CORS settings are pre-configured for local development.

4. **SSL**: Neon requires SSL connections, which is already configured in the connection string.

## Troubleshooting

### Backend won't start:
- Verify your DATABASE_URL is correct
- Check that your Neon database is active
- Ensure you have the correct password

### Storefront won't connect:
- Make sure the backend is running first
- Verify MEDUSA_BACKEND_URL points to http://localhost:9000

### Database connection fails:
- Double-check your Neon connection string
- Ensure your Neon project is not suspended (free tier limitation)

## Next Steps

Once everything is running:

1. **Access Admin Panel**: http://localhost:9000/app
2. **Create Products**: Use the admin panel to add products
3. **Configure Store**: Set up regions, currencies, and shipping
4. **Test Storefront**: Visit http://localhost:8000 to see your store
5. **Customize**: Modify the storefront theme and add custom features

## Development Workflow

1. Backend changes: Modify files in `backend/src/`
2. Storefront changes: Modify files in `backend-storefront/src/`
3. Both servers support hot reloading during development

Your Medusa e-commerce store is now ready for development!