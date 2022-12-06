import 'package:radar_soft_assessment/utils/barrels.dart';
import 'package:radar_soft_assessment/screens/sign_in_screen/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, _, __) => const MaterialApp(
        home: SignInScreen(),
      ),
    );
  }
}
