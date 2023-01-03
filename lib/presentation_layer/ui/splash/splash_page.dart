import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Page'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: ClipPath(
            clipper: TicketClipper(),
            child: Container(
              height: 200.h,
              width: double.infinity,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20;
    double centerY = size.height / 2;

    Path path = Path();

    // Top left corner
    path.moveTo(0, radius);
    path.arcToPoint(
      Offset(radius, 0),
      radius: Radius.elliptical(radius, radius),
      clockwise: true,
    );

    // Top right corner
    path.lineTo(size.width - radius, 0);
    path.arcToPoint(
      Offset(size.width, radius),
      radius: Radius.elliptical(radius, radius),
      clockwise: true,
    );

    // Bottom right corner
    path.lineTo(size.width, size.height - radius);
    path.arcToPoint(
      Offset(size.width - radius, size.height),
      radius: Radius.elliptical(radius, radius),
      clockwise: true,
    );

    // Bottom left corner
    path.lineTo(radius, size.height);
    path.arcToPoint(
      Offset(0, size.height - radius),
      radius: Radius.elliptical(radius, radius),
      clockwise: true,
    );

    // Center right corner
    path.moveTo(size.width, centerY - radius / 2);
    path.arcToPoint(
      Offset(size.width, centerY + radius),
      radius: Radius.circular(radius/2),
      clockwise: false,
    );

    // Center left corner
    path.moveTo(0, centerY - radius / 2);
    path.arcToPoint(
      Offset(0, centerY + radius),
      radius: Radius.circular(radius),
      clockwise: false,
    );

    path.close();

    return path;
  }

  @override
  bool shouldReclip(TicketClipper oldClipper) => false;
}
