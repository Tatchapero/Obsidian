# Windows
## Setup OpenSCAD
1. Open https://openscad.org/downloads.html
2. Scroll down to **Development Snapshots**
3. Download **OpenSCAD-2024-10.28** exe installer
4. Run the installer
	1. If Microsoft Defender is preventing installation, then click on **More Info**
5. Proceed the installation
6. Open Start > Edit environment variables for your account > Environment variables > Double click `Path` in Systemvariables > Browse
7. Find your OpenSCAD installation folder (presumably `C:\Program Files\OpenSCAD (Nightly)`)
8. Open any terminal (cmd/Powershell)
9. Type `openscad -v`. 
10. If it returns `OpenSCAD version 2024.10.28`. then it means you have successfully installed OpenSCAD
11. Open Start > OpenSCAD (Nightly) app
12. Navigate to menu > Edit > Preferences > Advanced > 3D Rendering > Backend > Set value to `Manifold (new/fast)`

## Setup new Maven project
1. Open IntelliJ
2. File > New > Project
3. Fill:
   - Name: JavaCSG
   - Build system: Maven
   - JDK: 23 (Download JDK if 23 isn't available)
   - Add sample code: ✅
4. Run your Main.java program once
5. Find and open `pom.xml` in your project
6. Paste following codesnippet into your `pom.xml`, anywhere in between `<project>` and `</project>`
   
```xml
<repositories>
    <repository>
        <snapshots>
            <enabled>true</enabled>
            <updatePolicy>always</updatePolicy>
        </snapshots>
        <releases>
            <enabled>true</enabled>
            <updatePolicy>always</updatePolicy>
        </releases>
        <id>jitpack.io</id>
        <url>https://jitpack.io/</url>
    </repository>
</repositories>  

<dependencies>
    <dependency>
        <groupId>com.github.abstractica-org</groupId>
        <artifactId>JavaCSG</artifactId>
        <!--suppress MavenModelInspection -->
        <version>v0.3.0</version>
    </dependency>
</dependencies>
```

7. Double press `Shift` > Search for `Maven`
8. Select Maven
9. Click on `Reload All Maven Projects Incrementally` button (looks like this: 🔁)
10. Click on `Download Sources and/or Documentation` button (looks like this: 📥)
    ![[Pasted image 20241028134643.png]]
11. In your Main.java enter the following code snippet:

```java
public static void main(String[] args) {  
    JavaCSG csg = JavaCSGFactory.createDefault();  
    Geometry3D box = csg.box(10, 10, 10, false);
    csg.view(box);
}
```

12. Build and compile your Main method
13. Verify that a file has been generated in your project under JavaCSG > OpenSCAD > `View0.scad`
14. Open OpenSCAD app > File > Open file > Locate and select `View0.scad`
15. In OpenSCAD menu > Design > Enable "Automatic Reload and Preview" (this will update your model in OpenSCAD every time you Build and Compile your program in IntelliJ)

# iOS

🚧 Work in progress 🚧 👷‍♂️