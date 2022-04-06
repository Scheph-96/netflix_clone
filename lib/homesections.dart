import 'package:flutter/material.dart';

class HomeSections extends StatelessWidget {
  const HomeSections({Key? key, required this.detail}) : super(key: key);

  final List detail;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView.builder(
        itemCount: detail.length,
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 15),
            height: 220,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    detail[index]["url"],
                    fit: BoxFit.cover,
                    height: 220,
                    width: 150,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 190, left: 10),
                  child: Text(
                    detail[index]["name"],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
