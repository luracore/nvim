## Instalação

### 🐧 Linux e macOS
No Linux e macOS, a pasta padrão de configurações do Neovim fica em `~/.config/nvim`.

```bash
# Navegue até a pasta de configurações (crie se não existir)
mkdir -p ~/.config

# Clone o seu repositório diretamente na pasta nvim
git clone https://github.com ~/.config/nvim
```

### 🪟 Windows
No Windows, a pasta equivalente fica dentro do diretório `AppData`. Você pode instalar usando o **PowerShell**:

```powershell
# Certifique-se de que a pasta AppData\Local existe
mkdir -Force $HOME\AppData\Local

# Clone o seu repositório na pasta nvim dentro de AppData
git clone https://github.com $HOME\AppData\Local\nvim
```

*Nota: No Windows prompt (`cmd`), o caminho absoluto equivale a `C:\Users\SEU_USUARIO\AppData\Local\nvim`.*

---

## Keymaps

### Janelas (Splits) e Abas (Tabs)

| Atalho | Modo | Ação |
| :--- | :---: | :--- |
| `<leader>s` | Normal | Cria um novo split vertical |
| `Ctrl + h` / `j` / `k` / `l` | Normal | Move o cursor entre os splits (Esquerda, Baixo, Cima, Direita) |
| `<leader><Tab>` | Normal | Cria uma nova aba |
| `Tab` | Normal | Vai para a próxima aba |
| `Shift + Tab` | Normal | Volta para a aba anterior |

### Terminal e Formatação

| Atalho | Modo | Ação |
| :--- | :---: | :--- |
| `<leader>t` | Normal | Abre o terminal nativo |
| `Esc` | Terminal | Sai do modo de inserção do terminal (volta para o modo Normal) |
| `<leader>=` | Normal | Formata o arquivo atual (usa LSP ou recuo nativo) |

---
