difference(){
    union(){
        // ПРЯМОУГОЛЬНОЕ ОСНОВАНИЕ
       color("gray") translate([0,0,10]) cube([120, 100, 20], center=true);


        // ТРАПЕЦИЯ
        bottom_width = 60;
        top_width = 30;
        height = 40;
        depth = 120;

        color("gray")
        translate([0, 0, 20])
            rotate([90, 0, 90])  
                linear_extrude(height=depth, center=true)
                    polygon(points=[[-bottom_width/2, 0],
                    [ bottom_width/2, 0],
                    [ top_width/2, height],
                    [-top_width/2, height]
                    ]);
        // ЦИЛИНДР
        translate([0, 0, 20]) color("gray") cylinder(h = 50, d = 80, $fn = 100);
    }
    
    // Смотровое отверстие с обеих сторон
    color("gray") 
    translate([-75, 0, 40]) 
        rotate([0, 90, 0])  
            cylinder(h=150, d=30, $fn = 100);
    
    // ОТВЕРСТИЕ В СЕРДЦЕ, ВИД СВЕРХУ
    translate([0, 0, -20])
        color("gray") 
            cylinder(h = 100, d = 60, $fn = 100); 
    
}



// color("cyan")















