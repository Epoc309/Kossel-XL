use <wheel.scad>
use <roundedBox.scad>


$fn=60;

extrudeWidth = 20.0 ;
wheelCenterExtrusionOffset = 8.4 ;   // Distance from wheel center to side of extrusion
wheelCentersDistance = (wheelCenterExtrusionOffset * 2 + extrudeWidth)/cos(30);
wheelOriginDistance = wheelCentersDistance/2/cos(30);

centerCircleRadius = 5.0;
wheelRadius = 10;
wheelThickness = 6;

m4ScrewRadius = 2.0; //for M4 bolt
m4ScrewHeadRadius = 4.0; 

m3ScrewRadius = 1.5; //for M3 bolt
m3ScrewHeadRadius = 3.0; 
m3NutRadius = 3.5; //

m2ScrewRadius = 1; 
cylinderMaxRadius = 7; // enough
cylinderMinRadius = 3;
cylinderHeight = 7.0;

carriageThickness = 9;

extrusionX = -wheelOriginDistance+wheelCenterExtrusionOffset; //leftSide
extrusionY = -40;
extrusionZ = -25;


ballSeperateDistance = 48.0;
ballScrewRadius = 2.0;
ballJointAngle = 30;
ballJointRadius = 5;
ballBaseRadius = 5;
wingThickness = 6;

beltWidth = 6.0;
beltThickness = 1.1;


module Yshape(){ //(1/2, 3.5)
	polygon([[2.5, 0.], [2.50761, 0.219387], [2.53036, 0.446171], [2.5685, 
  0.688227], [2.62446, 0.955226], [2.711, 1.26416], [3.03109, 
  1.75], [3.28377, 2.29932], [3.22283, 2.70428], [3.06948, 
  3.06948], [2.84794, 3.39404], [2.57124, 3.67211], [2.25, 
  3.89711], [1.89452, 4.06281], [1.51536, 4.16341], [1.12351, 
  4.19298], [0.730556, 4.14319], [0.349385, 3.99349], [0., 
  3.5], [-0.260705, 2.97987], [-0.484981, 2.75046], [-0.688227, 
  2.5685], [-0.878785, 2.41444], [-1.06381, 2.28134], [-1.25, 
  2.16506], [-1.4438, 2.06196], [-1.65158, 1.96827], [-1.88027, 
  1.88027], [-2.13948, 1.79524], [-2.45029, 1.71571], [-3.03109, 
  1.75], [-3.63315, 1.69417], [-3.95339, 1.43892], [-4.19298, 
  1.12351], [-4.36329, 0.769366], [-4.46576, 0.390703], [-4.5, 
  0.], [-4.46576, -0.390703], [-4.36329, -0.769366], [-4.19298, 
-1.12351], [-3.95339, -1.43892], [-3.63315, -1.69417], [-3.03109, 
-1.75], [-2.45029, -1.71571], [-2.13948, -1.79524], [-1.88027, 
-1.88027], [-1.65158, -1.96827], [-1.4438, -2.06196], [-1.25, 
-2.16506], [-1.06381, -2.28134], [-0.878785, -2.41444], [-0.688227, 
-2.5685], [-0.484981, -2.75046], [-0.260705, -2.97987], [0., -3.5], 
[0.349385, -3.99349], [0.730556, -4.14319], [1.12351, -4.19298], 
[1.51536, -4.16341], [1.89452, -4.06281], [2.25, -3.89711], [2.57124, 
-3.67211], [2.84794, -3.39404], [3.06948, -3.06948], [3.22283, 
-2.70428], [3.28377, -2.29932], [3.03109, -1.75], [2.711, -1.26416], 
[2.62446, -0.955226], [2.5685, -0.688227], [2.53036, -0.446171], 
[2.50761, -0.219387], [2.5, 0.]]);
}


