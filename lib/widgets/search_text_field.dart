import 'package:flutter_svg/flutter_svg.dart';
import 'package:radar_soft_assessment/utils/barrels.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20.sp),
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Container(
              margin: EdgeInsets.only(right: 2.w),
              child: SvgPicture.asset(Assets.images.imgSearch)),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 4.h,
          ),
          fillColor: ColorConstant.gray100,
          filled: true,
          hintText: "Search Product",
          border: const UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
