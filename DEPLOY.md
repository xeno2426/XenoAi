# XenoAI v8 — Deployment Guide

## 🏠 LOCAL (Termux) — Run Right Now

```bash
# Copy file from Downloads
cp /sdcard/Download/xenoai_v8.py ~/xenoai_v8.py

# Install dependencies
pip install flask requests PyPDF2

# Run (replace with your actual key)
GROQ_API_KEY=gsk_xxxxxxxxxxxx python3 ~/xenoai_v8.py
```

Open: http://192.0.0.4:5000

---

## 🚀 RAILWAY — Free Cloud Hosting (Recommended)

Railway gives you:
- Always-on (no sleeping)
- No domain whitelist (Groq works)
- Free $5/month credit
- Persistent files (chats saved between restarts)
- Public HTTPS URL

### Step 1 — Setup files
Put these 4 files in one folder:
```
xenoai_v8.py
requirements.txt
railway.toml
Procfile
```

### Step 2 — Deploy via GitHub
1. Create GitHub account → New repo → upload those 4 files
2. Go to railway.app → Login with GitHub
3. Click "New Project" → "Deploy from GitHub repo"
4. Select your repo → Deploy

### Step 3 — Add GROQ_API_KEY
1. In Railway dashboard → your project → Variables tab
2. Add: GROQ_API_KEY = gsk_your_key_here
3. Railway auto-redeploys

### Step 4 — Access
Railway gives you a URL like:
https://xenoai-production.up.railway.app

That's your permanent XenoAI URL. Share it with anyone.

---

## 📁 Adding Skills + System Prompts on Railway

Since Railway has persistent storage, you can upload your
skills-main/ and system-prompts/ folders to the repo:

```
your-repo/
├── xenoai_v8.py
├── requirements.txt
├── railway.toml
├── Procfile
├── skills-main/          ← upload the zip contents here
│   └── skills/
│       └── frontend-design/SKILL.md
└── system-prompts/       ← your leaked prompts here
    ├── Cursor.md
    ├── Devin.md
    └── ...
```

XenoAI can then /read them directly:
  /read skills-main/skills/frontend-design/SKILL.md

---

## ⚠️ PythonAnywhere — DON'T USE (Free Tier)

Free tier blocks api.groq.com — Groq calls will silently fail.
Only works if you pay $5/mo for the "Hacker" plan.
Railway free tier is better in every way.

---

## 🆕 v8 Features Summary

| Feature | v7 | v8 |
|---------|----|----|
| Conversation sidebar | ❌ | ✅ |
| Saved chat history | single file | per-chat JSON |
| File uploads | ❌ | ✅ all types |
| Image vision | ❌ | ✅ Llama 4 Scout |
| PDF reading | ❌ | ✅ |
| DOCX reading | ❌ | ✅ |
| Auto chat titles | ❌ | ✅ |
| Delete chats | ❌ | ✅ |
| Railway ready | ❌ | ✅ |

---

## 📂 File Storage Paths

Local (Termux):
- Chats:   ~/xenoai_chats/
- Uploads: ~/xenoai_uploads/

Railway:
- Chats:   /app/xenoai_chats/
- Uploads: /app/xenoai_uploads/
