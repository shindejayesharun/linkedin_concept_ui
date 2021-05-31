import 'package:flutter/material.dart';
import 'package:linkedin_concept_ui/constants.dart';
import 'package:linkedin_concept_ui/screens/home/components/post_view.dart';

import 'components/stories_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Image.asset(
          "assets/images/ic_linkedin.png",
          height: 24,
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.chat_outlined,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: Stack(
        children: [
          _backgroundShade(),
          Container(
            margin: const EdgeInsets.fromLTRB(8, 16, 8, 16),
            //padding: const EdgeInsets.symmetric(vertical: 8),
            height: MediaQuery.of(context).size.height / 1.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  StoriesView(),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return PostView();
                      })
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        mini: false,
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: kPrimaryColor,
        ),
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.home,
                color: Colors.white,
                size: 26,
              ),
              Icon(
                Icons.people_alt_outlined,
                color: Colors.white,
                size: 26,
              ),
              SizedBox(
                width: 26,
              ),
              Icon(
                Icons.notifications_none_outlined,
                color: Colors.white,
                size: 26,
              ),
              Icon(
                Icons.person_outline,
                color: Colors.white,
                size: 26,
              ),
            ],
          ),
        ),
        //notchedShape: CircularNotchedRectangle(),
        color: kPrimaryColor,
      ),
    );
  }
}

class _backgroundShade extends StatelessWidget {
  const _backgroundShade({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(24, 0, 24, 0),
      height: 60,
      width: double.infinity,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: new LinearGradient(
            colors: [
              const Color(0xff3983CF),
              const Color(0xff0966C5),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
    );
  }
}
