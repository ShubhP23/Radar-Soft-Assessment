import 'package:flutter_svg/flutter_svg.dart';
import 'package:radar_soft_assessment/utils/barrels.dart';
import 'package:radar_soft_assessment/widgets/appbar_image.dart';
import 'package:radar_soft_assessment/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ItemDetailsScreen extends StatefulWidget {
  const ItemDetailsScreen({super.key});

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  final List<bool> _isSelected = [true, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leadingWidth: 12.w,
            leading: AppbarImage(
              height: 4.h,
              width: 2.w,
              svgPath: Assets.images.imgArrowleft,
              margin: EdgeInsets.only(left: 6.w),
              onTap: () => Navigator.pop(context),
            ),
            actions: [
              AppbarImage(
                height: 4.h,
                width: 6.w,
                svgPath: Assets.images.imgBag24x24,
                margin: EdgeInsets.only(right: 6.w),
              )
            ],
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.images.imgArrowleftGray400),
                  Container(
                    color: ColorConstant.gray400,
                    height: 35.h,
                    width: 70.w,
                  ),
                  SvgPicture.asset(Assets.images.imgArrowright),
                ],
              ),
              Container(
                height: 9.h,
                margin: EdgeInsets.only(top: 2.h),
                child: SmoothIndicator(
                  offset: 0,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                      spacing: 15,
                      activeDotColor: ColorConstant.deepOrange400,
                      dotColor: ColorConstant.gray400,
                      dotHeight: 1.h,
                      dotWidth: 2.w),
                ),
              ),
            ],
          ),
        ),
        DraggableScrollableSheet(
          initialChildSize: 0.4,
          minChildSize: 0.4,
          maxChildSize: 0.7,
          expand: true,
          builder: (context, scrollController) => Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(1, 1),
                spreadRadius: 10,
                blurRadius: 10,
              ),
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: EdgeInsets.all(20.sp),
                color: Colors.white,
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Material(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 1.h),
                          child: Text(
                            'Nike Jordan 1 Retro Yellow',
                            style: AppStyle.txtNunitoSansBold16,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$ 608',
                              style: AppStyle.txtNunitoSansBold17Deeporange400,
                            ),
                            SvgPicture.asset(Assets.images.imgLocation),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.h),
                          child: Text(
                            'Size',
                            style: AppStyle.txtNunitoSansRegular14Gray80099,
                          ),
                        ),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorConstant.gray4003f,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ToggleButtons(
                              constraints: BoxConstraints(
                                  minWidth: 20.w, minHeight: 6.h),
                              borderRadius: BorderRadius.circular(12),
                              fillColor: ColorConstant.deepOrange400,
                              selectedColor: Colors.white,
                              renderBorder: false,
                              isSelected: _isSelected,
                              children: const [
                                Text('S'),
                                Text('M'),
                                Text('L'),
                                Text('XL'),
                              ],
                              onPressed: (newIndex) {
                                setState(() {
                                  for (int index = 0;
                                      index < _isSelected.length;
                                      index++) {
                                    if (index == newIndex) {
                                      _isSelected[index] = true;
                                    } else {
                                      _isSelected[index] = false;
                                    }
                                  }
                                });
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.h),
                          child: Text(
                            'Color',
                            style: AppStyle.txtNunitoSansRegular14Gray80099,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                                backgroundColor: ColorConstant.black900),
                            CircleAvatar(
                                backgroundColor: ColorConstant.bluegray400),
                            CircleAvatar(
                                backgroundColor: ColorConstant.bluegray100),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2.h),
                          child: Text(
                            'Seller',
                            style: AppStyle.txtNunitoSansRegular14Gray80099,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: ColorConstant.gray100,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: 80.w,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.sp),
                                child: CircleAvatar(
                                  backgroundColor: ColorConstant.gray300,
                                  radius: 20.sp,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shiba Store',
                                    style: AppStyle.txtNunitoSansBold16,
                                  ),
                                  Text(
                                    'Jharkhand',
                                    style: AppStyle
                                        .txtNunitoSansRegular14Gray80099,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Padding(
                                padding: EdgeInsets.only(right: 4.w),
                                child: InkWell(
                                  child: Text(
                                    'View Shop',
                                    style: AppStyle
                                        .txtNunitoSansBold17Deeporange400
                                        .copyWith(fontSize: 10.sp),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        CustomButton(
          width: 80.w,
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(bottom: 2.h),
          text: 'Add to cart',
        ),
      ],
    );
  }
}
