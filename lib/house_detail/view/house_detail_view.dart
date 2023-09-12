import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homely/constants/color_constants.dart';
import 'package:homely/home/home.dart';
import 'package:homely/utils/utils.dart';

class HouseDetailView extends StatelessWidget {
  const HouseDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedHouse = context.select(
      (HomeBloc bloc) => bloc.state.selectedHouse,
    )!;

    return Scaffold(
      body: SizedBox(
        height: context.screenHeight,
        width: context.screenWidth,
        child: Stack(
          children: [
            Hero(
              tag: selectedHouse.id,
              transitionOnUserGestures: true,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: CachedNetworkImage(
                  imageUrl: selectedHouse.image,
                  height: context.screenHeight / 2,
                  width: context.screenWidth,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: context.screenHeight / 1.8,
                width: context.screenWidth,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: context.screenWidth / 1.5,
                        child: Text(
                          selectedHouse.title,
                          style: context.textTheme.titleLarge!.copyWith(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        selectedHouse.location,
                        style: context.textTheme.bodyLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        selectedHouse.description,
                        style: context.textTheme.bodyLarge,
                        textAlign: TextAlign.justify,
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.separated(
                          itemCount: selectedHouse.amenities.length,
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 20),
                          itemBuilder: (context, index) {
                            return Chip(
                              backgroundColor: ColorConstants.offWhite,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              label: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0,
                                  vertical: 6.0,
                                ),
                                child: Text(
                                  selectedHouse.amenities[index],
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: context.screenHeight / 2.4,
              right: 30,
              child: GestureDetector(
                onTap: () {
                  context.read<HomeBloc>().add(
                        HomeSaveHouseEvent(
                          houseId: selectedHouse.id,
                          isSaved: selectedHouse.isSaved,
                          selectedHouse: selectedHouse,
                        ),
                      );
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: ColorConstants.offWhite,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      selectedHouse.isSaved
                          ? Icons.bookmark
                          : Icons.bookmark_border,
                    ),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              bottom: -context.screenHeight / 1.12,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          selectedHouse.cost,
                          style: context.textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Per month with Tax',
                          style: context.textTheme.bodySmall!
                              .copyWith(color: Colors.grey),
                        )
                      ],
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 80.0,
                          vertical: 10.0,
                        ),
                        child: Text(
                          'Book Now',
                          style: context.textTheme.titleMedium!.copyWith(
                            color: ColorConstants.offWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorConstants.offWhite.withOpacity(0.5),
                  ),
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 30,
                        sigmaY: 30,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                          top: 12,
                          bottom: 20,
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
