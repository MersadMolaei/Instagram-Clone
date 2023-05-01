import 'package:flutter/material.dart';
import 'package:tec/route/names.dart';

import '../gen/assets.gen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then(
        (value) => Navigator.pushReplacementNamed(context, Screens.mainScreen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.black,
      child:  Column(
        children: [
          Expanded(
            child: Image.asset(Assets.icons.instagramlogosplash.path),
          ),
          Text('from',style: TextStyle(color: Colors.blueGrey.shade700),),
          Image.asset(Assets.icons.instagramMetaLogoPNG.path),
          const SizedBox(height: 30,)
        ],
      ),
    ));
  }
}
