import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shelterapp/app_style.dart';
import 'package:shelterapp/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> dogs = [
      'dog_marlyn.jpg',
      'dog_cocoa.jpg',
      'dog_walt.jpg',
      'dog_tommy.jpg'
    ];

    List<String> dogs_name = ["Marlyn", "Cocoa", "Walt", "Tommy"];
    List<String> dogs_breed = [
      "Mesut",
      "Golden Retriver",
      "Doberman",
      "BullDog"
    ];

    List<String> cats = [
      'cat_alyx.jpg',
      'cat_brook.jpg',
      'cat_marly.jpg',
    ];

    List<String> cats_name = ["Alyx", "Brook", "Marly"];
    List<String> cats_breed = [
      "Mesut",
      "Golden Retriver",
      "Doberman",
    ];

    SizeConfig().init(context);

    return SafeArea(
      child: ListView(
        children: [
          SizedBox(
            height: 10.0,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // menu icon
                Icon(Icons.menu),

                // Circle avatar
                CircleAvatar(
                  radius: 20,
                  backgroundColor: kRed,
                  backgroundImage: NetworkImage(
                      'https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png'),
                )
              ],
            ),
          ),

          SizedBox(
            height: 5.0,
          ),

          // second level
          SizedBox(
            height: 200,
            child: Stack(children: [
              // to postoion the image in center
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: 0,
                child: Image.asset(
                  "assets/images/welcome.jpg",
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                left: 30,
                top: 0,
                bottom: 0,
                right: SizeConfig.blockSizeHorizontal! * 38,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hello Nishant ",
                      style: kSourceSansProMedium.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                          color: Color.fromARGB(255, 173, 14, 3)),
                    ),
                    Text(
                      "Ready for an amazing and lucky experience",
                      style: kSourceSansProRegular.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                          color: Color.fromARGB(255, 173, 14, 3)),
                    )
                  ],
                ),
              ),
            ]),
          ),

          SizedBox(
            height: 10.0,
          ),

          Container(
            height: 30.0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: Row(
                children: [
                  Text(
                    "Dogs",
                    style: kSourceSansProBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 6,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 5.0,
          ),

          SizedBox(
            height: 170,
            child: ListView.builder(
              itemCount: dogs.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 170,
                  width: 150,
                  margin: EdgeInsets.only(
                    left: index == 0 ? 30 : 15,
                    right: index == dogs.length - 1 ? 30 : 0,
                  ),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      color: kWHite,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 14,
                          offset: Offset(0, 3),
                          color: kBOxshadowcolor.withOpacity(0.18),
                        )
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: 78,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          child: Image.asset(
                            "assets/images/${dogs[index]}",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: SizeConfig.blockSizeVertical! * 2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.5),
                              color: kOrange,
                            ),
                            child: Center(
                                child: Text(
                              dogs_breed[index],
                              style: kSourceSansProBold.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            )),
                          ),
                          Icon(Icons.favorite_border),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text(
                            dogs_name[index],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: kSourceSansProBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              color: kGrey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Text(
                            "17-12-23",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: kSourceSansProRegular.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              color: kLightGreen,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          SizedBox(
            height: 5.0,
          ),

          Container(
            height: 30.0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: Row(
                children: [
                  Text(
                    "Cats",
                    style: kSourceSansProBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 6,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 5.0,
          ),

          SizedBox(
            height: 170,
            child: ListView.builder(
              itemCount: cats.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 170,
                  width: 150,
                  margin: EdgeInsets.only(
                    left: index == 0 ? 30 : 15,
                    right: index == cats.length - 1 ? 30 : 0,
                  ),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      color: kWHite,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 14,
                          offset: Offset(0, 3),
                          color: kBOxshadowcolor.withOpacity(0.18),
                        )
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: 78,
                        width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          child: Image.asset(
                            "assets/images/${cats[index]}",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: SizeConfig.blockSizeVertical! * 2.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.5),
                              color: kOrange,
                            ),
                            child: Center(
                                child: Text(
                              cats_breed[index],
                              style: kSourceSansProBold.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            )),
                          ),
                          Icon(Icons.favorite_border),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text(
                            cats_name[index],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: kSourceSansProBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              color: kGrey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Text(
                            "17-12-23",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: kSourceSansProRegular.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              color: kLightGreen,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
