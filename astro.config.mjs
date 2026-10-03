// @ts-check
import { defineConfig } from 'astro/config';
import tailwindcss from '@tailwindcss/vite';
import icon from 'astro-icon';

// https://astro.build/config
export default defineConfig({
  integrations: [
    icon({
      include: {
        "simple-icons": [
          "terraform",
          "docker",
          "go",
          "amazonaws",
          "digitalocean",
          "python",
          "githubactions",
          "gnubash",
          "github",
          "linkedin",
        ],
        lucide: [
          "mail",
          "cloud",
          "container",
          "terminal",
          "layers",
          "network",
        ],
      },
    }),
  ],
  vite: {
    plugins: [tailwindcss()],
  },
});

