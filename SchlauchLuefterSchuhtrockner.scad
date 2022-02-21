// Andre Betz
// github@AndreBetz.de

use <threadlib.scad>;

SchuhtrocknerD          = 43;
SchuhtrocknerHg         = 40;
SchuhtrocknerH1         = 21;
SchuhtrocknerH2         = 15; 
Rand                    = 3;

AdapterD                = 13;

$fn=100;

HoeheGesamt = SchuhtrocknerH1 + SchuhtrocknerH2;
difference()
{
    cylinder(HoeheGesamt,SchuhtrocknerD/2+Rand,SchuhtrocknerD/2+Rand);
    translate([0,0,-1])
        cylinder(HoeheGesamt+2,SchuhtrocknerD/2-1,SchuhtrocknerD/2-1);
}

HoeheZylinder = SchuhtrocknerHg - SchuhtrocknerH1;
translate([0,0,HoeheGesamt])
{
    difference()
    {
        cylinder(HoeheZylinder,SchuhtrocknerD/2+Rand,AdapterD/2+Rand);
        translate([0,0,-1]) 
            cylinder(HoeheZylinder-Rand,SchuhtrocknerD/2,AdapterD/2);
        translate([0,0,-1])
            cylinder(r=AdapterD/2.2,30);    
    }
}

BoltHoehe = SchuhtrocknerH2 + SchuhtrocknerHg;
translate([0,0,BoltHoehe])
{
    difference()
    {
        translate([0,0,1.0]) 
            bolt("G1/2", 8);
        translate([0,0,-1])
            cylinder(r=AdapterD/2.2,30);
    }
}
