import 'package:radar_soft_assessment/utils/barrels.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class AppbarImage extends StatelessWidget {
  AppbarImage({
    required this.height,
    required this.width,
    required this.svgPath,
    this.margin,
    this.onTap,
  });

  double height;

  double width;

  String svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: SizedBox(
          height: height,
          width: width,
          child: SvgPicture.asset(
            svgPath,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
