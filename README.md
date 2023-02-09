# Flutter Hacks

Flutter hack for Flutter developers!!!.

## Device Orientation Restriction

In order to restrict the device orientation, you can use the following code:

```dart
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  runApp(const MyApp());
}
```