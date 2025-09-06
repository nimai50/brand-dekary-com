# Brand Identity Guidelines - Dekary

Este proyecto utiliza Bootstrap 5.3.8 y Font Awesome con Sass para crear una guía completa de identidad de marca para Dekary.

## 🌐 Sitio Web
**URL de Producción**: https://brand.dekary.com/

## 📁 Estructura del Proyecto

- `index.html` - Archivo HTML principal con navegación lateral
- `/assets` - Contiene assets compilados
  - `/css` - Archivos CSS compilados
  - `/js` - Archivos JavaScript
  - `/img` - Assets de imagen (logos SVG)
- `/scss` - Archivos fuente Sass
  - `style.scss` - Archivo Sass principal
  - `_custom.scss` - Estilos personalizados
  - `_primitives.scss` - Variables de colores
  - `_typography.scss` - Estilos tipográficos

## 🚀 Despliegue en GitHub Pages

### Pasos para actualizar la página:

1. **Instalar dependencias**:
   ```bash
   npm install
   ```

2. **Compilar Sass para producción**:
   ```bash
   npm run build
   ```

3. **Hacer commit y push**:
   ```bash
   git add .
   git commit -m "Update brand guidelines"
   git push origin main
   ```

4. **GitHub Pages se actualizará automáticamente** en unos minutos.

## 🛠️ Desarrollo

### Compilar Sass para desarrollo:
```bash
npm run sass
```

### Compilar Sass para producción (optimizado):
```bash
npm run build
```

### Modo watch para desarrollo:
```bash
npm run sass-watch
```

## ✨ Características

- Navegación lateral responsive con secciones colapsables
- Guía completa de identidad de marca organizada en secciones lógicas
- Navegación interactiva con resaltado de estado activo
- Diseño responsive usando el sistema de grid de Bootstrap 5.3.8
- Estilos personalizados con variables y mixins de Sass
- Sistema de colores completo con design tokens
- Tipografía personalizada (Quicksand + Playwrite HU)

## 📋 Secciones Incluidas

1. **Identidad de marca** - Misión y visión
2. **Logotipo** - Variaciones y usos correctos/incorrectos
3. **Paleta de colores** - Sistema completo de colores
4. **Tipografía** - Fuentes y jerarquía
5. **Iconografía** - Uso de Font Awesome
6. **Estilo fotográfico** - Directrices para imágenes
7. **Ejemplos prácticos** - Aplicaciones reales
8. **Aplicación** - Uso en diferentes medios
9. **Señalización** - Normas para señalética
10. **Campañas** - Ejemplos de marketing

## 🎨 Personalización

Para personalizar la guía de identidad de marca:
1. Modifica los archivos SCSS en el directorio `/scss`
2. Actualiza el contenido en `index.html`
3. Añade imágenes a `/assets/img` según sea necesario
4. Compila SCSS a CSS usando `npm run build`
5. Haz commit y push para actualizar GitHub Pages

## 📱 Responsive Design

El sitio está optimizado para:
- Desktop (1200px+)
- Tablet (768px - 1199px)
- Mobile (320px - 767px)

## 🔧 Tecnologías

- HTML5
- CSS3 + Sass
- Bootstrap 5.3.8
- Font Awesome 6.4.0
- JavaScript ES6
- Google Fonts