module holderShape(){
polygon([[1., 0.], [1.31637, 0.115167], [1.46973, 0.259153], [1.38418, 
  0.370891], [1.10039, 0.400509], [0.75132, 0.350346], [0.491025, 
  0.283494], [0.415798, 0.291145], [0.519843, 0.4362], [0.707107, 
  0.707107], [0.849376, 1.01225], [0.856008, 1.22251], [0.716506, 
  1.24103], [0.49489, 1.0613], [0.283531, 0.778996], [0.146747, 
  0.547668], [0.0881431, 0.499885], [0.0591444, 0.676024], [0., 
  1.], [-0.115167, 1.31637], [-0.259153, 1.46973], [-0.370891, 
  1.38418], [-0.400509, 1.10039], [-0.350346, 0.75132], [-0.283494, 
  0.491025], [-0.291145, 0.415798], [-0.4362, 0.519843], [-0.707107, 
  0.707107], [-1.01225, 0.849376], [-1.22251, 0.856008], [-1.24103, 
  0.716506], [-1.0613, 0.49489], [-0.778996, 0.283531], [-0.547668, 
  0.146747], [-0.499885, 0.0881431], [-0.676024, 0.0591444], [-1., 
  0.], [-1.31637, -0.115167], [-1.46973, -0.259153], [-1.38418, 
-0.370891], [-1.10039, -0.400509], [-0.75132, -0.350346], [-0.491025, 
-0.283494], [-0.415798, -0.291145], [-0.519843, -0.4362], [-0.707107, 
-0.707107], [-0.849376, -1.01225], [-0.856008, -1.22251], [-0.716506, 
-1.24103], [-0.49489, -1.0613], [-0.283531, -0.778996], [-0.146747, 
-0.547668], [-0.0881431, -0.499885], [-0.0591444, -0.676024], [0., 
-1.], [0.115167, -1.31637], [0.259153, -1.46973], [0.370891, 
-1.38418], [0.400509, -1.10039], [0.350346, -0.75132], [0.283494, 
-0.491025], [0.291145, -0.415798], [0.4362, -0.519843], [0.707107, 
-0.707107], [1.01225, -0.849376], [1.22251, -0.856008], [1.24103, 
-0.716506], [1.0613, -0.49489], [0.778996, -0.283531], [0.547668, 
-0.146747], [0.499885, -0.0881431], [0.676024, -0.0591444], [1., 0.]]);
}

module wheelHolder(){
	difference(){
		hull(){
			translate([0,0,cylinderHeight]) cylinder(h=cylinderHeight+2, r=cylinderMaxRadius, center = true); 
			cylinder(h=cylinderHeight,r1=cylinderMinRadius,r2=cylinderMaxRadius, center=true);}
			//linear_extrude(height = cylinderHeight, center = true, convexity = 10, scale=5)  holderShape();}
		cylinder(h=cylinderHeight*2.8,r=m4ScrewRadius,center=true);
	}
}


sf = (wheelOriginDistance -wheelRadius/15 )/4.5;

echo(sf);



module YCarriage(){
	intersection(){
		union() {
			//hull() 
				scale([sf,sf,1]) linear_extrude(height = carriageThickness, center = true, convexity = 10, scale =[1,1.1])  Yshape();
			for (i=[0:2]){
				translate([wheelOriginDistance*cos(60+120*i),wheelOriginDistance*sin(60+120*i),-cylinderHeight-2]) wheelHolder();
				translate([wheelOriginDistance*cos(60+120*i), wheelOriginDistance*sin(60+120*i), -cylinderHeight*2]) 
					%wheel(wheelRadius, m4ScrewRadius, wheelThickness);}
		}
	translate([0,0,-63.5]) sphere (r=70,center=true, $fn=60);
	}
}

module beltPlate(){
	union(){
		translate([1,1,0]) roundedBox([extrudeWidth, extrudeWidth+2, wingThickness], 2.5, true);

	
		cylinder(r=beltWidth/2, h=beltWidth+wingThickness);
	
		cube([beltWidth/2, extrudeWidth/2+2, beltWidth + wingThickness]);

		translate([2.5, -8, carriageThickness-6]) 
			difference() {
				roundedBox([17, 4, beltWidth + wingThickness ], 1, true);
				translate([4,10,3]) rotate([90,0,0]) cylinder(r=m2ScrewRadius, h=30);
				translate([-6.5,10,3]) rotate([90,0,0]) cylinder(r=m2ScrewRadius, h=30);
			}
	
		//translate([-3, -6, carriageThickness-6]) 
		//	difference() {
		//		roundedBox([6, 4, beltWidth + wingThickness ], 1, true);
		//		translate([0,10,3]) rotate([90,0,0]) cylinder(r=m3ScrewRadius, h=30);
		//	}

		for (i = [1:2:11]) translate([0, i,0 ]) cylinder(r=beltThickness/2, h=beltWidth + wingThickness);

		hull(){
			translate([-beltWidth/2, beltWidth/2+beltThickness, wingThickness+beltWidth-1]) 
				cube([beltWidth/2-beltThickness, extrudeWidth/2 +2 - beltThickness - beltWidth/2, 1]);
	
			translate([-beltWidth/2-beltThickness, beltWidth/2+beltThickness, 0])
				cube([beltWidth/2 , extrudeWidth/2 + 2-beltThickness - beltWidth/2, 1]);
		}
	}
}

//module beltPlateBottom(){
//	difference(){
//		mirror([0,1,0]) translate([0, 14, 0]) beltPlate();
		//translate([9,-18,0]) roundedBox([8, 20, wingThickness + 1], 1, true);
		//translate([-9, -18, 0]) roundedBox([6, 30, 40], 1, true);
//	}
//}



