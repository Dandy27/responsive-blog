import 'package:blogresponsive/screen/home/components/sidebar_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';



class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: 'Search', child: TextField(
      onChanged: (value) {},
      decoration: InputDecoration(
        hintText: 'Type Here ...',
        suffixIcon: Padding(
          padding:  const EdgeInsets.all(kDefaultPadding / 2),
          child: SvgPicture.asset(
            'assets/icons/feather_search.svg',
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
          borderSide: const BorderSide(color: Color(0xFFCCCCCC)),
        ),
      ),
    ),);
  }
}
