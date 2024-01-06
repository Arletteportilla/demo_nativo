# Feliz Cumpleaños Papá - Flutter App

## Descripción
Esta aplicación de Flutter está especialmente diseñada para celebrar el cumpleaños de un padre. Incluye una serie de imágenes animadas y un título animado para crear una experiencia visualmente atractiva y afectuosa.

## Características
- **Animación de Título**: El título "¡Feliz Cumpleaños Papi!" se anima para llamar la atención mediante una transición de escala.
- **Imágenes Animadas**: Varias imágenes se presentan en la pantalla, cada una con su propia animación suave de escala.
- **Controlador de Animación**: Uso de `AnimationController` para gestionar las animaciones, proporcionando un efecto de rebote atractivo.

## Estructura del Código
- `main.dart`: Punto de entrada de la aplicación, establece el tema y la pantalla principal.
- `MyApp`: Un widget sin estado que define la estructura básica de la aplicación.
- `BirthdayScreen`: Un widget con estado que contiene la lógica para renderizar la pantalla del cumpleaños y manejar las animaciones.
- `buildAnimatedTitle`: Método para construir el título animado.
- `buildAnimatedImage`: Método para construir y animar las imágenes.

## Cómo Ejecutar
1. **Instalación**: Clona o descarga este repositorio.
2. **Ejecución**: Navega al directorio del proyecto en tu terminal y ejecuta `flutter run`. Asegúrate de tener un emulador en funcionamiento o un dispositivo conectado.

## Personalización
- **Título y Texto**: Cambia el texto en `AppBar` y el método `buildAnimatedTitle` para personalizar los mensajes.
- **Imágenes**: Reemplaza las URLs en el método `buildAnimatedImage` con las direcciones de tus propias imágenes.

## Requisitos
- Flutter SDK
- Conexión a internet para cargar las imágenes desde URLs externas.

## Contribuciones
Las contribuciones son bienvenidas. Si tienes ideas para mejorar la aplicación, no dudes en crear un 'pull request' o abrir un 'issue'.

## Licencia
[MIT](https://opensource.org/licenses/MIT)
