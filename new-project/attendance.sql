create table tbl_Department(
	iDepartmentID int auto_increment,
    sDepartmentName Varchar(45),
    primary key(iDepartmentID)
);

create table tbl_Staff(
	iStaffID int auto_increment,
    sStaffCode varchar(45),
    iDepartmentID int,
    sStaffFirstName varchar(50),
    sStaffLastName varchar(50),
    sStaffPhone varchar(100),
    sStaffAddress varchar(50),
    primary key(iStaffID),
    tbl_Department_iDepartmentID int,
	constraint fk_tbl_Department_iDepartmentID foreign key(iDepartmentID) references tbl_Department(iDepartmentID)
);

create table tbl_TimeAttendance(
	iTimeAttendance int,
    iStaffID int(11),
    dDateTimeIn datetime,
    dDateTimeOut datetime,
    primary key(iTimeAttendance),
    constraint fk_tbl_Staff_iStaffID foreign key(iStaffID) references tbl_Staff(iStaffID)
);
INSERT INTO tbl_Department(iDepartmentID, sDepartmentName)VALUES ('', 'Nhân Sự');
INSERT INTO tbl_Department(iDepartmentID, sDepartmentName)VALUES ('', 'Marketing');
INSERT INTO tbl_Department(iDepartmentID, sDepartmentName)VALUES ('', 'Tài chính Kế toán');
INSERT INTO tbl_Department(iDepartmentID, sDepartmentName)VALUES ('', 'Dịch vụ');
INSERT INTO tbl_Department(iDepartmentID, sDepartmentName)VALUES ('', 'Dự Án');
INSERT INTO tbl_Department(iDepartmentID, sDepartmentName)VALUES ('', 'Kỹ thuật');
INSERT INTO tbl_Department(iDepartmentID, sDepartmentName)VALUES ('', 'IT');
INSERT INTO tbl_Department(iDepartmentID, sDepartmentName)VALUES ('', 'Đào Tạo');
INSERT INTO tbl_Department(iDepartmentID, sDepartmentName)VALUES ('', 'Nhân Viên');

INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) 
VALUES (NULL, 'a', '1', 'Duy', 'Linh', '0933328663', '134/23 Nguyễn Thị Thập, quận 7');

INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'b1', '2', 'ha', 'hihiádasd', '9889432', 'bahbsiiabsansdo');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'b2', '2', 'haaa', 'hihiádasd', '99456132', 'bahbsiabsansdo');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'b3', '2', 'hdđa', 'hihiádas', '9456132', 'bahbsiabsdinsdo');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'b4', '2', 'hah123a', 'hihiádasd', '9889132', 'bahbsiabsdinsdo');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'b5', '2', 'ha41412ha', 'hihiádasd', '9886132', 'bahbsiabsdiabsao');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'b6', '2', 'haádasdha', 'hihiádasd', '99456132', 'bahbsiabsdiansdo');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'b7', '2', 'hahádasda', 'hihiádasd', '89456132', 'bahbsiabsdano');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'b8', '2', 'hahádasda', 'hihiádas', '98896132', 'bahbsiabsdiabnsdo');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'b9', '2', 'hahaádas', 'hihiadasd', '98856132', 'bahbsiabsdiabdo');

INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'c1', '3', 'iqwaaa', 'uhádasdasaj', '94819565', '222 HuynPhát, Quận 7');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'c2', '3', 'iqwaaadđ', 'uhasaádasdasdj', '9195165', '222 Hấn Phát, Quận 7');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'c3', '3', 'iqwádasd', 'uhasajádasd', '9481965', '222 Huynh Phát, Quận 7');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'c4', '3', 'iqweqádasd', 'uhasajádasd', '9481965', '222 Huynh Tt, Quận 7');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'c5', '3', 'iqweádasdasq', 'uhasajádasd', '9481165', '222 Huy Phát, Quận 7');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'c6', '3', 'iqweqádasdasd', 'uhasajádasda', '9485165', '222 Huynhát, Quận 7');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'c7', '3', 'iqweqadasdas', 'uhasajádasdasd', '9485165', '222 Phát, Quận 7');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'c8', '3', 'iqweqádasdasd', 'uhasajádasd', '948195', '222 Huát, Quận 7');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'c9', '3', 'iqweqádasdasd', 'uhasajádasd', '948165', '222 HPhát, Quận 7');

INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'd1', '4', 'Vân', 'A', '11213213', 'abc áaaaan');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'd2', '4', 'Vân', 'Ah', '11213', 'abc áaaaan');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'd3', '4', 'Vân', 'nh', '113213', 'abc áaaaan');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'd4', '4', 'Vân', 'Linh', '112213', 'abc áaaaan');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'd5', '4', 'Vân', 'Aoo', '11213', 'abc áaaaan');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'd6', '4', 'Vân', 'kkkh', '112213', 'abc áaaaan');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'd7', '4', 'Vân', 'Aaaah', '112213', 'abc áaaaan');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'd8', '4', 'Vân', 'aaah', '112133', 'abc áaaaan');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'd9', '4', 'Vân', 'Aqqqqh', '112213', 'abc áaaaan');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'd10', '4', 'Vân', 'qqqweh', '112213', 'abc áaaaan');

INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'e1', '5', 'Quang', 'Nhật', '11223213', 'aaaaaaaaadasdcaaaaaaa');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'e2', '5', 'ang', 'ádasdas', '11221113', 'aaaaaaaaádasdqwaaaaaaa');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'e3', '5', 'an', 'Nhádasdật', '112213', 'aaaaaaaaaaqưqwaaaaa');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'e4', '5', 'Qng', 'Nhádasật', '11223213', 'aaaaaaaaaaqưeqweaaaaa');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'e5', '5', 'anaaa', 'Nádashật', '11221123213', 'aaaaqưeqweaaaaaaaaaaa');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'e6', '5', 'Quádang', 'ádasd', '11223213', 'ưeqwe');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'e7', '5', 'Quaádasg', 'ádasd', '11223213', 'aaaaaaaaaaqưeqweaaaaa');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'e8', '5', 'Quaádasdng', 'ádasd', '112223213', 'qưeqw');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'e9', '5', 'Quanádasdg', 'ádasda', '112123213', 'aaaaaaaaqưeqwaaaaaaa');

INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'f1', '6', 'Thùy', 'An123', '113123123123', 'aloooaaasoooo');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'f2', '6', 'Thùy', 'An12312', '1123123', 'alooooádasooo');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'f3', '6', 'Thùy', 'Anaaa', '11323123', 'ádasdas');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'f4', '6', 'Thùy', 'Anddd', '11323123', 'alooooádasdooo');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'f5', '6', 'Thùy', 'Aaaaan', '113123123', 'alooooádasdooo');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'f6', '6', 'Thùy', 'Aádasdasn', '3123123', 'alooosdasdoooo');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'f7', '6', 'Thùy', 'Anaaa', '11312123', 'alooooooaaasdao');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'f8', '6', 'Thùy', 'Anaaaa', '113123', 'aloooooádasoo');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'f9', '6', 'Thùy', 'Ancccc', '11323123', 'aloooooádasdoo');

INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'g1', '7', 'Yeah111', 'Manádas', '1133123123', 'yyyyyyyyyádasdasdyyyyyyy');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'g2', '7', 'Yeah12123', 'Maádasdn', '11333', 'yyyyyádasdasdyyyy');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'g3', '7', 'Yeahaaa', 'Maádasdn', '1133123123', 'yyyyyyyyádasdasdyyyyyyyy');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'g4', '7', 'Yeahádsdas', 'Maádasdn', '11333', 'yyyyyyyyyyyyyyđâsdasdasyy');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'g5', '7', 'Yeahádasd', 'Maádasdn', '11331231233', 'yyyyyyyyyyádasdyyyyyy');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'g6', '7', 'Yeaádasdh', 'Mádasdan', '11333', 'yyyyyyyyyyyádasdyyyyy');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'g7', '7', 'Yeaádasdasdh', 'Manadasd', '11312312333', 'yyádyyyyádasdasyyyyyyyyyy');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'g8', '7', 'Yeaádasdh', 'Maádasdadn', '11333', 'yyyyyyyyyyádasdasdyyyyyy');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'g9', '7', 'Yeahádasd', 'Manadasd', '1133312312', 'yyyyyyyyyyádasdasyyyyyy');

INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'h1', '8', 'Linhhh', 'quan11g', '1891981921', 'qiuwyyiqw');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'h2', '8', 'Linhaaa', 'quanqqqg', '1891981921', 'qưyqwieqiuádwyyiqw');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'h3', '8', 'Linádasasdh', 'quaddddng', '1891981921', 'qưyqádasdwieqiuwyyiqw');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'h4', '8', 'Linádddddh', 'quassssssng', '1891981921', 'qưyqwiádasdeqiuwyyiqw');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'h5', '8', 'Linhdddđf', 'quaaaaang', '1891981921', 'qưyqwieqiuadasdwyyiqw');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'h6', '8', 'Liffffffffffffnh', 'qsssssuang', '1891981921', 'ádasdasd');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'h7', '8', 'Lixxnh', 'quadddng', '1891981921', 'qưyqwieqádasdiuwyyiqw');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'h8', '8', 'Liddđnh', 'quavvvvng', '1891981921', 'qưyqwieqiuwyyiqw');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'h9', '8', 'Linxxxxxxh', 'qubbbang', '1891981921', 'qưyqwieqiuwyyiqw');

INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'j1', '9', 'qqaaaqqqq', 'aaaaqqqqa', '5378888', '1quwhqehqoweh1 13u1293u9');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'j2', '9', 'qqqqádasdqq', 'aaqưeqweaaa', '5378888', '1quwhqehqoweh1 13u1293u9');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'j3', '9', 'qqqqqádasdq', 'aaaqưerdaa', '5378888', '1quwhqehqoweh1 13u1293u9');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'j4', '9', 'qqqqádasdqq', 'aaaqưeqweaa', '5378888', '1quwhqehqoweh1 13u1293u9');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'j5', '9', 'qqqqádasdqq', 'aaqưeqweaaa', '5378888', '1quwhqehqoweh1 13u1293u9');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'j6', '9', 'qqádasdaqqqq', 'aaqưeqweaaa', '5378888', '1quwhqehqoweh1 13u1293u9');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'j7', '9', 'qqqádasdqqq', 'aaaqưeqwaa', '5378888', '1quwhqehqoweh1 13u1293u9');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'j8', '9', 'qqqádsadqqq', 'aaqưeqwaaa', '5378888', '1quwhqehqoweh1 13u1293u9');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'j9', '9', 'qqqádasdqqq', 'aaqưeqaaa', '5378888', '1quwhqehqoweh1 13u1293u9');

INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'k1', '10', 'Huyaa', 'Dádaduy', '1222222313', 'aaaaaaaaaddddđqqqqqq');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'k2', '10', 'Huybbb', 'Duádasdy', '122222233', 'aaaaaaaaaddddđqqqqqq');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'k3', '10', 'Huycc', 'Dádasdasduy', '122222233', 'aaaaaaaaaddddđqqqqqq');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'k4', '10', 'Huấdasy', 'Dacxcuy', '122222233', 'aaaaaaaaaddddđqqqqqq');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'k5', '10', 'Huádasdy', 'Dvvvzxuy', '122222233', 'aaaaaaaaaddddđqqqqqq');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'k6', '10', 'Hádasduy', 'Dufryrty', '122222233', 'aaaaaaaaaddddđqqqqqq');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'k7', '10', 'Huádasdy', 'Durtyrjy', '122222233', 'aaaaaaaaaddddđqqqqqq');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'k8', '10', 'Hádasduy', 'Dufghfhy', '122222233', 'aaaaaaaaaddddđqqqqqq');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'k9', '10', 'Huádasdy', 'Dufghfghy', '122222233', 'aaaaaaaaaddddđqqqqqq');
INSERT INTO `tbl_staff` (`iStaffID`, `sStaffCode`, `iDepartmentID`, `sStaffFirstName`, `sStaffLastName`, `sStaffPhone`, `sStaffAddress`) VALUES (NULL, 'k10', '10', 'Hádasduy', 'Dufghfhgy', '122222233', 'aaaaaaaaaddddđqqqqqq');

DELIMITER $$
CREATE PROCEDURE Query_staff()
Begin
SELECT tbl_timeattendance.iTimeAttendance,tbl_staff.iStaffID,tbl_staff.sStaffFirstName,tbl_staff.sStaffLastName,min(tbl_timeattendance.dDateTimeIn),max(tbl_timeattendance.dDateTimeOut),tbl_department.sDepartmentName FROM `tbl_timeattendance` INNER JOIN tbl_staff ON tbl_timeattendance.iStaffID = tbl_staff.iStaffID INNER JOIN tbl_department on tbl_staff.iDepartmentID = tbl_department.iDepartmentID;
END; $$


DELIMITER $$
CREATE PROCEDURE Login_in(IN idtime int, IN idstaff int, IN datein datetime, IN stc varchar(45))

BEGIN
INSERT INTO tbl_timeattendance(iTimeAttendance,iStaffID,dDateTimeIn) 
VALUES ("",(SELECT iStaffID FROM tbl_staff WHERE tbl_staff.sStaffCode = stc), Now());
END; $$

DELIMITER $$
create procedure Login_out(IN dateout datetime, IN stc varchar(45))
begin
UPDATE tbl_timeattendance,tbl_staff SET dDateTimeOut=Now() where tbl_staff.sStaffCode = stc and tbl_staff.iStaffID = tbl_timeattendance.iStaffID ;
end; $$

