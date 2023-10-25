

import 'package:bilimlab_project_mobile/presentation/HomePages/HomePage.dart';
import 'package:bilimlab_project_mobile/presentation/StudyingPages/StudyingPage.dart';
import 'package:bilimlab_project_mobile/presentation/application.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation/CoursePages/CoursePage.dart';
import '../presentation/TestPages/TestPage.dart';
import '../presentation/UserPages/UserPage.dart';

class AppNavigation{
  AppNavigation._();

  static String initR = '/home';

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _rootNavigatorHome = GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  static final _rootNavigatorCourse = GlobalKey<NavigatorState>(debugLabel: 'shellCourse');
  static final _rootNavigatorStudying = GlobalKey<NavigatorState>(debugLabel: 'shellStudying');
  static final _rootNavigatorUser = GlobalKey<NavigatorState>(debugLabel: 'shellUser');
  static final _rootNavigatorTest = GlobalKey<NavigatorState>(debugLabel: 'shellTest');

  static final GoRouter router = GoRouter(
    initialLocation: initR,
    navigatorKey: _rootNavigatorKey,
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
          builder: (context , state, navigationShell){
            return Application(navigationShell: navigationShell,);
          },


          branches: <StatefulShellBranch>[

              StatefulShellBranch(
                navigatorKey: _rootNavigatorStudying,
                routes: [
                  GoRoute(
                      path: '/studying',
                      name: 'Studying',
                      builder: (context, state){
                        return StudyingPage(
                          key: state.pageKey,
                        );
                      }
                  ),
                ],
              ),

              StatefulShellBranch(
                navigatorKey: _rootNavigatorCourse,
                routes: [
                  GoRoute(
                      path: '/course',
                      name: 'Course',
                      builder: (context, state){
                        return CoursePage(
                          key: state.pageKey,
                        );
                      }
                  ),
                ],
              ),
              StatefulShellBranch(
              navigatorKey: _rootNavigatorHome,
              routes: [
                GoRoute(
                    path: '/home',
                    name: 'Home',
                    builder: (context, state){
                      return HomePage(
                        key: state.pageKey,
                      );
                    }
                ),
              ],
            ),

            StatefulShellBranch(
              navigatorKey: _rootNavigatorTest,
              routes: [
                GoRoute(
                    path: '/test',
                    name: 'Test',
                    builder: (context, state){
                      return TestPage(
                        key: state.pageKey,
                      );
                    }
                ),
              ],
            ),

            StatefulShellBranch(
              navigatorKey: _rootNavigatorUser,
              routes: [
                GoRoute(
                    path: '/user',
                    name: 'User',
                    builder: (context, state){
                      return UserPage(
                        key: state.pageKey,
                      );
                    }
                ),
              ],
            ),


          ]
      ),
    ],

  );
}