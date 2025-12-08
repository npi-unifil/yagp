#!/bin/bash

# NPI Unifil - Quick Start Script

echo "🚀 NPI Unifil - Começando desenvolvimento..."
echo ""

# Verificar se Node.js está instalado
if ! command -v node &> /dev/null; then
    echo "❌ Node.js não está instalado. Instale em https://nodejs.org"
    exit 1
fi

echo "✅ Node.js encontrado: $(node --version)"
echo ""

# Instalar dependências se necessário
if [ ! -d "node_modules" ]; then
    echo "📦 Instalando dependências..."
    npm install
    echo ""
fi

# Iniciar servidor de desenvolvimento
echo "🔧 Iniciando servidor de desenvolvimento..."
echo "📍 Acesse http://localhost:3000"
echo ""
echo "💡 Dicas:"
echo "   - Salve arquivos para recarregar automaticamente"
echo "   - Pressione Ctrl+C para parar o servidor"
echo ""

npm run dev
