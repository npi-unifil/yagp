# Guia de Customização - NPI Unifil

## Exemplos Práticos

### 1. Alterar Informações do Cabeçalho

**Arquivo:** `src/components/Header.astro`

Altere a navegação e título:
```astro
<h1 class="text-2xl font-bold">Seu Novo Título</h1>

<ul class="flex gap-6 hidden md:flex">
  <li><a href="/">Home</a></li>
  <li><a href="/nova-pagina">Nova Página</a></li>
  <!-- adicione seus links aqui -->
</ul>
```

### 2. Adicionar Nova Seção

Crie um novo componente em `src/components/NovaSecao.astro`:

```astro
---
---

<section class="py-16 bg-gray-100">
  <div class="container mx-auto px-6">
    <h2 class="text-4xl font-bold mb-8">Título da Seção</h2>
    <!-- Seu conteúdo aqui -->
  </div>
</section>
```

Importe em `src/pages/index.astro`:
```astro
import NovaSecao from '../components/NovaSecao.astro';

// E use na página:
<NovaSecao />
```

### 3. Criar Nova Página

Crie `src/pages/contato.astro`:

```astro
---
import Header from '../components/Header.astro';
import Footer from '../components/Footer.astro';
import Layout from '../layouts/Layout.astro';
---

<Layout title="Contato - NPI Unifil">
  <Header title="NPI Unifil" />

  <section class="py-16">
    <div class="container mx-auto px-6">
      <h1 class="text-4xl font-bold mb-8">Contato</h1>
      <!-- Seu formulário ou conteúdo aqui -->
    </div>
  </section>

  <Footer />
</Layout>
```

Acesse em `/contato`

### 4. Modificar Paleta de Cores

**Arquivo:** `tailwind.config.mjs`

```javascript
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        npi: {
          50: '#f0f7ff',
          500: '#0066cc',
          700: '#003d99',
        },
      },
    },
  },
  plugins: [],
};
```

Depois use nas classes:
```html
<button class="bg-npi-500 hover:bg-npi-700">Botão</button>
```

### 5. Adicionar Imagens

1. Coloque suas imagens em `src/assets/`
2. Importe em seu componente:

```astro
---
import imagemPrincipal from '../assets/imagem.jpg';
import { Image } from 'astro:assets';
---

<Image src={imagemPrincipal} alt="Descrição" />
```

### 6. Customizar Fonte

**Arquivo:** `src/layouts/Layout.astro`

Altere as imports:
```astro
---
import '@fontsource/roboto/400.css';
import '@fontsource/roboto/700.css';
---
```

E no Tailwind:
```javascript
theme: {
  extend: {
    fontFamily: {
      sans: ['Roboto', 'sans-serif'],
    },
  },
}
```

### 7. Adicionar Animações

No Tailwind, use utilities prontas:

```html
<!-- Fade in -->
<div class="animate-fade-in">Conteúdo</div>

<!-- Ou crie customizadas -->
```

**Em `tailwind.config.mjs`:**
```javascript
theme: {
  extend: {
    animation: {
      'fade-in': 'fadeIn 0.5s ease-in',
    },
    keyframes: {
      fadeIn: {
        '0%': { opacity: '0' },
        '100%': { opacity: '1' },
      },
    },
  },
}
```

## Dicas Úteis

- 📚 Use a documentação do [Tailwind](https://tailwindcss.com/docs) para encontrar classes
- 🎨 Teste cores em [Tailwind Color Palette](https://tailwindcss.com/docs/customizing-colors)
- 📱 Use `md:` para responsive design mobile-first
- ⚡ O Astro recarrega automaticamente ao salvar arquivos
- 🔍 Inspecione com F12 para verificar estilos

## Estrutura Recomendada

```
src/
├── components/
│   ├── layout/
│   │   ├── Header.astro
│   │   ├── Footer.astro
│   │   └── Navbar.astro
│   ├── sections/
│   │   ├── About.astro
│   │   ├── Projects.astro
│   │   └── CTA.astro
│   └── common/
│       ├── Button.astro
│       └── Card.astro
├── pages/
│   ├── index.astro
│   ├── contato.astro
│   └── sobre.astro
└── layouts/
    └── Layout.astro
```

---

**Qualquer dúvida, consulte a [documentação do Astro](https://docs.astro.build/)**
