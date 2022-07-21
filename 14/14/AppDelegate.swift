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

       self.window = UIWindow(frame: UIScreen.main.bounds)
       
       let firstViewController = UIViewController()
       let firstNavController = UINavigationController(rootViewController: firstViewController)
       let secondViewController = AlbomCollectionViewController()
       let secondNavController = UINavigationController(rootViewController: secondViewController)
       let thirdViewController = UIViewController()
       let thirdNavController = UINavigationController(rootViewController: thirdViewController)
       firstViewController.tabBarItem = UITabBarItem(title: "Главная", image: UIImage(systemName: "house"), tag: 1)
       secondViewController.tabBarItem = UITabBarItem(title: "Альбомы", image: UIImage(systemName: "photo"), tag: 2)
       thirdViewController.tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(systemName: "magnifyingglass"), tag: 3)
       
       let tabBarVC = UITabBarController()
       tabBarVC.setViewControllers([firstNavController, secondNavController, thirdNavController], animated: true)
       tabBarVC.tabBar.backgroundColor = .white

       window?.rootViewController = tabBarVC
       window?.makeKeyAndVisible()
       window?.backgroundColor = .white
       return true
   }
}


