// Andre Betz
// github@AndreBetz.de

use <threadlib.scad>;

RadialLang              = 57;
RadialBreit             = 32;
RadialTiefe             = 10;
Rand                    = 10;
AdapterHight            = 30;
AdapterD           = 12;

$fn=100;

bolt("G1/2", 10);

/*
hull()
{
    difference()
    {
        cube([RadialLang+Rand*2,RadialBreit+Rand*2,RadialTiefe],center = true);
        cube([RadialLang,RadialBreit,RadialTiefe+2],center = true);
    } 
    translate([0,0,AdapterHight])
        difference()
        {
            cylinder(r=AdapterD/2,1);
            cylinder(r=AdapterD/2-Rand/2,1);
        }
}
*/