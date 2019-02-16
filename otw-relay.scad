  boardX=200.66-149.86; // board width in mm
  boardY=158.34-69.443; // board length
  boardZ=0.062*25.4; // board thickness
  screwsX=195.58-154.94; // distance between screws
  screwsY=153.2636-74.5236; // distance between screws
  screwR=3.5/2; // radius of screwholes
  A=7.9;  // width of anderson powerpole plastic
  E=16.3; // height of two anderson powerpole plastics stacked
  C=24.7; // length of anderson powerpole plastic
difference() { // subtract from the first line everything below it
  color("purple") cube([boardX,boardY,boardZ],center=true);
  translate([screwsX/2,screwsY/2,-4]) cylinder(r=screwR,h=8,$fn=50);
  translate([screwsX/-2,screwsY/2,-4]) cylinder(r=screwR,h=8,$fn=50);
  translate([screwsX/-2,screwsY/-2,-4]) cylinder(r=screwR,h=8,$fn=50);
  translate([screwsX/2,screwsY/-2,-4]) cylinder(r=screwR,h=8,$fn=50);
  }
  translate([-1*A,boardY/-2+C/2,(E+boardZ)/2]) color("yellow") cube([A,C,E],center=true);
  translate([0,boardY/-2+C/2,(E+boardZ)/2]) color("green")  cube([A,C,E],center=true);
  translate([A,boardY/-2+C/2,(E+boardZ)/2]) color("blue")   cube([A,C,E],center=true);
