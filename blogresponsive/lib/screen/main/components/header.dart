import 'package:blogresponsive/screen/main/components/web_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';


class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      constraints:  const BoxConstraints(maxWidth: kMaxWidth),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/logo.svg"),
          const Spacer(),
          WebMenu(),
          const Spacer(),
          SvgPicture.asset('assets/icons/behance-alt.svg'),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding),
            child: SvgPicture.asset(
                'assets/icons/feather_dribbble.svg'),
          ),

          SvgPicture.asset('assets/icons/feather_twitter.svg'),
          const SizedBox(width: kDefaultPadding,),
          ElevatedButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 1.5,
                      vertical: kDefaultPadding)),
              child: const Text("Let's Talk"))
        ],
      ),
    );
  }
}
