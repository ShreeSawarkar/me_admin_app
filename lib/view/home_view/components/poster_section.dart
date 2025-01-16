import '../../../core/data/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../utility/app_data.dart';

class PosterSection extends StatelessWidget {
  const PosterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Consumer<DataProvider>(
        builder: (context, dataProvider, child) {
          return ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 20),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: dataProvider.posters.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  width: 370,
                  decoration: BoxDecoration(
                    color: AppData.randomPosterBgColors[index],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 150,
                              height: 50,
                              alignment: Alignment.centerLeft,
                              child:  Text(
                                '${dataProvider.posters[index].posterName}',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(color: Colors.white),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 0,
                                padding:
                                const EdgeInsets.symmetric(horizontal: 18),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                              child: const Text(
                                "Get Now",
                                style: TextStyle(color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.network(
                            '${dataProvider.posters[index].imageUrl}',
                            height: 120,
                            fit: BoxFit.cover,
                            loadingBuilder: (BuildContext context, Widget child,
                                ImageChunkEvent? loadingProgress) {
                              print('Name :$dataProvider.posters[index].posterName');
                             print( dataProvider.posters[index].imageUrl);
                              if (loadingProgress == null) return child;
                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                      null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                      : null, // Progress indicator.
                                ),
                              );
                            },
                            errorBuilder: (BuildContext context,
                                Object exception, StackTrace? stackTrace) {
                              return const Icon(Icons.error, color: Colors.red);
                            },
                          )),
                      const Spacer(),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
