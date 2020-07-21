import 'package:flutter/material.dart';
import 'package:gcricket/footer-menu.dart';


class GameView extends StatefulWidget {
  @override
  _GameViewState createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {

  @override
  Widget build(BuildContext context) {

    //TODO: テスト用データ
    var grid = ["pic0", "pic1", "pic2", "pic3", "pic4", "pic5",];

    double height = MediaQuery.of(context).size.height;
    double playerHeight = height * 0.25;

    return Container(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(playerHeight),
          child: AppBar(
            title: Row(
              children: <Widget> [
                  Text('Player 1'),
                  Text('Player 2'),
              ],
            ),
          ),
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (BuildContext context, int index) {
              if (index >= grid.length) {
                grid.addAll(["pic0", "pic1", "pic2", "pic3", "pic4", "pic5",]);
              }
              return Card(
                child: InkResponse(
                    child: _photoItem(
                        grid[index]
                    ),
                  onTap: (){
                      print('tapped');
                  },
                ),
              );
            }
        ),
        bottomNavigationBar: FooterMenu(),
      ),
    );
  }
}

//TODO: テスト用
Widget _photoItem(String name) {
  return Container(
    child: Text(name),
  );
}