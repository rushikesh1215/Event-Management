This is a [Next.js](https://nextjs.org) project bootstrapped with [`create-next-app`](https://nextjs.org/docs/app/api-reference/cli/create-next-app).

# 🌱 Environment Variables Setup

This project uses **Neon Database + Neon Auth + Prisma + Next.js (App Router)**.

You must configure the following environment variables before running the app.

---

## 📄 Create `.env` file

In the root of your project:

```bash
    
touch .env
```

# DATABASE (Neon PostgreSQL)
DATABASE_URL="postgresql://username:password@host/database?sslmode=require"


# NEON AUTH CONFIG

NEON_AUTH_BASE_URL="http://localhost:3000/api/auth"
NEON_AUTH_COOKIE_SECRET="your-secret-at-least-32-characters-long"


# APP CONFIG

NEXT_PUBLIC_APP_URL="http://localhost:3000"


## 🧬 Prisma Commands (After Schema Changes)

Whenever you modify `schema.prisma`, run the following commands:

---

### 1. Generate Prisma Client

```bash
npx prisma generate
npx prisma migrate dev --name your_migration_name

```
# 🎉 Event Planner

A modern event planning application where you can create events, share invite links with friends, and track their responses in real-time.

---

## 🚀 Features

- Create and manage events
- Generate unique invite links
- Share event links with friends
- Friends can respond:
  - ✅ Going
  - ❓ Maybe
  - ❌ Not Going
- View attendee responses in your dashboard
- Plan your event based on responses

---

## 🧑‍🤝‍🧑 How It Works

1. Create an event  
2. Generate and share the invite link  
3. Friends open the link and respond  
4. View all responses in your dashboard  
5. Plan your event accordingly  

---

## 🛠 Tech Stack

- Next.js (App Router)
- Prisma
- Neon Database
- Neon Auth
- Tailwind CSS
- shadcn/ui

---

## 📦 Installation

```bash
git clone <your-repo-url>
cd event-planner
npm install
```
## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.


