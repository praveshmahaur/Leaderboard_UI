import 'package:flutter/material.dart';
import 'package:leaderboard/main.dart';
import 'package:leaderboard/model/user_model.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 18, 32, 65),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text(
          'Leaderboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: mq.height * 0.33,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.15),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: _buildTopPlayerWidget(
                          'William',
                          340,
                          '@username',
                          Colors.blue,
                          3,
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0, left: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(10)),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                    Color.fromRGBO(255, 235, 59, 0.3),
                                    Color.fromRGBO(255, 235, 59, 0.05)
                                  ],
                                ),
                              ),
                              height: mq.height * 0.23,
                              width: mq.width * 0.3,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 50.0, left: 22),
                            child: _buildTopPlayerWidget(
                              '',
                              null,
                              '',
                              Colors.amber,
                              1,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: _buildTopPlayerWidget(
                          'Smith',
                          340,
                          '@username',
                          Colors.green,
                          2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Column(
                  children: [
                    Container(
                      height: 48,
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          CircleAvatar(
                            radius: 13,
                            backgroundColor: Color.fromARGB(255, 44, 72, 137),
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: const Color(0xFF061539),
                              child: Text(
                                '${index + 4}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.yellow.shade300,
                                width: 1,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(user.avatar),
                            ),
                          ),
                          // const SizedBox(width: 4),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  user.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 2,),
                                Row(
                                  children: [
                                    Text(
                                      '${user.points}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'Points',
                                      style: TextStyle(
                                        color: Colors.amber[200],
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          user.isUp
                              ? Text(
                                  "▲",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 23,
                                  ),
                                )
                              : Text(
                                  "▼",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 23,
                                  ),
                                ),
                        ],
                      ),
                    ),
                    Divider(
                        height: 1, color: Color.fromRGBO(255, 255, 255, 0.3)),
                    SizedBox(height: 10),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 18, 32, 65),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey[400],
        unselectedItemColor: Colors.grey[400],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_esports),
            label: 'Match Machine',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.diamond), label: 'Vip'),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: 'Contact',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: 0,
        onTap: (index) {},
      ),
    );
  }

  Widget _buildTopPlayerWidget(
    String name,
    int? points,
    String username,
    Color borderColor,
    int position,
  ) {
    double avatarRadius = position == 1 ? 35 : 30;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: borderColor, width: 3),
              ),
              child: CircleAvatar(
                radius: avatarRadius,
                backgroundColor: Colors.transparent,
              ),
            ),
            if (position == 1)
              const Positioned(
                top: -17,
                child: Icon(
                  Icons.emoji_events,
                  color: Colors.amber,
                  size: 28,
                ),
              ),
            Positioned(
              bottom: -8,
              child: Transform.rotate(
                angle: -45 * (3.14 / 180),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: borderColor,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Transform.rotate(
                    angle: 45 * (3.14 / 180),
                    child: Text(
                      '$position',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        points != null
            ? Text(
                '$points',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
            : SizedBox(),
        Text(username, style: TextStyle(color: Colors.grey[400], fontSize: 12)),
      ],
    );
  }
}
