import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:mova/app/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: Scaffold(
        backgroundColor: kColorPrimary,
        body: Column(
          children: [
            Flexible(
                flex: 1,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/bg_header_home.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: SafeArea(
                        bottom: false,
                        child: Column(
                          children: [
                            Flexible(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset('assets/images/logo.png'),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.search,
                                          color: Colors.white,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.notifications_active,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const Spacer(
                              flex: 6,
                            ),
                            Flexible(
                                flex: 3,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dr. Strange 2',
                                      style: PrimaryFont.bold(24)
                                          .copyWith(color: Colors.white),
                                    ),
                                    Text(
                                      'Action, Superhero, Science Fiction, ...',
                                      style: PrimaryFont.normal(12).copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: kColorLinear),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.play_circle_fill,
                                                  color: Colors.white,
                                                  size: 13,
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  'Play',
                                                  style: PrimaryFont.normal(12)
                                                      .copyWith(
                                                          color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 12,
                                          ),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                                side: const BorderSide(
                                                  color: Colors.white,
                                                  width: 2,
                                                )),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                  size: 13,
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  'My List',
                                                  style: PrimaryFont.normal(12)
                                                      .copyWith(
                                                          color: Colors.white),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                            const Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            Flexible(
              flex: 1,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
