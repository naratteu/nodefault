cat <<EOF | docker compose -f - up --build
services:
  vite-app:
    volumes:
      - ./App.tsx:/app/src/App.tsx
    ports:
      - 5173:5173
    build: 
      dockerfile_inline: |
        FROM node
        RUN npm create vite@latest app -- --no-interactive -t react-swc-ts
        WORKDIR /app
        RUN npm install
        RUN cat <<EOF > vite.config.ts 
        import { defineConfig } from 'vite'
        import react from '@vitejs/plugin-react-swc'    
        export default defineConfig({
          plugins: [react()],
          server: { watch: { usePolling: true } }
        })
        EOF
        CMD ["npm","run","dev", "--", "--host", "0.0.0.0"]
EOF
