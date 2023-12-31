import 'package:agarillc/core/contants/app_constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

///Here we are using Slivers for Boucny app bar features as task
///It is kind of a animated list incliuding appbar.
///we can add multiple slivers to the same page
///and Headers can be pinned in order to bettter view
/// multiple sliver lists are added into CustomerScolllView
@RoutePage()
class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: colors_constants.first,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Task 4'),
              background: Image.network(
                'https://aqarycrm.com/logo.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Center(child: Text('Item $index')),
                );
              },
              childCount: 999,
            ),
          ),
        ],
      ),
    );
  }
}
