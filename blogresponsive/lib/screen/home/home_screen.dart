import 'package:blogresponsive/models/blog.dart';
import 'package:blogresponsive/screen/constants.dart';


import 'package:flutter/material.dart';

import '../responsive.dart';
import 'components/blog_post_card.dart';
import 'components/categories.dart';
import 'components/recent_post.dart';
import 'components/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: blogPosts.length,
                  itemBuilder: (context, index) {
                    return BlogPostCard(blog: blogPosts[index]);
                  })
            ],
          ),
        ),
        if(!Responsive.isMobile(context))
        const SizedBox(
          width: kDefaultPadding,
        ),
        // Sidebar
        if(!Responsive.isMobile(context))
        Expanded(
            child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Search(),
            const SizedBox(height: kDefaultPadding),
            const Categories(),
            const SizedBox(height: kDefaultPadding),
            const RecentPost()
          ],
        ))
      ],
    );
  }
}
