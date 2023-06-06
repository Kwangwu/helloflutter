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
        const Padding(
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
                    "홍길동님",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "국민내일배움카드",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
          child: const Padding(
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
                          "나의 카드",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 50, 50, 0.6)
                          ),
                        ),
                        Text(
                          "카드발급결정",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 130, 153, 1)
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.credit_card,
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
                          "나의 상담",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 50, 50, 0.6)
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "상담내역",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(0, 50, 50, 0.6)
                              ),
                            ),
                            Text(
                              "0건",
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
                      Icons.chat_outlined,
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
                          "나의 훈련",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 50, 50, 0.6)
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "훈련수료",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(0, 50, 50, 0.6)
                              ),
                            ),
                            Text(
                              "1건",
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
                      Icons.inventory_outlined,
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
                          "나의 관심(훈련)",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(0, 50, 50, 0.6)
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "관심훈련",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(0, 50, 50, 0.6)
                              ),
                            ),
                            Text(
                              "0건",
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
                      Icons.pending_actions_outlined,
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
              Icons.screen_search_desktop_outlined,
              size: 40,
            ),
            label: "과정검색",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 40,
            ),
            label: "나의 정보",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
              size: 40,
            ),
            label: "도움말",
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
      actions: const [
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