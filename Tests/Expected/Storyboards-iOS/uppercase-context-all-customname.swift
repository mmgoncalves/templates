// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable sorted_imports
import Foundation
import UIKit
import CustomSegue
import LocationPicker
import SlackTextViewController

// swiftlint:disable file_length

protocol StoryboardSceneType {
  static var storyboardName: String { get }
}

extension StoryboardSceneType {
  static func storyboard() -> UIStoryboard {
    return UIStoryboard(name: self.storyboardName, bundle: NSBundle(forClass: BundleToken.self))
  }

  static func initialViewController() -> UIViewController {
    guard let vc = storyboard().instantiateInitialViewController() else {
      fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
    }
    return vc
  }
}

extension StoryboardSceneType where Self: RawRepresentable, Self.RawValue == String {
  func viewController() -> UIViewController {
    return Self.storyboard().instantiateViewControllerWithIdentifier(self.rawValue)
  }
  static func viewController(identifier: Self) -> UIViewController {
    return identifier.viewController()
  }
}

protocol StoryboardSegueType: RawRepresentable { }

extension UIViewController {
  func performSegue<S: StoryboardSegueType where S.RawValue == String>(segue: S, sender: AnyObject? = nil) {
    performSegueWithIdentifier(segue.rawValue, sender: sender)
  }
}

// swiftlint:disable identifier_name
// swiftlint:disable line_length
// swiftlint:disable type_body_length
// swiftlint:disable type_name
enum XCTStoryboardsScene {
  enum AdditionalImport: String, StoryboardSceneType {
    static let storyboardName = "AdditionalImport"

    static func initialViewController() -> LocationPicker.LocationPickerViewController {
      guard let vc = storyboard().instantiateInitialViewController() as? LocationPicker.LocationPickerViewController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }

    case Public = "public"
    static func publicViewController() -> SlackTextViewController.SLKTextViewController {
      guard let vc = XCTStoryboardsScene.AdditionalImport.Public.viewController() as? SlackTextViewController.SLKTextViewController
      else {
        fatalError("ViewController 'public' is not of the expected class SlackTextViewController.SLKTextViewController.")
      }
      return vc
    }
  }
  enum Anonymous: StoryboardSceneType {
    static let storyboardName = "Anonymous"

    static func initialViewController() -> UINavigationController {
      guard let vc = storyboard().instantiateInitialViewController() as? UINavigationController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }
  }
  enum Dependency: String, StoryboardSceneType {
    static let storyboardName = "Dependency"

    case Dependent
    static func dependentViewController() -> UIViewController {
      return XCTStoryboardsScene.Dependency.Dependent.viewController()
    }
  }
  enum Message: String, StoryboardSceneType {
    static let storyboardName = "Message"

    case Composer
    static func composerViewController() -> UIViewController {
      return XCTStoryboardsScene.Message.Composer.viewController()
    }

    case MessagesList
    static func messagesListViewController() -> UITableViewController {
      guard let vc = XCTStoryboardsScene.Message.MessagesList.viewController() as? UITableViewController
      else {
        fatalError("ViewController 'MessagesList' is not of the expected class UITableViewController.")
      }
      return vc
    }

    case NavCtrl
    static func navCtrlViewController() -> UINavigationController {
      guard let vc = XCTStoryboardsScene.Message.NavCtrl.viewController() as? UINavigationController
      else {
        fatalError("ViewController 'NavCtrl' is not of the expected class UINavigationController.")
      }
      return vc
    }

    case URLChooser
    static func urlChooserViewController() -> XXPickerViewController {
      guard let vc = XCTStoryboardsScene.Message.URLChooser.viewController() as? XXPickerViewController
      else {
        fatalError("ViewController 'URLChooser' is not of the expected class XXPickerViewController.")
      }
      return vc
    }
  }
  enum Placeholder: String, StoryboardSceneType {
    static let storyboardName = "Placeholder"

    case Navigation
    static func navigationViewController() -> UINavigationController {
      guard let vc = XCTStoryboardsScene.Placeholder.Navigation.viewController() as? UINavigationController
      else {
        fatalError("ViewController 'Navigation' is not of the expected class UINavigationController.")
      }
      return vc
    }
  }
  enum Wizard: String, StoryboardSceneType {
    static let storyboardName = "Wizard"

    static func initialViewController() -> CreateAccViewController {
      guard let vc = storyboard().instantiateInitialViewController() as? CreateAccViewController else {
        fatalError("Failed to instantiate initialViewController for \(self.storyboardName)")
      }
      return vc
    }

    case Accept_CGU = "Accept-CGU"
    static func acceptCGUViewController() -> UIViewController {
      return XCTStoryboardsScene.Wizard.Accept_CGU.viewController()
    }

    case CreateAccount
    static func createAccountViewController() -> CreateAccViewController {
      guard let vc = XCTStoryboardsScene.Wizard.CreateAccount.viewController() as? CreateAccViewController
      else {
        fatalError("ViewController 'CreateAccount' is not of the expected class CreateAccViewController.")
      }
      return vc
    }

    case Preferences
    static func preferencesViewController() -> UITableViewController {
      guard let vc = XCTStoryboardsScene.Wizard.Preferences.viewController() as? UITableViewController
      else {
        fatalError("ViewController 'Preferences' is not of the expected class UITableViewController.")
      }
      return vc
    }

    case Validate_Password
    static func validatePasswordViewController() -> UIViewController {
      return XCTStoryboardsScene.Wizard.Validate_Password.viewController()
    }
  }
}

enum XCTStoryboardsSegue {
  enum AdditionalImport: String, StoryboardSegueType {
    case Private = "private"
  }
  enum Message: String, StoryboardSegueType {
    case CustomBack
    case Embed
    case NonCustom
    case Show_NavCtrl = "Show-NavCtrl"
  }
  enum Wizard: String, StoryboardSegueType {
    case ShowPassword
  }
}
// swiftlint:enable identifier_name
// swiftlint:enable line_length
// swiftlint:enable type_body_length
// swiftlint:enable type_name

private final class BundleToken {}
