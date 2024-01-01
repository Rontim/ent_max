import 'dart:ui';

import 'package:ent_max/src/constants/colors.dart';
import 'package:ent_max/src/constants/text_string.dart';
import 'package:ent_max/src/features/home/model/movie_model.dart';
import 'package:ent_max/src/features/home/screens/landing/widgets/card_thumbnail.dart';
import 'package:ent_max/src/features/home/screens/landing/widgets/home_app_bar.dart';
import 'package:ent_max/src/features/home/screens/landing/widgets/home_search_bar.dart';
import 'package:ent_max/src/features/home/screens/landing/widgets/movie_card.dart';
import 'package:ent_max/src/repository/movie_repository.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MovieModal> forYouMovieList = List.of(forYouImages);
  List<MovieModal> popularMovieList = List.of(popularImages);
  List<MovieModal> genreMovieList = List.of(genresList);
  List<MovieModal> legendaryMovieList = List.of(legendaryImages);

  final PageController _pageController = PageController(initialPage: 0, viewportFraction: 0.8);

  int currentPage = 0;

  /* --Tab bar Icons-- */
  List<IconData> tabIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.compass,
    FontAwesomeIcons.video,
    FontAwesomeIcons.user,
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          /* --Movies Selection-- */
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HomeScreenBar(),
                  const SizedBox(
                    height: 20,
                  ),
                  const HomeSearchBar(),
                  const SizedBox(
                    height: 20,
                  ),

                  /* --For You-- */
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28, vertical: 5),
                    child: Text(
                      kForYou,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white54,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  forYouCardsLayout(forYouMovieList),

                  /* --Page Indicator-- */
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                      decoration: BoxDecoration(
                        color: kSearchbarColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: AnimatedSmoothIndicator(
                        activeIndex: currentPage,
                        count: forYouMovieList.length,
                        axisDirection: Axis.horizontal,
                        effect: const SlideEffect(
                          spacing: 8.0,
                          radius: 10,
                          dotHeight: 8.0,
                          dotWidth: 8.0,
                          dotColor: Colors.white24,
                          activeDotColor: Colors.white,
                        ),
                        duration: const Duration(milliseconds: 200),
                      ),
                    ),
                  ),

                  /* --Popular Movies-- */
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              kPopular,
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              kSeeAll,
                              style: TextStyle(
                                color: kButtonColor,
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  movieListBuilder(popularMovieList),

                  /* --Genre-- */
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              kGenre,
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              kSeeAll,
                              style: TextStyle(
                                color: kButtonColor,
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  genresListBuilder(genreMovieList),

                  /* --Legendary Movies-- */
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              kLegendary,
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              kSeeAll,
                              style: TextStyle(
                                color: kButtonColor,
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  movieListBuilder(legendaryMovieList),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  )
                ],
              ),
            ),
          ),

          /* --Bottom Navigation Bar-- */
          Positioned(
            bottom: 35,
            left: 25,
            right: 25,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 25,
                  sigmaY: 25,
                ),
                child: Container(
                  color: kSearchbarColor.withOpacity(0.6),
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...tabIcons.map(
                        (e) => Icon(
                          e,
                          color: e == tabIcons[0] ? Colors.white : Colors.white54,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget forYouCardsLayout(List<MovieModal> movielist) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: PageView.builder(
        controller: _pageController,
        physics: const ClampingScrollPhysics(),
        itemCount: movielist.length,
        itemBuilder: (item, index) =>
            CardThumbnail(imageAsset: movielist[index].imageAsset.toString()),
        onPageChanged: (int page) => setState(() {
          currentPage = page;
        }),
      ),
    );
  }

  Widget movieListBuilder(List<MovieModal> movieList) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 28),
      height: MediaQuery.of(context).size.height * 0.30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movieList.length,
        itemBuilder: (item, index) {
          return CustomMovieCard(movieModal: movieList[index]);
        },
      ),
    );
  }

  Widget genresListBuilder(List<MovieModal> genreMovieList) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
      height: MediaQuery.of(context).size.height * 0.20,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: genreMovieList.length,
        itemBuilder: (item, index) {
          return Stack(
            children: [
              Container(
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(
                      genreMovieList[index].imageAsset.toString(),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                margin: const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 30),
              ),
              Positioned(
                bottom: 0,
                left: 20,
                child: Text(
                  genreMovieList[index].movieName.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
