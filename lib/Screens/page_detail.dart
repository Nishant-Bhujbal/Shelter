import 'package:flutter/material.dart';
import 'package:shelterapp/size_config.dart';
import 'package:shelterapp/app_style.dart';

class PageDetail extends StatelessWidget {
  const PageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kWHite,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 50,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/dog_cocoa.jpg",
                    height: SizeConfig.blockSizeVertical! * 60,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(42),
                          topRight: Radius.circular(42),
                        ),
                        color: kWHite,
                      ),
                    ),
                  ),
      
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.blockSizeVertical! * 8,
                        left: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
                            child: Icon(Icons.arrow_back),
                            onTap: () {
                              print("Clicked");
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
      
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
              ),
      
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Cocoa",
                      style: kSourceSansProBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal!*6,
                        color: kGrey,
                      ),),
                      Text("Banglore , IN",
                      style: kSourceSansProRegular.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal!*3,
                        color: kGrey,
                      ),),
                    ],
                  ),
                  Icon(Icons.favorite_border),
                ],
              ),
            ), 
      
            SizedBox(
              height: kPaddingHorizontal,
            ),
      
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: kLightOrange,
                    ),
                    width: SizeConfig.blockSizeHorizontal!*25,
                    child:Column(
                      children: [
                        Text("6 Months",
                        style: kSourceSansProBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal!*4,
                          color: kOrange,
                        ),),
                        Text("Age",
                        style: kSourceSansProRegular.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal!*3,
                          color: kGrey,
                        ),),
                      ],
                    ) ,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: kLightOrange,
                    ),
                    width: SizeConfig.blockSizeHorizontal!*25,
                    child:Column(
                      children: [
                        Text("6 KG",
                        style: kSourceSansProBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal!*4,
                          color: kOrange,
                        ),),
                        Text("Weight",
                        style: kSourceSansProRegular.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal!*3,
                          color: kGrey,
                        ),),
                      ],
                    ) ,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: kLightOrange,
                    ),
                    width: SizeConfig.blockSizeHorizontal!*25,
                    child:Column(
                      children: [
                        Text("Golden brown",
                        style: kSourceSansProBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal!*4,
                          color: kOrange,
                        ),),
                        Text("Colour",
                        style: kSourceSansProRegular.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal!*3,
                          color: kGrey,
                        ),),
                      ],
                    ) ,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
            padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
            child: Text("About me",
            style: kSourceSansProRegular.copyWith(
              fontSize: SizeConfig.blockSizeHorizontal!*4,
              color: kLightGreen,
            ),),
            ),
      
            SizedBox(height: 6,),
      
            Padding(
            padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
            child: Text("Shah Rukh Khan also known by the initialism SRK, is an Indian actor, film producer, and television personality who works in Hindi films. Referred to in the media as  he has appeared in more than 80 films, and earned numerous accolades, including 14 Filmfare Awards. He has been awarded the Padma Shri by the Government of India, as well as the Ordre des Arts et des Lettres and Legion of Honour by the Government of France. Khan has a significant following in Asia and the Indian diaspora worldwide. In terms of audience size and income, he has been described as one of the most successful film stars in the world.",
            style: kSourceSansProSemiBold.copyWith(
              fontSize: SizeConfig.blockSizeHorizontal!*4,
              color: kLightGreen,
            ),),
            ),
            SizedBox(height: 6,),
              Padding(
            padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
            child: Text("Photo album",
            style: kSourceSansProRegular.copyWith(
              fontSize: SizeConfig.blockSizeHorizontal!*4,
              color: kLightGreen,
            ),),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(image: AssetImage("assets/images/dog_cocoa.jpg"), )
                    ),
                    width: SizeConfig.blockSizeHorizontal!*25,
                    child: Image.asset("assets/images/dog_cocoa.jpg",
                    fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(image: AssetImage("assets/images/dog_cocoa.jpg"), )
                    ),
                    width: SizeConfig.blockSizeHorizontal!*25,
                    child: Image.asset("assets/images/dog_cocoa.jpg",
                    fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(image: AssetImage("assets/images/dog_cocoa.jpg"), )
                    ),
                    width: SizeConfig.blockSizeHorizontal!*25,
                    child: Image.asset("assets/images/dog_cocoa.jpg",
                    fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
