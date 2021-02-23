import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:book_app/constants/color.constant.dart';
import 'package:book_app/models/popularbook_model.dart';
import 'package:book_app/widgets/custom_tab_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectedBookScreen extends StatelessWidget {
  final PopularBookModel popularBookModel;

  SelectedBookScreen({Key key, @required this.popularBookModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
        height: 49,
        color: Colors.transparent,
        child: FlatButton(
          color: Colors.red[900],
          onPressed: () {},
          child: Text(
            'Add to Library',
            style: GoogleFonts.openSans(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: MediaQuery.of(context).size.height * 0.5,
                flexibleSpace: Container(
                  color: Color(popularBookModel.color),
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 25,
                        top: 35,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, "/homescreen");
                          },
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white60),
                            child: SvgPicture.asset(
                                'assets/icons/icon_back_arrow.svg'),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 62),
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(popularBookModel.image),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(top: 24, left: 25),
                  child: Text(
                    popularBookModel.title,
                    style: GoogleFonts.openSans(
                        fontSize: 27,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7, left: 25),
                  child: Text(
                    popularBookModel.author,
                    style: GoogleFonts.openSans(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 7, left: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '\L\E',
                          style: GoogleFonts.openSans(
                              fontSize: 14,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          popularBookModel.price,
                          style: GoogleFonts.openSans(
                              fontSize: 32,
                              color: Colors.green,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )),
                Container(
                  height: 28,
                  margin: EdgeInsets.only(top: 23, bottom: 36),
                  padding: EdgeInsets.only(left: 25),
                  child: DefaultTabController(
                    length: 3,
                    child: TabBar(
                        labelPadding: EdgeInsets.all(0),
                        indicatorPadding: EdgeInsets.all(0),
                        isScrollable: true,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.blueGrey,
                        labelStyle: GoogleFonts.openSans(
                            fontSize: 14, fontWeight: FontWeight.w700),
                        unselectedLabelStyle: GoogleFonts.openSans(
                            fontSize: 14, fontWeight: FontWeight.w600),
                        indicator: RoundedRectangleTabIndicator(
                            weight: 2, width: 30, color: Colors.black),
                        tabs: [
                          Tab(
                            child: Container(
                              margin: EdgeInsets.only(right: 39),
                              child: Text('Description'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              margin: EdgeInsets.only(right: 39),
                              child: Text('Reviews'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              margin: EdgeInsets.only(right: 39),
                              child: Text('Similar'),
                            ),
                          )
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                  child: Text(
                    popularBookModel.description,
                    style: GoogleFonts.openSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      letterSpacing: 1.5,
                      height: 2,
                    ),
                  ),
                )
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