module beltPlateBottom(){
	mirror([0,1,0]){
	union(){
		translate([-0.5,1,0]) roundedBox([extrudeWidth/2+1, extrudeWidth+2, wingThickness], 1.5, true);

	
		cylinder(r=beltWidth/2, h=beltWidth+wingThickness);
	
		cube([beltWidth/2, extrudeWidth/2+2, beltWidth + wingThickness]);

		translate([2.5, -8, carriageThickness-6]) 
			difference() {
				roundedBox([17, 4, beltWidth + wingThickness ], 1, true);
				translate([4,10,3]) rotate([90,0,0]) cylinder(r=m2ScrewRadius, h=30);
				translate([-6.5,10,3]) rotate([90,0,0]) cylinder(r=m2ScrewRadius, h=30);
			}
	
		//translate([-3, -6, carriageThickness-6]) 
		//	difference() {
		//		roundedBox([6, 4, beltWidth + wingThickness ], 1, true);
		//		translate([0,10,3]) rotate([90,0,0]) cylinder(r=m3ScrewRadius, h=30);
		//	}

		for (i = [1:2:11]) translate([0, i,0 ]) cylinder(r=beltThickness/2, h=beltWidth + wingThickness);

		hull(){
			translate([-beltWidth/2, beltWidth/2+beltThickness, wingThickness+beltWidth-1]) 
				cube([beltWidth/2-beltThickness, extrudeWidth/2 +2 - beltThickness - beltWidth/2, 1]);
	
			translate([-beltWidth/2-beltThickness, beltWidth/2+beltThickness, 0])
				cube([beltWidth/2 , extrudeWidth/2 + 2-beltThickness - beltWidth/2, 1]);
		}
	}}
}


module wing(){
	difference(){
		union(){
			hull(){
				translate([ballSeperateDistance/2, 0, 0]) rotate([ballJointAngle, 0, 0])
					translate([0, 0, 1.2*wingThickness])
						cylinder(r=ballBaseRadius, h=5.7);

				translate([ballSeperateDistance/2, 0, 0]) 
					roundedBox([2*(ballBaseRadius+1), 2*(ballBaseRadius+1), wingThickness], 2.5, true);	
				}

			hull(){
				translate([-ballSeperateDistance/2, 0, 0]) rotate([ballJointAngle, 0, 0])
					translate([0, 0, 1.2*wingThickness])
						cylinder(r=ballBaseRadius, h=5.7);

				translate([-ballSeperateDistance/2, 0, 0]) 
					roundedBox([2*(ballBaseRadius+1), 2*(ballBaseRadius+1), wingThickness], 2.5, true);	
			}
	
			roundedBox([ballSeperateDistance, 2 * ballBaseRadius+1, wingThickness], 2.5, true);

			//translate([5,0,0]) roundedBox([extrudeWidth, extrudeWidth, wingThickness], 2.5, true);
			translate([-extrusionX-extrudeWidth/2,0,0]) beltPlate();

			//translate([-extrusionX-extrudeWidth/2,0,0]) mirror([0,1,0]) translate([0, 11, 0]) beltPlate();
		}
		translate([ballSeperateDistance/2, 0, 0]) rotate([ballJointAngle, 0, 0])
					translate([0, 0, -1.2*wingThickness])
					{
						cylinder(h=50, r=ballScrewRadius);
						translate([0,0,24]) sphere(r=ballJointRadius, center=true);
						translate([0,0,0]) cylinder(h=15, r=m4ScrewHeadRadius);
					}	
		translate([-ballSeperateDistance/2, 0, 0]) rotate([ballJointAngle, 0, 0])
					translate([0, 0, -1.2*wingThickness])
					{
						cylinder(h=50, r=ballScrewRadius);
						translate([0,0,24]) sphere(r=ballJointRadius, center=true);
						translate([0,0,0]) cylinder(h=15, r=m4ScrewHeadRadius);
					}	
		translate([1.5, 0.5 ,-1]) rotate([-90,0,0]) cylinder(h = 30,r=m3ScrewRadius);
	}
}


module wingWithScrewHoles(rr){
difference(){

	color([1,0,0,1]) 
		translate([extrusionX+10, 0, carriageThickness-1.5]) wing();

	for (i=[60:120:240]) translate([rr*cos(i)+1.5, rr*sin(i),-40]) cylinder(r=m3ScrewRadius, h=100);
	for (i=[60:120:240]) translate([rr*cos(i)+1.5, rr*sin(i), wingThickness + carriageThickness/2 - 3.0]) cylinder(r=m3ScrewHeadRadius, h=3.0+10);
	}
}

	
module YCarriageWithScrewHoles(rr){
	difference(){
		YCarriage();
		for (i=[60:120:240]) translate([rr*cos(i)+1.5, rr*sin(i),-40]) cylinder(r=m3ScrewRadius, h=100);
		for (i=[60:120:240]) translate([rr*cos(i)+1.5, rr*sin(i),-carriageThickness/2]) cylinder(r=m3NutRadius, h=3, $fn=6);
	}
}


wingWithScrewHoles(9);

YCarriageWithScrewHoles(9);

color([0.5,0.5,0.5])translate([10-extrudeWidth/2,-25, carriageThickness -1.5 ]) beltPlateBottom();

% translate([extrusionX, extrusionY, extrusionZ]) cube([20,80,20]);
