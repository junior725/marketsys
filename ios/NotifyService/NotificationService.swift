import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let userDefaults = UserDefaults(suiteName: "group.your.app.group.identifier")

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // ... (other code)

        // Observe a notificação para a mudança de ícone
        NotificationCenter.default.addObserver(self, selector: #selector(changeAppIcon(notification:)), name: Notification.Name("ChangeAppIconNotification"), object: nil)

        return true
    }

    @objc func changeAppIcon(notification: Notification) {
        // Altere o ícone do aplicativo
        changeAppIcon(to: "nome_do_icone_alternativo")
    }

    func changeAppIcon(to iconName: String?) {
        UIApplication.shared.setAlternateIconName(iconName, completionHandler: { error in
            if let error = error {
                print("Error changing app icon: \(error.localizedDescription)")
            } else {
                print("App icon changed to: \(iconName ?? "default")")
            }
        })
    }
}
