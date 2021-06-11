import 'package:blogresponsive/models/blog.dart';
import 'package:blogresponsive/screen/constants.dart';
import 'package:flutter/material.dart';

import 'components/blog_post_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              ListView.builder(
                
                shrinkWrap:  true,
                itemCount: blogPosts.length,
                itemBuilder: (context, index) {
                return BlogPostCard(blog: blogPosts[index]);
              })
            ],
          ),
        ),
        const SizedBox(
          width: kDefaultPadding,
        ),
        Expanded(
            child: Container(
          height: 400,
          color: Colors.blueGrey,
        ))
      ],
    );
  }
}
