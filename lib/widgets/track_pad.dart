import 'package:flutter/material.dart';

class TrackPad extends StatefulWidget {
  const TrackPad({super.key});

  @override
  State<TrackPad> createState() => _TrackPadState();
}

class _TrackPadState extends State<TrackPad> {
  Offset _position = Offset.zero;
  double _scale = 1.0;

  Offset? _initialFocalPoint;
  Offset? _initialPosition;
  double _initialScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleStart: (details) {
        _initialFocalPoint = details.focalPoint;
        _initialPosition = _position;
        _initialScale = _scale;
      },
      onScaleUpdate: (details) {
        setState(() {
          // Update scale
          _scale = _initialScale * details.scale;

          // Update position (drag)
          if (details.pointerCount == 1 || details.pointerCount == 2) {
            final delta = details.focalPoint - (_initialFocalPoint ?? Offset.zero);
            _position = (_initialPosition ?? Offset.zero) + delta;
          }
        });

        debugPrint('Position: $_position, Scale: $_scale');
      },
      child: Container(
        color: Colors.transparent,
        width: double.infinity,
        height: double.infinity,
        child: CustomPaint(
          painter: _TrackpadPainter(_position, _scale),
        ),
      ),
    );
  }
}

class _TrackpadPainter extends CustomPainter {
  final Offset position;
  final double scale;

  _TrackpadPainter(this.position, this.scale);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blueAccent
      ..style = PaintingStyle.fill;

    canvas.drawCircle(position, 10 * scale, paint);
  }

  @override
  bool shouldRepaint(covariant _TrackpadPainter oldDelegate) {
    return oldDelegate.position != position || oldDelegate.scale != scale;
  }
}
