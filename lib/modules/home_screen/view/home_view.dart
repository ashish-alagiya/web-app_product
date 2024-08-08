import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:webappdemo/modules/home_screen/controller/homecontroller.dart';
import 'package:webappdemo/utils/color.dart';
import 'package:webappdemo/utils/responsive_widget.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (logic) {
        return SafeArea(
            child: Scaffold(
          key: controller.scaffoldKey,
          backgroundColor: backgroundColor,
          appBar: AppBar(
              toolbarHeight: Responsive.isMobile(context)
                  ? 50
                  : Responsive.isTablet(context)
                      ? 100
                      : 100,
              title: !Responsive.isMobile(context)
                  ? Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: white, borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          const Flexible(
                              flex: 12,
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 25),
                                    border: InputBorder.none,
                                    hintText: "Search here..."),
                              )),
                          Flexible(
                              flex: Responsive.isDesktop(context) ? 1 : 2,
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                color: blue,
                                child: Icon(
                                  Icons.search,
                                  color: white,
                                  size: 30,
                                ),
                              ))
                        ],
                      ),
                    )
                  : const SizedBox(),
              backgroundColor: primaryColor,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      Responsive.isMobile(context)
                          ? GestureDetector(
                              child: Icon(
                                Icons.search,
                                color: white,
                                size: 30,
                              ),
                            )
                          : const SizedBox(),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.person,
                        color: white,
                        size: 30,
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        Icons.shopping_cart_sharp,
                        color: white,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ],
              leading: PopupMenuButton<String>(
                icon: Icon(
                  Icons.menu,
                  color: white,
                ),
                itemBuilder: (BuildContext context) =>
                    controller.popupMenuItems(context),
                onSelected: (String value) {},
              )),
          body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    expandedHeight: Responsive.isDesktop(context)
                        ? 700
                        : Responsive.isTablet(context)
                            ? 200
                            : 260,
                    flexibleSpace: FlexibleSpaceBar(
                        background: Column(
                      children: [
                        Stack(children: [
                          CarouselSlider(
                            carouselController: controller.carouselController,
                            options: CarouselOptions(
                              height: Responsive.isDesktop(context)
                                  ? 600.0
                                  : Responsive.isTablet(context)
                                      ? 600
                                      : 200,
                              autoPlay: true,
                              enlargeCenterPage: true,
                              autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                              enableInfiniteScroll: true,
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 500),
                              viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                controller.current = index;
                                controller.update();
                              },
                            ),
                            items: controller.imageList.map((String imageUrl) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Image.asset(
                                      imageUrl,
                                      fit: BoxFit.cover,
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:
                                  controller.imageList.map((String imageUrl) {
                                int index =
                                    controller.imageList.indexOf(imageUrl);
                                return Container(
                                  width: 12.0,
                                  height: 12.0,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 4.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: controller.current == index
                                        ? Colors.black // Active dot color
                                        : Colors.grey, // Inactive dot color
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ]),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  text: 'Top ',
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.black),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Sellers',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 28)),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "View All",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: blue),
                                  ),
                                  Icon(
                                    Icons.navigate_next,
                                    color: blue,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                  ),
                ];
              },
              body: ResponsiveGridList(
                horizontalGridSpacing: 0,
                verticalGridSpacing: 0,
                horizontalGridMargin: 0,
                verticalGridMargin: 0,
                minItemWidth: 300,
                minItemsPerRow: Responsive.isMobile(context)
                    ? 2
                    : Responsive.isTablet(context)
                        ? 4
                        : 6,
                maxItemsPerRow: 6,
                listViewBuilderOptions: ListViewBuilderOptions(),
                children: List.generate(controller.allData.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Stack(
                      children: [
                        Material(
                          elevation: 1,
                          child: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 40),
                                        child: SizedBox(
                                          height: 180,
                                          child: Image.asset(
                                              "${controller.allData[index].image}"),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        '${controller.allData[index].title}',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Text(
                                            '\$${controller.allData[index].price}',
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.red),
                                          ),
                                          const SizedBox(width: 20),
                                          Text(
                                              '\$${controller.allData[index].discount}',
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  decoration: TextDecoration
                                                      .lineThrough))
                                        ],
                                      ),
                                      controller.allData[index].review != null
                                          ? SizedBox(
                                              height: 45,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const SizedBox(height: 5),
                                                  RatingBar(
                                                    initialRating: 3,
                                                    itemSize: 20,
                                                    direction: Axis.horizontal,
                                                    allowHalfRating: true,
                                                    itemCount: 5,
                                                    ratingWidget: RatingWidget(
                                                      full: const Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.orangeAccent,
                                                      ),
                                                      half: const Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.orangeAccent,
                                                      ),
                                                      empty: const Icon(
                                                        Icons.star,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    onRatingUpdate: (rating) {},
                                                  ),
                                                  Text(
                                                    "17 Reviews",
                                                    style: TextStyle(
                                                        color: grey,
                                                        fontSize: 14),
                                                  )
                                                ],
                                              ),
                                            )
                                          : const SizedBox(height: 45),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 40,
                                        width: 200,
                                        child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2.0)),
                                                backgroundColor: Colors.black),
                                            child: const Text(
                                              'Choose options',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white),
                                            )),
                                      ),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                        height: 40,
                                        width: 200,
                                        child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                side: const BorderSide(
                                                    color: Colors.grey,
                                                    width: 1),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2.0)),
                                                backgroundColor: Colors.white),
                                            child: const Text(
                                              'Quick view',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.blue),
                                            )),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 20,
                            child: Container(
                              height: 30,
                              width: 110,
                              color: Colors.red,
                              child: Center(
                                  child: Text(
                                      'Save \$ ${controller.allData[index].tagPrice}',
                                      style: const TextStyle(
                                          color: Colors.white))),
                            )),
                      ],
                    ),
                  );
                }),
              )),
        ));
      },
    );
  }
}
