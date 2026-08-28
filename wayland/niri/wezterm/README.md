# Configuración de WezTerm

Configuración personalizada para el emulador de terminal [WezTerm](https://wezfurlong.org/wezterm/), optimizada para Linux con soporte nativo de Wayland y tema de color **Eldritch**.

---

## 🎨 Características principales

- **Tema de color**: *Eldritch* personalizado (`themes/Eldritch.lua`) con tonos oscuros y acentos en verde neón (`#37f499`), magenta y cian.
- **Tipografía**: `JetBrainsMono Nerd Font` (11pt, *DemiBold*, *Italic*).
- **Transparencia**: Fondo de ventana con opacidad al 90% (`0.9`).
- **Cursor**: Bloque parpadeante (`BlinkingBlock`) en color verde.
- **Barra de pestañas**:
  - Ubicada en la parte inferior.
  - Se oculta automáticamente si solo hay una pestaña activa.
  - Formato dinámico mostrando el título del proceso/panel actual.
- **Backend**: Wayland forzado para máximo rendimiento en entornos compatibles.
- **Launcher**: Configurado para `Debian Trixie` (`/bin/zsh`).

---

## ⌨️ Atajos de teclado

| Atajo | Acción |
|---|---|
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>H</kbd> | Dividir panel verticalmente (*SplitVertical*) |
| <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>V</kbd> | Dividir panel horizontalmente (*SplitHorizontal*) |
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>←</kbd> | Ir a la pestaña anterior |
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>→</kbd> | Ir a la pestaña siguiente |

---

## 📁 Estructura del proyecto

```text
~/.config/wezterm/
├── wezterm.lua        # Archivo principal de configuración
├── themes/
│   └── Eldritch.lua   # Paleta de colores del tema Eldritch
├── AGENTS.md          # Reglas e información del entorno
└── README.md          # Esta documentación
```

---

## 🚀 Requisitos e Instalación

### Requisitos

- [WezTerm](https://wezfurlong.org/wezterm/installation.html)
- [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)

### Instalación

1. Clona o copia estos archivos dentro del directorio de configuración de WezTerm:
   ```bash
   mkdir -p ~/.config/wezterm
   # Copiar wezterm.lua y la carpeta themes/ dentro de ~/.config/wezterm/
   ```
2. Inicia o recarga WezTerm (`Ctrl+Shift+R` por defecto en WezTerm para recargar la configuración).
