# mmjiostemplates
* Universal App iOS templates without Storyboard or XIBs, with Launchscreen in all sizes. For Xcode 6.x
* It is well documented, so it could be a starting point for making your own Xcode 6.x iOS Project Template.

##What is it
* Basic Universal iOS Application template.
* It comes with AppDelegate, Prefix.pch, Info.plist and Localizable.strings.
* Also included are Images.xcassets with AppIcon and LaunchImage in all sizes.
* Sketch files for AppIcon and LaunchImage are included.

##Templates
Two templates are included:
###MMJ Base Universal iOS Application
* It has just basic files : AppDelegate, Prefix.pch, Info.plist and Localizable.strings.
* It includes Navigation Controller in AppDelegate.

###MMJ Token Universal iOS Application
* It has everything from "MMJ Base Universal iOS Application" template.
* Also includes a basic model class for Data Source pattern.
* BaseViewController.
* BaseView.
* BaseSubview is a main view class for embedabble ViewControllers. It has methods for determining it's size dynamically.
* BaseTableViewCell, BaseCollectionViewCell and BaseTableViewHeaderFooterView classes also have methods for determining their size dynamically
* Masonry is included in all classes that need Auto Layout, but commented.
* Podfile is included with my favourite Cocoapods. You may change it to your liking.


##How to install
* Copy the whole directory to:/Users/{your user name}/Library/Developer/Xcode/Templates/Project Templates

##Creating New project
* Choose "MMJ Base Universal iOS Application" or "MMJ Token Universal iOS Application" from the New Project dialog.
* Enter your "Product Name" and "Organization Name".
* After the project has been created, change the "Boundle Identifier".
* Replace my name and company from all comments at the top of each file. It will be fixed when I innline all the included files, as stated in the TODO item.

##Unit Tests
* I use Kiwi so I didn't include the test target's main .m file.
* You may do that by creating a new file and choosing "Test Case Class". 

##LaunchImages And AppIcon
* When you create the app with any of included templates, it comes with AppIcon and LaunchImage in all sizes, included in Images.xcassets. And they are all purple :)
* The purpose of this is to make the application occupy the whole screen of any iOS device, and that you may see it since the purple screen appears upon launching the app.
* In the top directory 2 Skecth files are included so that you may customize the screens and icons.
* Then just export the screens/icons and drag & drop them into appropriate locations in Images.xcassets. 



##TODO:
###MMJ Base Universal iOS Application
* Inline all included files, so that my name is not in the header/top comments.


###MMJ Token Universal iOS Application
* Make template with subgroups like Model/DataSource. (Can't figure out how to do it via "template" language).
* Move Localizable.strings into SupportingFiles group. (Similar as above).
