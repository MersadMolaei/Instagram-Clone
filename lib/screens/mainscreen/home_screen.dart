import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tec/res/stories_data.dart';

import '../../custom_widgets/Story_list.dart';
import '../../gen/assets.gen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stories = StoriesDatabase.stories;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          actions: [
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Assets.icons.cameraIcon.svg()),
            ),
            Expanded(
                child: Align(
                    alignment: Alignment.center,
                    child: Assets.icons.instagramLogo.svg())),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Assets.icons.igtv.svg(),
            ),
            const SizedBox(
              width: 12,
            ),
            Assets.icons.messanger.svg(),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              StoryList(stories: stories),
              const Divider(
                color: Colors.black38,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


