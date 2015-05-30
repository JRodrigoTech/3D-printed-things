//////////////////////////////////////////
//    Anti-warping_Disks.scad created   //
//   by J.Rodrigo ( www.jrodrigo.net )  //
//      Under licence (CC) BY-SA        //
//////////////////////////////////////////

// First Layer Height
LayerHeight = 0.24 ; // mm

// Number of layers with anti-warping
NoLayers    = 2 ;    // mm

// Diameter of anti-warping circumference
Diameter    = 15  ;  // mm

// Length (for make an oval)(0 to disable)
Length = 0 ;   // mm

color("DodgerBlue"){
    hull(){
        translate([-Length/2,0,0])
        cylinder(h=LayerHeight*NoLayers,r=Diameter/2);
        translate([Length/2,0,0])
        cylinder(h=LayerHeight*NoLayers,r=Diameter/2);
    }
}