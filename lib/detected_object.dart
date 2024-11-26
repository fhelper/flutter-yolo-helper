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
