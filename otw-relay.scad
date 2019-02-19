  boardX=200.66-149.86; // board width in mm
  boardY=158.34-69.443; // board length
  boardZ=0.062*25.4; // board thickness
  screwsX=195.58-154.94; // distance between screws
  screwsY=153.2636-74.5236; // distance between screws
  screwR=3.5/2; // radius of screwholes
  relayX=29; // relay width in mm
  relayY=12.5; // relay thickness
  relayZ=15.7; // relay height
  relayXoffset=165.862+11.5-(149.86+boardX/2); // 
  relayYoffset=-1*(96.266+3.75-(69.443+boardY/2)); // 
  capacitorXoffset=157.5-(149.86+boardX/2); // 
  capacitorYoffset=-1*(97.5+1.75-(69.443+boardY/2)); // 
  capacitorZ=11.5;
  capacitorR=8/2;
  A=7.9;  // width of anderson powerpole plastic
  E=16.3; // height of two anderson powerpole plastics stacked
  C=24.7; // length of anderson powerpole plastic
difference() { // subtract from the first line everything below it
  color("purple") cube([boardX,boardY,boardZ],center=true);
  translate([screwsX/2,screwsY/2,0]) cylinder(r=screwR,h=8,$fn=50,center=true);
  translate([screwsX/-2,screwsY/2,0]) cylinder(r=screwR,h=8,$fn=50,center=true);
  translate([screwsX/-2,screwsY/-2,0]) cylinder(r=screwR,h=8,$fn=50,center=true);
  translate([screwsX/2,screwsY/-2,0]) cylinder(r=screwR,h=8,$fn=50,center=true);
  }
  translate([-1*A,boardY/-2+C/2,(E+boardZ)/2]) color("yellow") cube([A,C,E],center=true);
  translate([0,boardY/-2+C/2,(E+boardZ)/2]) color("green")  cube([A,C,E],center=true);
  translate([A,boardY/-2+C/2,(E+boardZ)/2]) color("blue")   cube([A,C,E],center=true);
  translate([relayXoffset,relayYoffset,(relayZ+boardZ)/2]) color("grey") cube([relayX,relayY,relayZ],center=true);
  translate([capacitorXoffset,capacitorYoffset,(capacitorZ+boardZ)/2]) color("blue") cylinder(r=capacitorR,h=capacitorZ,$fn=50,center=true); // capacitor
