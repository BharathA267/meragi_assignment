import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../gen/assets.gen.dart';
import '../colors.dart';
import '../strings.dart';
import '../styles.dart';

const double toolbarHeight = 250;

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: ClipPath(
        clipper: ConvexClipper(),
        child: Container(
          height: toolbarHeight,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: Colours.primaryGradient,
          ),
          child: Center(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.icons.logo.path),
                const SizedBox(width: 2),
                const Text(logo, style: AppTextStyles.logoTextStyle)
              ],
            ),
          ),
        ),
      ),
      toolbarHeight: toolbarHeight,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(toolbarHeight);
}

class ConvexClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height - 25);

    var firstControlPoint = Offset(size.width / 2, size.height - 80);
    var firstEndPoint = Offset(size.width, size.height - 25);

    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
