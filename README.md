# Medusa E-commerce Project

A complete e-commerce solution built with Medusa v2 and Next.js storefront.

## Quick Start

1. **Set up your database**: Follow the detailed instructions in [SETUP_INSTRUCTIONS.md](./SETUP_INSTRUCTIONS.md)

2. **Start the backend**:
   ```bash
   ./start-backend.sh
   ```
   Or manually:
   ```bash
   cd backend && npm run dev
   ```

3. **Start the storefront** (in a new terminal):
   ```bash
   ./start-storefront.sh
   ```
   Or manually:
   ```bash
   cd backend-storefront && npm run dev
   ```

## Access Points

- **Storefront**: http://localhost:8000
- **Admin Panel**: http://localhost:9000/app
- **API**: http://localhost:9000

## Important

⚠️ **You must set up a Neon PostgreSQL database first!** See [SETUP_INSTRUCTIONS.md](./SETUP_INSTRUCTIONS.md) for complete setup details.

## Project Structure

- `backend/` - Medusa backend server with admin panel
- `backend-storefront/` - Next.js customer-facing storefront
- `SETUP_INSTRUCTIONS.md` - Complete setup guide

## Default Admin Credentials

After creating an admin user:
- Email: admin@medusa-test.com
- Password: supersecret