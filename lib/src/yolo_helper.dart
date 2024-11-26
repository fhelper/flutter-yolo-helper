import 'package:yolo_helper/src/detected_object.dart';
import 'package:yolo_helper/src/nms.dart';

abstract class YoloHelper {
  static List<DetectedObject> parse(
    List<List<double>> unfilteredBboxes,
    int imageWidth,
    int imageHeight, {
    double confidenceThreshold = 0.7,
    double iouThreshold = 0.1,
    bool agnostic = false,
  }) {
    final (classes, bboxes, scores) = nms(
      unfilteredBboxes,
      confidenceThreshold: confidenceThreshold,
      iouThreshold: iouThreshold,
      agnostic: agnostic,
    );

    List<DetectedObject> detectedObjects = [];
    for (var i = 0; i < classes.length; i++) {
      final bbox = bboxes[i];
      detectedObjects.add(
        DetectedObject(
          x: bbox[0] *= imageWidth,
          y: bbox[1] *= imageHeight,
          width: bbox[2] *= imageWidth,
          height: bbox[3] *= imageHeight,
          labelIndex: classes[i],
          score: scores[i],
        ),
      );
    }

    return detectedObjects;
  }
}
