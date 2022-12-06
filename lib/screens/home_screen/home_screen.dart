import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:radar_soft_assessment/screens/home_screen/item_details_screen.dart';
import 'package:radar_soft_assessment/utils/barrels.dart';
import 'package:radar_soft_assessment/widgets/appbar_image.dart';
import 'package:radar_soft_assessment/widgets/custom_text_form_field.dart';
import 'package:radar_soft_assessment/widgets/item_widget.dart';
import 'package:radar_soft_assessment/widgets/search_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: buildDrawer(),
      ),
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 10.h,
        automaticallyImplyLeading: false,
        leadingWidth: 8.w,
        leading: AppbarImage(
          height: 2.h,
          width: 2.w,
          svgPath: Assets.images.imgMenu,
          margin: EdgeInsets.only(left: 2.w),
          onTap: () {
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.closeDrawer();
              //close drawer, if drawer is open
            } else {
              scaffoldKey.currentState!.openDrawer();
              //open drawer, if drawer is closed
            }
          },
        ),
        title: Container(
          padding: EdgeInsets.all(6.sp),
          decoration: BoxDecoration(
              color: ColorConstant.whiteA700,
              borderRadius: BorderRadius.circular(10.sp),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 2),
                  spreadRadius: 1,
                  blurRadius: 2,
                ),
              ]),
          child: Text(
            '👋 Hello, Rizale',
            style: TextStyle(
              color: ColorConstant.gray800Cc,
              fontSize: 16,
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          AppbarImage(
            height: 5.h,
            width: 3.h,
            svgPath: Assets.images.imgNotification,
            margin: EdgeInsets.only(right: 2.w),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.sp),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SearchTextField(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 1,
                  top: 30,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      "Category",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                    ),
                    Spacer(),
                    Text(
                      "See more",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    left: 1,
                    top: 18,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomTextFormField(
                        width: 235,
                        focusNode: FocusNode(),
                        hintText: "Furniture",
                        variant: TextFormFieldVariant.FillGray400,
                        padding: TextFormFieldPadding.PaddingAll28,
                        fontStyle: TextFormFieldFontStyle.NunitoSansBold16,
                      ),
                      CustomTextFormField(
                        width: 235,
                        focusNode: FocusNode(),
                        hintText: "Fashion",
                        margin: const EdgeInsets.only(
                          left: 20,
                        ),
                        variant: TextFormFieldVariant.FillGray400,
                        padding: TextFormFieldPadding.PaddingAll28,
                        fontStyle: TextFormFieldFontStyle.NunitoSansBold16,
                        textInputAction: TextInputAction.done,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 29,
                  right: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      "Recomended for you",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                    ),
                    Spacer(),
                    Text(
                      "See more",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              StaggeredGridView.countBuilder(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 4,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4.h,
                staggeredTileBuilder: (index) => const StaggeredTile.fit(2),
                itemCount: 4,
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ItemDetailsScreen(),
                          ),
                        ),
                    child: const ItemWidget()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildDrawer() {
  List<String> drawerItems = [
    'Home',
    'My Wallet',
    'Catagory',
    'My Likes',
    'Contact Us',
    'About',
    'Help',
    "LogOut"
  ];
  int tappedIndex = 0;
  return Column(
    children: [
      DrawerHeader(
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: ColorConstant.gray300,
              radius: 20.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child:
                  Text('Rizale Greyrat', style: AppStyle.txtNunitoSansBold16),
            ),
          ],
        ),
      ),
      ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: drawerItems.length,
        separatorBuilder: (context, index) => const SizedBox(),
        itemBuilder: (context, index) {
          var item = drawerItems[index];
          return ListTile(
            onTap: () {
              tappedIndex = index;
            },
            selected: tappedIndex == index ? true : false,
            title: Text(item),
            selectedColor: ColorConstant.deepOrange400,
          );
        },
      ),
    ],
  );
}
