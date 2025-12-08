# NPI Unifil - Website Estático

Um site estático moderno para o Núcleo de Práticas Interdisciplinares da Universidade Filadélfia, construído com **Astro** e **Tailwind CSS**.

## �� Features

- ✨ Website estático e rápido
- 🎨 Design moderno com Tailwind CSS
- 📱 Totalmente responsivo
- ♿ Acessível e SEO-friendly
- 📝 Fácil de customizar com Astro

## 📁 Estrutura do Projeto

```text
yagp/
├── src/
│   ├── components/          # Componentes reutilizáveis
│   │   ├── Header.astro     # Cabeçalho com navegação
│   │   ├── Footer.astro     # Rodapé
│   │   ├── About.astro      # Seção "Sobre o NPI"
│   │   ├── Projects.astro   # Seção de projetos
│   │   └── CTA.astro        # Call-to-action
│   ├── layouts/
│   │   └── Layout.astro     # Layout principal
│   ├── pages/
│   │   └── index.astro      # Página inicial
│   └── assets/              # Imagens e recursos
├── public/                  # Arquivos estáticos
├── astro.config.mjs         # Configuração do Astro
├── tailwind.config.mjs      # Configuração do Tailwind
└── package.json
```

## 🛠️ Comandos Disponíveis

### Desenvolvimento
```bash
npm run dev
```
Inicia o servidor de desenvolvimento em `http://localhost:3000`

### Build
```bash
npm run build
```
Gera a versão otimizada para produção em `dist/`

### Preview
```bash
npm run preview
```
Visualiza o site produzido localmente

## 🎨 Customização

### Alterar Cores
Edite `tailwind.config.mjs` na seção `theme.extend`:

```javascript
theme: {
  extend: {
    colors: {
      primary: '#your-color',
    }
  }
}
```

### Adicionar Novas Páginas
1. Crie um novo arquivo `.astro` em `src/pages/`
2. O arquivo será automaticamente convertido em uma rota

Exemplo: `src/pages/sobre.astro` → `/sobre`

### Modificar Componentes
Todos os componentes estão em `src/components/` e podem ser importados em qualquer página:

```astro
---
import Header from '../components/Header.astro';
---

<Header title="Título Customizado" />
```

## 📦 Tecnologias

- **[Astro](https://astro.build/)** - Framework para sites estáticos
- **[Tailwind CSS](https://tailwindcss.com/)** - Framework CSS utilitário
- **[Inter Font](https://rsms.me/inter/)** - Tipografia moderna

## 🚀 Deploy

### Opções populares:
- **Vercel** - Integração automática com GitHub
- **Netlify** - Deploy contínuo
- **GitHub Pages** - Gratuito para repositórios públicos
- **AWS S3 + CloudFront** - Escalável e confiável

### Deploy simples no Vercel:
```bash
npm install -g vercel
vercel
```

## 📖 Documentação Oficial

- [Astro Docs](https://docs.astro.build/)
- [Tailwind CSS Docs](https://tailwindcss.com/docs)
- [Integração Astro + Tailwind](https://docs.astro.build/en/guides/integrations-guide/tailwind/)

## 👥 Contribuição

Para adicionar novos componentes ou melhorias:

1. Crie um novo branch
2. Faça suas alterações
3. Commit com mensagens claras
4. Abra um Pull Request

## 📝 License

Este projeto está disponível sob a licença MIT.

---

**Desenvolvido para o NPI Unifil** 🎓
