# Flutter Yolo Helper

## Features

Easily parse YOLOv8 detection results into the `DetectedObject` class:

```dart
YoloHelper.parse(
    unfilteredBboxes,
    imageWidth,
    imageHeight,
)
```

```dart
class DetectedObject {
  final double x;
  final double y;
  final double width;
  final double height;
  final int labelIndex;
  final double score;

  const DetectedObject({
    required this.x,
    required this.y,
    required this.width,
    required this.height,
    required this.labelIndex,
    required this.score,
  });
}

```

## Getting started

Add the following lines to your `pubspec.yaml` file:
yaml

```yaml
yolo_helper:
  git:
    url: https://github.com/fhelper/flutter-yolo-helper.git
    ref: main
```
