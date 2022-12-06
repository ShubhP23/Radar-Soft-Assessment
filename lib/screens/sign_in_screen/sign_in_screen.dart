import 'package:flutter_svg/flutter_svg.dart';
import 'package:radar_soft_assessment/screens/onboarding_screen/onboarding_screen.dart';
import 'package:radar_soft_assessment/utils/barrels.dart';
import 'package:radar_soft_assessment/widgets/custom_button.dart';
import 'package:radar_soft_assessment/widgets/custom_text_form_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.gray50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Assets.images.imgRectangle386.image(),
            Padding(
              padding: EdgeInsets.all(20.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Hello, Welcome back',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.h, bottom: 2.h),
                    child: CustomTextFormField(
                      width: 90.w,
                      hintText: 'kiitavalezka02',
                      focusNode: FocusNode(),
                      shape: TextFormFieldShape.RoundedBorder18,
                      prefix: Container(
                        margin: EdgeInsets.only(left: 2.w, right: 2.w),
                        child: SvgPicture.asset(Assets.images.imgUser),
                      ),
                      prefixConstraints:
                          BoxConstraints(minWidth: 2.w, minHeight: 2.h),
                    ),
                  ),
                  CustomTextFormField(
                    width: 90.w,
                    hintText: '••••••••',
                    shape: TextFormFieldShape.RoundedBorder18,
                    focusNode: FocusNode(),
                    prefix: Container(
                      margin: EdgeInsets.only(left: 2.w, right: 2.w),
                      child: SvgPicture.asset(Assets.images.imgLock),
                    ),
                    prefixConstraints:
                        BoxConstraints(minWidth: 2.w, minHeight: 2.h),
                    isObscureText: true,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 1.h, bottom: 4.h),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          'Forgot Password?',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.blueA200,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 20.w,
                        height: 0.1.h,
                        decoration: BoxDecoration(
                          color: ColorConstant.gray400,
                        ),
                      ),
                      Text(
                        'Or login with',
                        style: TextStyle(
                          color: ColorConstant.gray400,
                          fontSize: 12.sp,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        width: 20.w,
                        height: 0.1.h,
                        decoration: BoxDecoration(
                          color: ColorConstant.gray400,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.h, bottom: 6.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset(Assets.images.imgGoogle),
                        SvgPicture.asset(Assets.images.imgFacebook),
                        SvgPicture.asset(Assets.images.imgTwitter),
                      ],
                    ),
                  ),
                  CustomButton(
                    width: 90.w,
                    variant: ButtonVariant.OutlineGray7000c,
                    shape: ButtonShape.RoundedBorder19,
                    fontStyle: ButtonFontStyle.NunitoSansBold18,
                    text: 'Log In',
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OnBoardingScreen()),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Don't have an account? Please  ",
                                style: TextStyle(
                                    color: ColorConstant.gray800,
                                    fontSize: 12.sp,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w600)),
                            TextSpan(
                                text: "Sign Up",
                                style: TextStyle(
                                    color: ColorConstant.blueA200,
                                    fontSize: 12.sp,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
