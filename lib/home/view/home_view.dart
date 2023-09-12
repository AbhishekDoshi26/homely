import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homely/constants/color_constants.dart';
import 'package:homely/gen/assets.gen.dart';
import 'package:homely/home/home.dart';
import 'package:homely/house_detail/house_detail.dart';
import 'package:homely/utils/utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Container(
          decoration: const BoxDecoration(
            color: ColorConstants.offWhite,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              Assets.menu.path,
              height: 18,
            ),
          ),
        ),
        actions: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(241, 241, 241, 1),
              shape: BoxShape.circle,
            ),
            child: const Padding(
              padding: EdgeInsets.all(12.0),
              child: Icon(
                CupertinoIcons.search,
              ),
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: _HomeBody(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  _HomeBody();
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final selectedTag = context.select((HomeBloc bloc) => bloc.state.tag);
    final houseModel = context.select((HomeBloc bloc) => bloc.state.houseModel);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Text(
            'Find The\nPerfect Home',
            style: context.textTheme.headlineLarge!.copyWith(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text('Discover the best home for you'),
          const SizedBox(height: 60),
          _HomeTags(
            onTap: () {
              controller.animateTo(
                0,
                duration: const Duration(microseconds: 1),
                curve: Curves.linear,
              );
            },
          ),
          const SizedBox(height: 40),
          _HomeData(
            houseModel: houseModel
                .where((element) => element.tag == selectedTag)
                .toList(),
            controller: controller,
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

class _HomeData extends StatelessWidget {
  const _HomeData({
    required this.houseModel,
    required this.controller,
  });

  final List<HouseModel> houseModel;
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: houseModel.length,
        controller: controller,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 20);
        },
        itemBuilder: (context, index) {
          final house = houseModel[index];
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            width: context.screenWidth / 1.2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Stack(
                children: [
                  Hero(
                    tag: house.id,
                    transitionOnUserGestures: true,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: CachedNetworkImage(
                        imageUrl: house.image,
                        fit: BoxFit.cover,
                        height: context.screenHeight,
                        width: context.screenWidth,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.35),
                    height: context.screenHeight,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      house.title.replaceAll(' ', '\n'),
                      style: context.textTheme.titleLarge!.copyWith(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 50,
                    top: 140,
                    child: Text(
                      house.cost,
                      style: context.textTheme.titleLarge!.copyWith(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    top: context.screenHeight / 3,
                    left: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            context.read<HomeBloc>().add(
                                  HomeViewHomeRequestedEvent(houseModel: house),
                                );
                            context.push(BlocProvider.value(
                              value: context.read<HomeBloc>(),
                              child: const HouseDetailPage(),
                            ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorConstants.offWhite,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 40.0,
                                vertical: 10.0,
                              ),
                              child: Text(
                                'View Home',
                                style: context.textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            context.read<HomeBloc>().add(
                                  HomeSaveHouseEvent(
                                    houseId: house.id,
                                    isSaved: house.isSaved,
                                  ),
                                );
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              color: ColorConstants.offWhite,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 40.0,
                                vertical: 10.0,
                              ),
                              child: Icon(
                                house.isSaved
                                    ? Icons.bookmark
                                    : Icons.bookmark_border,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _HomeTags extends StatelessWidget {
  const _HomeTags({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _IndividualTag(tag: HouseTag.recent, onTap: onTap),
        _IndividualTag(tag: HouseTag.popular, onTap: onTap),
        _IndividualTag(tag: HouseTag.bestseller, onTap: onTap),
      ],
    );
  }
}

class _IndividualTag extends StatelessWidget {
  const _IndividualTag({
    required this.tag,
    required this.onTap,
  });

  final HouseTag tag;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final selectedTag = context.select((HomeBloc bloc) => bloc.state.tag);
    final isSelected = selectedTag == tag;

    return GestureDetector(
      onTap: () {
        onTap();
        context.read<HomeBloc>().add(HomeTagClickedEvent(status: tag));
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : ColorConstants.offWhite,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Text(
            tag.name[0].toUpperCase() + tag.name.substring(1),
            style: TextStyle(
              color: isSelected ? ColorConstants.offWhite : Colors.black,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
