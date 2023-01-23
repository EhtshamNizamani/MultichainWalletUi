import 'package:flutter/material.dart';

import '../constants.dart';

class DappsScreen extends StatelessWidget {
  const DappsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/images/image 8.png',
      'assets/images/image 9.png',
      'assets/images/image 8.png',
      'assets/images/image 9.png',
      'assets/images/image 8.png',
    ];
    List<String> textList = [
      'Albitrum',
      'BSC',
      'Ethereum',
      'Exchange',
      'Finance',
      'Games',
      'Klaytn',
      'Marketplace',
      'News',
    ];
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: kPadding,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextFormField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(15),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: fontColor, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blue,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  suffixIcon: const Icon(
                    Icons.search_outlined,
                    color: fontColor,
                  ),
                  hintText: 'Search D Apps',
                  hintStyle: const TextStyle(color: fontColor)),
            ),
            const SizedBox(height: 25),
            customText('Popular', Colors.white, 18.0),
            const SizedBox(height: 25),
            SizedBox(
              height: 85,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ImageContainer(image: images[index]),
                        const SizedBox(height: 8),
                        const Text('Belti'),
                      ],
                    );
                  }),
            ),
            const SizedBox(height: 16),
            customText('Categories', Colors.white, 18.0),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                  itemCount: textList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      mainAxisExtent: 60),
                  itemBuilder: (context, index) {
                    return gridViewButton(textList[index], onTap: () {});
                  }),
            )
          ]),
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  final String image;
  const ImageContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: kBackgroundColor, borderRadius: BorderRadius.circular(10)),
      child: Image(image: AssetImage(image)),
    );
  }
}
