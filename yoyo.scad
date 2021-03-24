$fa = 1;
$fs = 0.4;

translate([0,0,0])

	// Hohlraum
	difference(){
		cylinder(h=20,r=32);
		union(){
			/* cylinder(h=10,r1=28, r2=16); */

			// Sechkant Aussparung fuer Mutter M5 8mm
			translate([0,0,0])
				cylinder(r=4.6, h=5, $fn=6);
		}
		// Schräge
		translate([0,0,10])
			difference(){
				cylinder(h=10,r=32);

				// Bohrung 5 mm
				difference(){
					cylinder(h=10,r1=32, r2=20);

				}
			}
		// Aussparung fuer Dichtring bzuw. Responsering
		translate([0,0,18.25])

			difference(){
				cylinder(h=1.75,r=10.12);
				difference(){
					cylinder(h=1.75,r=7.65);
					cylinder(h=1.75,r=6.4);
				}
			}
			translate([0,0,0]) cylinder(h=20, r=2.5);
	}

translate([0,0,18.25])
	difference(){
		cylinder(h=2.3,r=3.1);
		cylinder(h=2.3,r=2.5);
	}

translate([0,0,18.25])
	difference(){
		cylinder(h=0.8,r=4.1);
		cylinder(h=0.8,r=3.1);
	}
