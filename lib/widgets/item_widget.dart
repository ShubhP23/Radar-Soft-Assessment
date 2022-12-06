import 'package:flutter_svg/flutter_svg.dart';
import 'package:radar_soft_assessment/theme/app_decoration.dart';
import 'package:radar_soft_assessment/utils/barrels.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: (152.00),
            margin: EdgeInsets.only(top: 2.h),
            decoration: AppDecoration.fillGray300.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: const EdgeInsets.only(
                      left: 114,
                      top: 10,
                      right: 10,
                      bottom: 142,
                    ),
                    color: ColorConstant.whiteA700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.circleBorder14,
                    ),
                    child: Container(
                      height: (28.00),
                      width: (28.00),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder14,
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: SizedBox(
                                height: (15.00),
                                width: (15.00),
                                child:
                                    SvgPicture.asset(Assets.images.imgLocation),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 30.w,
          margin: EdgeInsets.only(
            top: 2.h,
            right: 1.w,
            left: 5.w,
          ),
          child: const Text(
            "Nike jordan 1 retro yellow",
            maxLines: null,
            textAlign: TextAlign.left,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 5.w,
            top: 9,
            right: 10,
          ),
          child: const Text(
            "\$ 608",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
