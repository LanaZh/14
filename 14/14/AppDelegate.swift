//
//  AppDelegate.swift
//  14
//
//

import UIKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

   func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

       let tabBarVC = UITabBarController()
       
       let firstViewController = UIViewController()
       firstViewController.view.backgroundColor = .gray
       firstViewController.tabBarItem = UITabBarItem(title: "Поиск", image: .actions, tag: 3)
       let secondViewController = UIViewController()
       secondViewController.view.backgroundColor = .white
       secondViewController.tabBarItem = UITabBarItem(title: "Альбомы", image: .remove, tag: 2)
       let thirdViewController = UIViewController()
       thirdViewController.tabBarItem = UITabBarItem(title: "Медиатека", image: .add, tag: 0)
       thirdViewController.view.backgroundColor = .blue
       let fourViewController = UIViewController()
       fourViewController.tabBarItem = UITabBarItem(title: "Для Вас", image: .actions, tag: 1)
       thirdViewController.view.backgroundColor = .brown

       // navigation
       let secondNavController = UINavigationController(rootViewController: secondViewController)
    
       tabBarVC.setViewControllers([firstViewController, secondNavController, thirdViewController, fourViewController], animated: true)
       tabBarVC.tabBar.backgroundColor = .white

       window?.rootViewController = tabBarVC
       window?.makeKeyAndVisible()
       return true
   }
}


