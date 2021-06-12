import 'package:blogresponsive/controllers/menu_controller.dart';
import 'package:blogresponsive/screen/main/components/socal.dart';
import 'package:blogresponsive/screen/main/components/web_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../constants.dart';
import '../../responsive.dart';

class Header extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: kDarkBlackColor,
          child: SafeArea(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  constraints: const BoxConstraints(maxWidth: kMaxWidth),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          if (!Responsive.isDesktop(context))
                            IconButton(
                                onPressed: () {
                                  _controller.openOrCloseDrawer();
                                },
                                icon: const Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                )),
                          SvgPicture.asset("assets/icons/logo.svg"),
                          const Spacer(),
                          if (Responsive.isDesktop(context)) WebMenu(),
                          const Spacer(),
                          const Socal(),
                        ],
                      ),
                      const SizedBox(
                        height: kDefaultPadding * 2,
                      ),
                      const Text(
                        'Welcome to Our Blog',
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: kDefaultPadding),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean mattis \nfringilla tincidunt. Nam ut ex maximus, facilisis felis a, efficitur',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              height: 1.5),
                        ),
                      ),
                      // ignore: prefer_const_literals_to_create_immutables
                      FittedBox(
                        child: TextButton(
                            onPressed: () {},
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  'Learn More',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  width: kDefaultPadding / 2,
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )
                              ],
                            )),
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
