# mmjiostemplates
Universal App iOS templates without Storyboard or XIBs, with Launchscreen in all sizes. For Xcode 6.x

##What is it
* Basic Universal iOS Application template.
* It comes with AppDelegate, Prefix.pch and Info.plist.
* Also included are Images.xcassets with AppIcon and LaunchImage in all sizes.
* Sketch files for AppIcon and LaunchImage are included.

##How to install
* Copy the whole directory to:/Users/{your user name}/Library/Developer/Xcode/Templates/Project Templates
Project Templates

##Creating New project
* Choose "MMJ Base Universal iOS Application" from the New Project dialog.
* Enter your "Product Name" and "Organization Name".
* After the project has been created, change the "Boundle Identifier".

##Unit Tests
* I use Kiwi so i didn't include the test target's main .m file.
* You may do that by creating a new file and choosing "Test Case Class". 


##TODO:
* Inline AppDelegate to not include may name in the header.
* Inline Prefix.pch.
* Inline Info.plist.
* Add options for choosing Application type: (iPhone, iPad, Universal).
* Add option to include Podfile.
