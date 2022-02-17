// Andre Betz
// github@AndreBetz.de

use <threadlib.scad>;

RadialLang              = 57;
RadialBreit             = 32;
RadialTiefe             = 10;
Rand                    = 5;
AdapterHight            = 30;
AdapterD                = 20;

$fn=100;

difference()
{
    hull()
    {
        cube([RadialLang+Rand*2,RadialBreit+Rand*2,1],center = true);
        translate([0,0,AdapterHight])
                        cylinder(r=AdapterD/2,1);
    }
    hull()
    {
        translate([0,0,-1])    
            cube([RadialLang,RadialBreit,1],center = true);
        translate([0,0,AdapterHight+1])
                        cylinder(r=AdapterD/2-Rand,1);
    }
}
difference()
{
    cube([RadialLang+Rand*2,RadialBreit+Rand*2,RadialTiefe],center = true);
    cube([RadialLang,RadialBreit,RadialTiefe+2],center = true);
}
difference()
{
    translate([0,0,AdapterHight+1.0]) bolt("G1/2", 8);
    translate([0,0,AdapterHight-1])
        cylinder(r=AdapterD/3.3,30);
}
