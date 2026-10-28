# FocusTrack Móvil — Configuración del entorno

Práctica Guiada 13 · IF0009 Desarrollo de Software IV · UCR Recinto de Paraíso

## Diagnóstico del toolchain (`flutter doctor -v`)

| Componente | Estado |
|---|---|
| Flutter 3.47.7 (stable) · Dart 3.13.5 | ✓ |
| Android toolchain (SDK 37.0.0, build-tools 37.0.0) | ✓ |
| Licencias de Android | ✓ Todas aceptadas |
| Java (JBR de Android Studio) | ✓ |
| Visual Studio (C++ para apps de escritorio Windows) | ! No aplica: la práctica es solo Android/iOS |

## Dispositivo de ejecución (AVD)

- Emulador: **Pixel 9 Pro**, imagen `android-37.2` x86_64 (Google APIs Play Store)
- Aceleración gráfica: `hw.gpu.enabled=yes`, `hw.gpu.mode=host` (Hardware GLES)
- Aceleración de CPU: hipervisor de Windows (el AVD arranca y completa el boot sin errores)
- RAM del AVD: 2048 MB · 4 núcleos

## Cómo ejecutar

1. Encender el emulador desde el selector de dispositivos de VS Code (esquina inferior derecha).
2. Abrir `lib/main.dart` y presionar **F5** (o ejecutar `flutter run`).
3. Para Hot Reload, guardar con **Ctrl + S**; para Hot Restart, **Ctrl + Shift + F5**.
