## Rmpc: themes y configuración

En `rmpc`, un theme define la apariencia de la interfaz: colores, contraste y el estilo general de los elementos visuales. Si quieres personalizarlo, lo normal es crear un archivo de tema propio dentro del directorio `themes` y luego indicarlo en el archivo de configuración.

### Rutas que revisa rmpc

Cuando usas un theme, `rmpc` busca el archivo en este orden:

1. `<rmpc config dir>/themes/<theme>.ron`
2. `<rmpc config dir>/themes/<theme>`
3. `<rmpc config dir>/<theme>.ron`
4. `<rmpc config dir>/<theme>`
5. `<theme>`
6. La ruta específica que pases con `--theme`

### Crear un theme base

Puedes generar un theme inicial con:

```bash
rmpc theme > ~/.config/rmpc/themes/<theme_name>.ron
```

Después, activa ese theme editando `~/.config/rmpc/config.ron` y agregando algo como esto:

```ron
theme: Some("<theme_name>")
```

### Aplicar cambios

Una vez guardado el archivo, reinicia `rmpc` para que tome la nueva configuración.

### Ejemplo rápido

```bash
rmpc theme > ~/.config/rmpc/themes/catppuccin.ron
```

```ron
theme: Some("catppuccin")
```

```bash
rmpc
```
