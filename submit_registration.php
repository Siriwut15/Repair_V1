<?php
// ตรวจสอบว่ามีการส่งข้อมูลมาจากฟอร์มหรือไม่
//if ($_SERVER["username"] == "POST") {
// เชื่อมต่อกับฐานข้อมูล
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "repair_db";

// สร้างการเชื่อมต่อใหม่
$conn = new mysqli($servername, $username, $password, $dbname);

// ตรวจสอบการเชื่อมต่อ
if ($conn->connect_error) {
    die ("Connection failed: " . $conn->connect_error);
}

// รับค่าจากฟอร์ม
$username = $_POST['username'];
$email = $_POST['email'];
$password = $_POST['password'];
$tel = $_POST['tel'];

// เขียนคำสั่ง SQL เพื่อเพิ่มข้อมูลลงในฐานข้อมูล
$sql = "INSERT INTO tbl_login (username, u_email, password, u_tel) VALUES ('$username', '$email', '$password', '$tel')";

// ทำการเพิ่มข้อมูล
if ($conn->query($sql) === TRUE) {
    echo "บันทึกข้อมูลเรียบร้อยแล้ว";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// ปิดการเชื่อมต่อ
$conn->close();
//}
?>