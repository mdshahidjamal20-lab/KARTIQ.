# KARTIQ — Shop Beyond Ordinary

A premium React + Vite storefront starter with a responsive catalogue, 12 categories, search, sorting, cart, product quick-view and a local admin catalogue screen.

## Run locally

1. Install the current Node.js LTS release (npm is included).
2. Extract this ZIP.
3. Open the `KARTIQ` folder in VS Code.
4. Open Terminal → New Terminal and run:

```bash
npm install
npm run dev
```

5. Open the local address printed by Vite (usually `http://localhost:5173`).

## Included

- Responsive storefront and editorial-style homepage
- 12 product categories
- Sample products and external sample images
- Search, category filters and price/rating sorting
- Shopping bag and demo order confirmation (no real payment)
- `/admin` local catalogue dashboard to add/edit/delete products
- Local browser storage for demo catalogue
- Supabase starter schema in `supabase/schema.sql`
- `.env.example` for future Supabase configuration

## Important before a real launch

This is a frontend starter, not a live commerce platform. The admin screen is intentionally a local preview: it has no secure login and product changes stay in the current browser. Checkout only creates a demo order and does not collect payment.

Before accepting real customers or payments, implement:
- Supabase Auth with server-verified admin roles and restrictive Row Level Security
- Database-backed products, stock, customers and orders
- Secure server-side checkout and payment-provider order creation/signature verification
- Server-side price and stock validation; never trust totals sent by the browser
- Shipping, returns, privacy policy, tax/invoice and customer support flows
- Product image uploads using a properly secured storage bucket
- Error handling, testing, backups and production monitoring

Never place a Supabase service-role key or payment secret in frontend code. Only use a public anon key in the browser with correctly configured RLS. Do not use the demo admin route as real access control.

## Deploy

Vercel is a suitable host for this Vite frontend. Import the GitHub repository, use `npm run build` as the build command and `dist` as the output directory. Add environment variables only when the Supabase integration is implemented.

## Customise

Edit `src/data.js` to change the sample products and categories. Replace sample image URLs with product images you own or have permission to use.
