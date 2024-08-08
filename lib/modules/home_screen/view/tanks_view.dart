import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:webappdemo/modules/home_screen/controller/homecontroller.dart';
import 'package:webappdemo/utils/color.dart';
import 'package:webappdemo/utils/image.dart';
import 'package:webappdemo/utils/responsive_widget.dart';

class TanksView extends StatefulWidget {
  const TanksView({super.key});

  @override
  State<TanksView> createState() => _TanksViewState();
}

class _TanksViewState extends State<TanksView> {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Home > Tanks",
                  style: TextStyle(color: black, fontSize: 12),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 9,
                    child: Material(
                      elevation: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: SizedBox(
                                      height: 200,
                                      child: Image.asset(AppAsset.luffbar),
                                    )),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                    flex: 8,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Tanks",
                                            style: TextStyle(
                                                color: black,
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "At CSVape.com we carry a wide variety of Vape Tanks ranging from Replacement Coil Systems to RTA Rebuildable Tanks providing a more Custom Feel to your Vaping experience allowing you to tweak your oHm Readings and Surface Area for more Flavor or Vapor! Featuring a Hot new Tank to the vaping market, the VGOD TrickTank is a High Density bottom airflow tank that utilizes a Parallel Style Coil head providing High Vapor and Flavor Production! Replacement Coil Tanks are more suitable for those on-the-go often or don't like Building. RTA's or RDTA's are more suitable for those looking for a specific Vaping feel wether it be Temp, Throat Hit, or Cloud Production. View our selection of Tanks and RTA/RDTA's and let us know in the comments what you think of our products! At CSVape.com we strive for excellence in providing great customer service and helping our customers achieve their Vaping goals!",
                                            style: TextStyle(
                                                color: grey, fontSize: 12),
                                          )
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Divider(
                                color: grey.withOpacity(0.5),
                                thickness: 1,
                                height: 1,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 35),
                              child: Row(
                                children: [
                                  Text(
                                    "Showing 1 - 16 of 299 products",
                                    style: TextStyle(fontSize: 14, color: grey),
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.list,
                                        color: black,
                                        size: 30,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.grid_on_sharp,
                                        color: black,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Divider(
                                color: grey.withOpacity(0.5),
                                thickness: 1,
                                height: 1,
                              ),
                            ),
                            SizedBox(
                                height: 1000,
                                child: ResponsiveGridList(
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
                                  listViewBuilderOptions:
                                      ListViewBuilderOptions(),
                                  children: List.generate(
                                      controller.allData.length, (index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Stack(
                                        children: [
                                          Material(
                                            elevation: 1,
                                            child: Container(
                                              color: Colors.white,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 20,
                                                        horizontal: 15),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  top: 40),
                                                          child: SizedBox(
                                                            height: 180,
                                                            child: Image.asset(
                                                                "${controller.allData[index].image}"),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 10),
                                                        Text(
                                                          '${controller.allData[index].title}',
                                                          style:
                                                              const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 14),
                                                        ),
                                                        const SizedBox(
                                                            height: 10),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              '\$${controller.allData[index].price}',
                                                              style: const TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .red),
                                                            ),
                                                            const SizedBox(
                                                                width: 20),
                                                            Text(
                                                                '\$${controller.allData[index].discount}',
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                    decoration:
                                                                        TextDecoration
                                                                            .lineThrough))
                                                          ],
                                                        ),
                                                        controller
                                                                    .allData[
                                                                        index]
                                                                    .review !=
                                                                null
                                                            ? SizedBox(
                                                                height: 45,
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    const SizedBox(
                                                                        height:
                                                                            5),
                                                                    RatingBar(
                                                                      initialRating:
                                                                          3,
                                                                      itemSize:
                                                                          20,
                                                                      direction:
                                                                          Axis.horizontal,
                                                                      allowHalfRating:
                                                                          true,
                                                                      itemCount:
                                                                          5,
                                                                      ratingWidget:
                                                                          RatingWidget(
                                                                        full:
                                                                            const Icon(
                                                                          Icons
                                                                              .star,
                                                                          color:
                                                                              Colors.orangeAccent,
                                                                        ),
                                                                        half:
                                                                            const Icon(
                                                                          Icons
                                                                              .star,
                                                                          color:
                                                                              Colors.orangeAccent,
                                                                        ),
                                                                        empty:
                                                                            const Icon(
                                                                          Icons
                                                                              .star,
                                                                          color:
                                                                              Colors.grey,
                                                                        ),
                                                                      ),
                                                                      onRatingUpdate:
                                                                          (rating) {},
                                                                    ),
                                                                    Text(
                                                                      "17 Reviews",
                                                                      style: TextStyle(
                                                                          color:
                                                                              grey,
                                                                          fontSize:
                                                                              14),
                                                                    )
                                                                  ],
                                                                ),
                                                              )
                                                            : const SizedBox(
                                                                height: 45),
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
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color: Colors
                                                                          .white),
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              2.0)),
                                                                  backgroundColor:
                                                                      Colors
                                                                          .black),
                                                              child: const Text(
                                                                'Choose options',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .white),
                                                              )),
                                                        ),
                                                        const SizedBox(
                                                            height: 10),
                                                        SizedBox(
                                                          height: 40,
                                                          width: 200,
                                                          child: ElevatedButton(
                                                              onPressed: () {},
                                                              style: ElevatedButton.styleFrom(
                                                                  side: const BorderSide(
                                                                      color: Colors
                                                                          .grey,
                                                                      width: 1),
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              2.0)),
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white),
                                                              child: const Text(
                                                                'Quick view',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    color: Colors
                                                                        .blue),
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
                                                            color:
                                                                Colors.white))),
                                              )),
                                        ],
                                      ),
                                    );
                                  }),
                                )),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
