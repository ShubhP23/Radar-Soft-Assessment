import 'package:dotted_border/dotted_border.dart';
import 'package:radar_soft_assessment/screens/main_screen.dart';
import 'package:radar_soft_assessment/theme/app_decoration.dart';
import 'package:radar_soft_assessment/utils/barrels.dart';
import 'package:radar_soft_assessment/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
                alignment: Alignment.center,
                child: Container(
                    height: 50.h,
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 4.w, right: 2.w),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: EdgeInsets.only(top: 1.h, right: 1.w),
                              child: DottedBorder(
                                  color: ColorConstant.deepOrange40066,
                                  padding: EdgeInsets.all(10.sp),
                                  strokeWidth: 1,
                                  radius: Radius.circular(150.sp),
                                  borderType: BorderType.RRect,
                                  dashPattern: const [8, 8],
                                  child: Container(
                                      decoration: AppDecoration
                                          .outlineDeeporange40066
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder156),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: EdgeInsets.all(44.sp),
                                                color: ColorConstant
                                                    .deepOrange40099,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder125),
                                                child: Container(
                                                    height: 25.h,
                                                    width: 50.w,
                                                    decoration: AppDecoration
                                                        .fillDeeporange40099
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder125),
                                                    child: Stack(children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 10,
                                                            ),
                                                            child: Assets.images
                                                                .imgVector6
                                                                .image(
                                                              height: 2.h,
                                                              width: 2.w,
                                                            ),
                                                          ))
                                                    ])))
                                          ]))))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              height: 40.h,
                              width: 40.w,
                              margin: EdgeInsets.only(
                                  top: 11.h,
                                  left: 1.w,
                                  right: 2.w,
                                  bottom: 1.h),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Assets.images.imgMaskgroup.image(
                                        height: 330.h,
                                        width: 280.w,
                                      ),
                                    ),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            height: (25.00),
                                            width: (25.00),
                                            margin: EdgeInsets.only(
                                              top: 83,
                                              right: 5.w,
                                              bottom: 83,
                                            ),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.bluegray100,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  12.50,
                                                ),
                                                border: Border.all(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  width: 3.00,
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: ColorConstant
                                                          .gray8003f,
                                                      spreadRadius: (2.00),
                                                      blurRadius: (2.00),
                                                      offset:
                                                          const Offset(0, 4))
                                                ])))
                                  ]))),
                      Align(
                          alignment: Alignment.topRight,
                          child: Container(
                              height: (50.00),
                              width: (50.00),
                              margin: const EdgeInsets.only(
                                  left: 10, top: 106, bottom: 106),
                              decoration: BoxDecoration(
                                  color: ColorConstant.bluegray100,
                                  borderRadius: BorderRadius.circular((25.00)),
                                  border: Border.all(
                                      color: ColorConstant.whiteA700,
                                      width: (3.00)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: ColorConstant.gray8003f,
                                        spreadRadius: (2.00),
                                        blurRadius: (2.00),
                                        offset: const Offset(0, 4))
                                  ]))),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                              height: (50.00),
                              width: (50.00),
                              margin: const EdgeInsets.only(
                                  left: 6, top: 41, right: 10, bottom: 41),
                              decoration: BoxDecoration(
                                  color: ColorConstant.bluegray100,
                                  borderRadius: BorderRadius.circular((25.00)),
                                  border: Border.all(
                                      color: ColorConstant.whiteA700,
                                      width: (3.00)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: ColorConstant.gray8003f,
                                        spreadRadius: (2.00),
                                        blurRadius: (2.00),
                                        offset: const Offset(0, 4))
                                  ])))
                    ]))),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 50.h,
                width: double.infinity,
                margin: EdgeInsets.only(top: 5.h),
                decoration: AppDecoration.outlineGray4003f
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL25),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 25, top: 28, right: 25),
                        child: Text(
                          "Discover a New For You",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.gray800,
                            fontSize: 22,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                    Container(
                        width: 70.w,
                        margin:
                            const EdgeInsets.only(left: 25, top: 33, right: 25),
                        child: Text(
                          "Lots of new products here and decide which product is best for you",
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.gray800Cc,
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    Container(
                        height: (9.00),
                        margin:
                            const EdgeInsets.only(left: 25, top: 56, right: 25),
                        child: SmoothIndicator(
                            offset: 0,
                            count: 3,
                            axisDirection: Axis.horizontal,
                            effect: ScrollingDotsEffect(
                                spacing: 15,
                                activeDotColor: ColorConstant.deepOrange400,
                                dotColor: ColorConstant.gray400,
                                dotHeight: (9.00),
                                dotWidth: (9.00)))),
                    CustomButton(
                        width: 80.w,
                        text: "Next",
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainScreen())),
                        margin: const EdgeInsets.only(
                          left: 25,
                          top: 50,
                          right: 25,
                          bottom: 5,
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
