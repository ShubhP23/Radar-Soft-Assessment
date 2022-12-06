import 'package:flutter_svg/flutter_svg.dart';
import 'package:radar_soft_assessment/screens/home_screen/home_screen.dart';
import 'package:radar_soft_assessment/utils/barrels.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final screens = [
    const HomeScreen(),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: ColorConstant.deepOrange40066,
    ),
    Container(
      color: ColorConstant.blueA200,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.teal,
        currentIndex: currentIndex,
        onTap: (index) => setState(
          () => currentIndex = index,
        ),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.images.imgLock24x24),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.images.imgSearchGray400),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.images.imgBag),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.images.imgUser),
            label: '',
          ),
        ],
      ),
    );
  }
}
