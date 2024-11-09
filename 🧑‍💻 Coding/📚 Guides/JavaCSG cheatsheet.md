```java
// Create a box / rectangle: 
Geometry3D box = csg.box3D(10, 10, 10, false); 

// Create a cylinder: 
Geometry3D cyl = csg.cylinder3D(10, 10, 64, false); 

// Create a flat ring: 
csg.flatRing3D(8, 12, 3, 64, false); 

// Create a sphere: 
csg.sphere3D(10, 64, false); 

// Union is used to 'glue' together shapes: 
Geometry3D shape2 = csg.union3D(box, cyl); 

// Difference is used to cut shapes, e.g. create a 'cyl'-shaped hole in a 'box': 
Geometry3D shape3 = csg.difference3D(box, cyl); 

// Intersection is used to cut shapes, leaving you with an object, 
// that is the intersection of the two shapes: 
Geometry3D shape4 = csg.intersection3D(box, cyl); 

// translate3D is used to move a shape: 
box = csg.translate3D(0, 0, 0).transform(box); 

// rotate3DX is used to rotate a shape around the X-axis: 
box = csg.rotate3DX(csg.degrees(45)).transform(box); 

// rotate3D is used to rotate a shape around the X, Y, Z axis: 
box = csg.rotate3D(csg.degrees(10), csg.degrees(20), csg.degrees(30)).transform(box); 

// scale3D is used to scale a shape: 
box = csg.scale3D(2, 2, 2).transform(box);
```

![[Pasted image 20241028135316.png]]