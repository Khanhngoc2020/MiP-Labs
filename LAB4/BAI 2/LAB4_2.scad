difference() {
    // --- PHẦN CHÍNH (union) ---
    union() {
        // Nền hình chữ nhật bo tròn 4 góc
        hull() {
            translate([50, 30, 0]) cylinder(h = 10, r = 10, $fn = 50);
            translate([-50, 30, 0]) cylinder(h = 10, r = 10, $fn = 50);
            translate([50, -30, 0]) cylinder(h = 10, r = 10, $fn = 50);
            translate([-50, -30, 0]) cylinder(h = 10, r = 10, $fn = 50);
        }

        // Vòm (cung tròn) màu đỏ phía trên
        intersection() {
            color("red")
            translate([0, 40, 0])
                rotate([90, 0, 0])
                    cylinder(h = 80, r = 44, $fn = 100);
            translate([-100, -100, 10])
                cube([200, 200, 100]);
        }

        // Hình trụ rỗng (ống)
        difference() {
            translate([0, 0, 0]) 
                cylinder(h = 60, r = 35, $fn = 100);  // vỏ ngoài
            translate([0, 0, 10])
                cylinder(h = 60, r = 25, $fn = 100);  // lỗ trong
        }
    }

    // --- PHẦN XOÁ (difference) ---

    // 1. Xoá hình trụ bên trong (xuyên toàn bộ)
    translate([0, 0, 0])
        cylinder(h = 200, r = 25, $fn = 100);

    // 2. Xoá cung phía trước bằng hình trụ ngang (không dùng intersection nữa)
    translate([0, 50, -1])  
        rotate([90, 0, 0])
            cylinder(h = 200, r = 30, $fn = 100);

    // 3. Xoá 4 lỗ bắt vít
    for (x = [-50, 50])
        for (y = [-30, 30])
            translate([x, y, -1])
                cylinder(h = 20, r = 5, $fn = 50);
}
