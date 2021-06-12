import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import '../../responsive.dart';

class Socal extends StatelessWidget {
  const Socal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isMobile(context))
          SvgPicture.asset('assets/icons/behance-alt.svg'),
        if (!Responsive.isMobile(context))
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SvgPicture.asset('assets/icons/feather_dribbble.svg'),
          ),
        if (!Responsive.isMobile(context))
          SvgPicture.asset('assets/icons/feather_twitter.svg'),
        const SizedBox(
          width: kDefaultPadding,
        ),
        ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 1.5,
                    vertical: kDefaultPadding)),
            child: const Text("Let's Talk"))
      ],
    );
  }
}
