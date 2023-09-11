import 'package:flutter/material.dart';
import 'package:netflix_clone_app/models/content_model.dart';

class Previews extends StatelessWidget {
  final String title;
  final List<Content> contentList;
  const Previews({
    super.key,
    required this.title,
    required this.contentList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 165,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            scrollDirection: Axis.horizontal,
            itemCount: contentList.length,
            itemBuilder: (context, index) {
              final Content content = contentList[index];
              return GestureDetector(
                onTap: () {},
                child: Stack(
                  children: [
                    Container(
                      height: 160,
                      width: 160,
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(content.imageUrl),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(color: content.color, width: 3),
                      ),
                    ),
                    Container(
                      height: 165,
                      width: 160,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black,
                          Colors.transparent,
                        ],
                      )),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: SizedBox(
                        height: 60,
                        child: Image.asset(content.titleImageUrl),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
