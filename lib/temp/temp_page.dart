import 'package:flutter/material.dart';

class TempPage extends StatefulWidget {
  const TempPage({Key? key}) : super(key: key);

  @override
  State<TempPage> createState() => _TempPageState();
}

class _TempPageState extends State<TempPage> {
  int bottomNavIndex = 2;

  final contents = [
        () => Container(
      color: Colors.green,
    ),
        () => Container(
      color: Colors.red,
    ),
        () => ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Row(
            children: [
              Icon(
                Icons.account_circle_outlined,
                size: 130,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "정광우님",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "프로필 변경",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(178, 204, 255, 0.7),
                width: 5,
              )),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 30,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "프로필 편집",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 50, 50, 0.6)
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.manage_accounts,
                      size: 80,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: Divider(),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "내 게시물",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 50, 50, 0.6)
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "게시물",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(0, 50, 50, 0.6)
                              ),
                            ),
                            Text(
                              "8건",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(0, 130, 153, 1)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.edit_calendar,
                      size: 80,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: Divider(),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Messenger",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 50, 50, 0.6)
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Messenger",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(0, 50, 50, 0.6)
                              ),
                            ),
                            Text(
                              "5건",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(0, 130, 153, 1)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.forum,
                      size: 80,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: Divider(),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "설정 및 개인보안",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 50, 50, 0.6)
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.admin_panel_settings,
                      size: 80,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
        () => Container(
      color: Colors.grey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavIndex,
        onTap: (index) {
          setState(() {
            bottomNavIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 40,
            ),
            label: "홈",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.supervisor_account,
              size: 40,
            ),
            label: "친구",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              size: 40,
            ),
            label: "나의 정보",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
              size: 40,
            ),
            label: "알림",
          ),
        ],
      ),
      body: SafeArea(
        child: contents[bottomNavIndex](),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0.5,
      backgroundColor: Colors.white,
      leading: const Padding(
        padding: EdgeInsets.only(left: 30),
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.black87,
          size: 35,
        ),
      ),
      title: const Center(
        child: Text(
          "나의정보",
          style: TextStyle(color: Colors.black87, fontSize: 25),
        ),
      ),
      actions: [
        Icon(
          Icons.search,
          color: Colors.black87,
          size: 35,
        ),
        Row(
          children: [
            Icon(
              Icons.menu,
              color: Colors.black87,
              size: 40,
            ),
            Text(
              "메뉴",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size(0, 20),
        child: Container(),
      ),
    );
  }
}