# mmjiostemplates
Universal App iOS templates without Storyboard or XIBs, with Launchscreen in all sizes. For Xcode 6.x

##What is it
* Basic Universal iOS Application template.
* It comes with AppDelegate, Prefix.pch and Info.plist.
* Also included are Images.xcassets with AppIcon and LaunchImage in all sizes.
* Sketch files for AppIcon and LaunchImage are included.

##Templates
Two templates are included:
###MMJ Base Universal iOS Application
* It has just basic files : AppDelegate, Prefix.pch, Info.plist and Localizable.strings.

###MMJ Token Universal iOS Application
* It has everything from "MMJ Base Universal iOS Application" template.
* Also includes basic model class for Data Source pattern.
* BaseViewController.
* BaseView.
* BaseSubview is a main view class for embedabble ViewControllers. It has methods for determining it's size dynamically.
* BaseTableViewCell, BaseCollectionViewCell and BaseTableViewHeaderFooterView classes also have methods for determining their size dynamically
* Masonry is included in all classes that need Auto Layout, so "pod install" command needs to be run when the project is first created, and then switch to the workspace.



##How to install
* Copy the whole directory to:/Users/{your user name}/Library/Developer/Xcode/Templates/Project Templates
Project Templates

##Creating New project
* Choose "MMJ Base Universal iOS Application" or "MMJ Token Universal iOS Application" from the New Project dialog.
* Enter your "Product Name" and "Organization Name".
* After the project has been created, change the "Boundle Identifier".

##Unit Tests
* I use Kiwi so I didn't include the test target's main .m file.
* You may do that by creating a new file and choosing "Test Case Class". 


##TODO:
###MMJ Base Universal iOS Application
* Inline all included files, so that my name is not in the header.


###MMJ Token Universal iOS Application
* Make template with subgroups like Model/DataSource. (Can't figure out how to do it via "template" language).
* Move Localizable.strings into SupportingFiles group. (Similar as above).
* Include Podfile.
