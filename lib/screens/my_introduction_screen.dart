import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_flutter_app/screens/home_screen.dart';

class MyIntroductionScreen extends StatelessWidget {
  const MyIntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: IntroductionScreen(
        //showBackButton: true,
        showSkipButton: true,
        showNextButton: true,
        next: const Text('Next'),
        skip: const Text('Skip'),
        done: const Text('Done'),
        onDone: () {
          _endWelcomePage(context);
        },
        onSkip: () {
          _endWelcomePage(context);
        },
        //onChange: (){},
        pages: getPages(),
      ),
    );
  }

  void _endWelcomePage(context) {
    Navigator.pop(context);
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => const HomeScreen()));
  }

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          title: 'Welcome to my App',
          body: 'I will try to use some fancy Widgets',
          footer: const Text('My name is Agustin'),
          image: SvgPicture.asset('lib/utils/assets/first_asset.svg'),
          //image: Image.asset('lib/utils/assets/first_asset.png'),
          decoration: const PageDecoration(pageColor: Colors.grey)),
      PageViewModel(
          title: '22 This is the title of the introduction screen',
          body: '22Welcome to my app',
          footer: const Text('My name is Agustin'),
          image: Image.asset('lib/utils/assets/first_asset.png'),
          decoration: const PageDecoration(pageColor: Colors.grey)),
      PageViewModel(
          title: '33This is the title of the introduction screen',
          body: 'Welcome to my app',
          footer: const Text('My name is Agustin'),
          image: Image.asset('lib/utils/assets/first_asset.png'),
          decoration: const PageDecoration(pageColor: Colors.grey))
    ];
  }
}
