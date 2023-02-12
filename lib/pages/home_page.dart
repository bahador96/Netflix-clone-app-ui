import 'package:flutter/material.dart';
import 'package:netflix_app/widgets/home/get_appbar.dart';

import 'package:netflix_app/widgets/home/hoem_post.dart';
import 'package:netflix_app/widgets/home/play_movie.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false,
        body: getBody(),
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                SizedBox(
                  width: size.height - 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 500,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              image: DecorationImage(
                                image: AssetImage("assets/images/banner.webp"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 500,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black.withOpacity(0.85),
                                  Colors.black.withOpacity(0),
                                ],
                                end: Alignment.topCenter,
                                begin: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 500,
                            width: size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/title_img.webp',
                                  width: 300,
                                ),
                                const SizedBox(height: 15),
                                const Text(
                                  "Excting - Sci-Fi Drama - Sci-Fi Adventure",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),

                      // my list play info
                      const PlayMovie(),

                      const SizedBox(height: 40),

                      // my list Popular on Netflix & ...
                      const Post(),
                    ],
                  ),
                ),

                // logo profile
                const GetAppbar()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
