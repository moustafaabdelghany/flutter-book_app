import 'package:book_app/constants/color.constant.dart';
import 'package:book_app/models/newbook_model.dart';
import 'package:book_app/models/popularbook_model.dart';
import 'package:book_app/screens/selected_book_screen.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:book_app/widgets/custom_tab_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 25,
                  top: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hi Moustafa',
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Discover Books',
                      style: GoogleFonts.openSans(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 39,
                margin: EdgeInsets.only(
                  left: 25,
                  right: 25,
                  top: 18,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey,
                ),
                child: Stack(
                  children: <Widget>[
                    TextField(
                      maxLengthEnforced: true,
                      style: GoogleFonts.openSans(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            left: 19,
                            right: 50,
                            bottom: 8,
                          ),
                          border: InputBorder.none,
                          hintText: 'searchbook ....',
                          hintStyle: GoogleFonts.openSans(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    Positioned(
                      right: 0,
                      child: SvgPicture.asset('assets/svg/background_search.svg'),
                    ),
                    Positioned(
                      top: 8,
                      right: 9,
                      child:
                          SvgPicture.asset('assets/icons/icon_search_white.svg'),
                    )
                  ],
                ),
              ),
              Container(
                height: 25,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.only(left: 25),
                child: DefaultTabController(
                  length: 3,
                  child: TabBar(
                      labelPadding: EdgeInsets.all(0),
                      indicatorPadding: EdgeInsets.all(0),
                      isScrollable: true,
                      labelColor: kBlackColor,
                      unselectedLabelColor: kGreyColor,
                      labelStyle: GoogleFonts.openSans(
                          fontSize: 14, fontWeight: FontWeight.w700),
                      unselectedLabelStyle: GoogleFonts.openSans(
                          fontSize: 14, fontWeight: FontWeight.w600),
                      indicator: RoundedRectangleTabIndicator(
                          weight: 2, width: 10, color: kBlackColor),
                      tabs: [
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 23),
                            child: Text('New'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 23),
                            child: Text('Trending'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 23),
                            child: Text('Best Seller'),
                          ),
                        )
                      ]),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 21,
                ),
                height: 210,
                child: ListView.builder(
                    padding: EdgeInsets.only(
                      left: 25,
                      right: 6,
                    ),
                    itemCount: newbooks.length,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                          right: 21,
                        ),
                        height: 210,
                        width: 153,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          //color: Colors.white10,
                          image: DecorationImage(
                            image: AssetImage(newbooks[index].image),
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 40,
                  top: 10,
                ),
                child: Text(
                  'popular',
                  style: GoogleFonts.openSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              ListView.builder(
                  padding: EdgeInsets.only(
                    top: 25,
                    right: 25,
                    left: 25,
                  ),
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: populars.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        print('listView Tapped');
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectedBookScreen(
                                    popularBookModel: populars[index])));
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 19),
                        height: 81,
                        width: MediaQuery.of(context).size.width - 50,
                        color: Colors.white60,
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 81,
                              width: 62,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage(populars[index].image),
                                  ),
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              width: 21,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(populars[index].title),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(populars[index].author),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(populars[index].copies),


                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
