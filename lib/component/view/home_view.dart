import 'package:flutter/material.dart';
import 'package:notes_app/component/utils/color.dart';
import 'package:notes_app/component/widget/drawer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool displayCardForTakingNotes = false;
  String selectedPriorityValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colorss.backgroundColor,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Keep",
              style: TextStyle(
                fontFamily: "black",
                fontSize: 18,
                color: Colors.white
              ),
            ),
            SizedBox(width: 50,),
            IconButton(
                onPressed: () {
                },
                icon: Icon(
                    Icons.search_rounded,
                  color: Colors.white,
                )
            ),
            IconButton(
                onPressed: () {

                },
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                )
            ),
            CircleAvatar(

            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 30
        ),
      ),
      drawer: AppDrawer(),
      backgroundColor: Colorss.backgroundColor,
      body: bodyPartOfNotes(),
    );
  }

  Widget bodyPartOfNotes() {
    return Column(
      children: [
        Divider(color: Colors.blueGrey.shade500,),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: displayCardForTakingNotes ? noteTakingCard() : takeNoteCard()
        )
      ],
    );
  }

  Widget noteTakingCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colorss.backgroundColor,
        border: Border.all(
          color: Colors.grey,
          width: 2
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Title",
                hintStyle: TextStyle(
                  fontFamily: "semiBold",
                  fontSize: 17,
                  color: Colors.grey
                )
                ),
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "regular"
              ),
              ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Take a note...",
                  hintStyle: TextStyle(
                      fontFamily: "semiBold",
                      fontSize: 17,
                      color: Colors.grey
                  )
              ),
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "regular"
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Add lable",
                  hintStyle: TextStyle(
                      fontFamily: "semiBold",
                      fontSize: 17,
                      color: Colors.grey
                  )
              ),
              style: TextStyle(
                color: Colors.white,
                fontFamily: "regular"
              ),
            ),
            SizedBox(height: 10),
            Text(
                "Add Priority",
              style: TextStyle(
                fontFamily: "black",
                fontSize: 17,
                color: Colors.white
              ),
            ),
            Row(
              children: [
                Text(
                    "High",
                  style: TextStyle(
                    fontFamily: "semiBold",
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
                Radio(
                    value: "High",
                    groupValue: selectedPriorityValue,
                    onChanged: (value) {
                      setState(() {
                        selectedPriorityValue = value!;
                      });
                      }
                ),
              ],
            ),
            Row(
              children: [
                Text(
                    "Low",
                  style: TextStyle(
                    fontFamily: "semiBold",
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
                Radio(
                    value: "Low",
                    groupValue: selectedPriorityValue,
                    onChanged: (value) {
                      setState(() {
                        selectedPriorityValue = value!;
                      });
                    }
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        displayCardForTakingNotes = !displayCardForTakingNotes;
                      });
                    },
                    child: Text(
                      "Close",
                      style: TextStyle(
                        fontFamily: "semiBold",
                        fontSize: 17,
                        color: Colors.white
                      ),
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget takeNoteCard() {
    return GestureDetector(
      onTap: () {
        setState(() {
          displayCardForTakingNotes = !displayCardForTakingNotes;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colorss.backgroundColor,
            border: Border.all(
                color: Colors.grey,
                width: 2
            )
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 10,left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Take a note...",
                style: TextStyle(
                    fontFamily: "semiBold",
                    color: Colors.grey,
                    fontSize: 17
                ),
              ),
              IconButton(
                  onPressed: () {

                  },
                  icon: Icon(Icons.image,color: Colors.grey,)
              )
            ],
          ),
        ),
      ),
    );
  }
}
