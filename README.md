# Brand Identity Guidelines

This project uses Bootstrap 5.2 and Font Awesome with Sass for styling to create a comprehensive brand identity guideline document.

## Folder Structure

- `index.html` - Main HTML file with sidebar navigation
- `/assets` - Contains compiled assets
  - `/css` - Compiled CSS files
  - `/js` - JavaScript files
  - `/img` - Image assets
- `/scss` - Sass source files
  - `style.scss` - Main Sass file
  - `/sections` - Sass partials for different sections

## Features

- Responsive sidebar navigation with collapsible sections
- Comprehensive brand identity guidelines organized in logical sections
- Interactive navigation with active state highlighting
- Mobile-responsive design using Bootstrap 5.2 grid system
- Custom styling with Sass variables and mixins

## Development

To compile Sass to CSS, use a Sass compiler:

```bash
sass scss/style.scss assets/css/style.css
```

Or watch for changes:

```bash
sass --watch scss:assets/css
```

## Sections Included

1. **Identidad visual**
   - Logotipo (variaciones permitidas, tamaños y usos incorrectos)
   - Paleta de colores principal y secundaria
   - Tipografía (primaria y secundaria)
   - Iconografía y elementos gráficos
   - Estilo fotográfico e ilustraciones

2. **Manual de uso y ejemplos prácticos**
   - Aplicación en merchandising
   - Señalización y uniformes (si aplica)
   - Ejemplos de campañas

## Customization

To customize the brand identity guidelines:
1. Modify the SCSS files in the `/scss` directory
2. Update content in `index.html`
3. Add images to `/assets/img` as needed
4. Compile SCSS to CSS using the commands above