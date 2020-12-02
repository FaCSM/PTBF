library PT4Sclass;

uses PT4TaskMakerNET;

procedure Par15Ex1p1;
var
  x, y, z, a: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 15,страница 101, упражнение 1.1'); 
  x := RandomR(-99, 99);
  y := RandomR(-99, 99);
  z := RandomR(-99, 99);
  DataR('x =', x, xLeft, 3, 2);
  DataR('y = ', y, xCenter, 3, 2);
  DataR('z = ', z, xRight, 3, 2);
  a := (x + y - z) / (x*x + 2);
  ResultR('a = ', a, xCenter, 2, 4);
  SetTestCount(3); 
end;

procedure Par15Ex1p2;
var
  x, y, z, a: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 15,страница 101, упражнение 1.2'); 
  x := RandomR(-99, 99);
  y := RandomR(-99, 99);
  z := RandomR(-99, 99);
  DataR('x =', x, xLeft, 3, 2);
  DataR('y = ', y, xCenter, 3, 2);
  DataR('z = ', z, xRight, 3, 2);
  a := (2 * x - z) / (3 + y*y);
  ResultR('a = ', a * 5, xCenter, 2, 4);
  SetTestCount(3); 
end;

procedure Par15Ex1p3;
var
  x, y, z, a: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 15,страница 101, упражнение 1.3'); 
  x := RandomR(-99, 99);
  y := RandomR(-99, 99);
  z := RandomR(-99, 99);
  DataR('x =', x, xLeft, 3, 2);
  DataR('y = ', y, xCenter, 3, 2);
  DataR('z = ', z, xRight, 3, 2);
  a := (1 + z) * (x + (y / (x*x) + 4) / (2 + 1 / ((x*x) + 4)));
  ResultR('a = ', a, xCenter, 2, 4);
  SetTestCount(3); 
end;

procedure Par15Ex2p1;
var
  s, l, pi: real; 
  r: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 15,страница 101, упражнение 2.1', 0, 1);
  TaskText('Число Пи принять равным 3.14', 0, 2);
  r := RandomR(1, 99);
  DataR('r = ', r, xCenter, 2, 2);
  pi := 3.14; 
  s := pi * (r*r); 
  l := 2 * pi * r; 
  ResultR('l = ', l, xLeft, 2, 4);
  ResultR('s = ', s, xRight, 2, 4);  
  SetTestCount(3);   
end;

procedure Par15Ex2p2;
var
  x, z: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 15,страница 101, упражнение 2.2'); 
  x := RandomR(1, 60); 
  DataR('x=', x, xleft, 3, 2); 
  z := 180 - (x * 2); 
  ResultR('z=', z, xleft, 3, 2); 
  SetTestcount(3); 
  
end;

procedure Par15Ex3p1;
var
  v, s: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 15,страница 101, упражнение 2.2'); 
  v := RandomN(1, 99);
  s := RandomN(1, 99);
  DataR('v = ', v, xLeft, 2, 2);
  DataR('s = ', s, xRight, 2, 2);
  ResultR('t = ', s / v, xCenter, 2, 2);
  SetTestCount(3);   
end;

procedure Par15Ex3p2;
var
  S1, T1, S2, T2, S3, T3: integer;
  Vs: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 15,страница 101, упражнение 3.2');
  S1 := RandomN(1, 99);
  T1 := RandomN(1, 99);
  S2 := RandomN(1, 99);
  T2 := RandomN(1, 99);
  S3 := RandomN(1, 99);
  T3 := RandomN(1, 99);
  DataN('s1 = ', S1, xLeft, 1, 2);
  DataN('t1 = ', T1, xRight, 1, 2);
  DataN('s2 = ', S2, xLeft, 2, 2);
  DataN('t2 = ', T2, xRight, 2, 2); 
  DataN('s3 = ', S3, xLeft, 3, 2);
  DataN('t3 = ', T3, xRight, 3, 2);
  Vs := (S1 / T1 + S2 / T2 + S3 / T3) / 3;
  ResultR('Vs =  ', Vs, xCenter, 2, 4)
end;

procedure Par15Ex4p1;
var
  m, O: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 15,страница 101, упражнение 4.1'); 
  m := RandomR(1, 99); 
  DataR('m=', m, xleft, 3, 2); 
  O := m * 65 / 100; 
  ResultR('O=', O, xleft, 3, 2); 
  SetTEstCount(3);
end;

procedure Par15Ex4p2;
var
  m, O1: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 15,страница 101, упражнение 4.2'); 
  m := RandomR(1, 99); 
  DataR('m=', m, xleft, 3, 2); 
  O1 := m * 65 / 100 / 26.56E-27;; 
  ResultR('O1=', O1, xleft, 3, 2); 
  SetTEstCount(3);
end;

procedure Par16Ex3p3;
var
  a, c, d: integer;
  b: string;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 16,страница 107, упражнение 3.3'); 
  a := RandomN(900, 9999);
  DataN('a = ', a, xCenter, 2, 4);
  c := a div 1000;
  d := a mod 1000;
  
  b := c + 'кг' + d + 'гр'; 
  ResultS('', b, xCenter, 3);
end;

procedure Par16ex3p1;
var
  number, a, b: integer; 
  c: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 16,страница 107, упражнение 3.1'); 
  number := RAndomN(10, 99); 
  DataN('number=', number, xCenter, 3, 2); 
  a := number div 10; 
  b := number mod 10; 
  c := (a + b) / 2; 
  ResultR('Среднее арифметичсекое цифр числа =', c, xCenter, 3, 2); 
  SetTEstCount(3); 
end;

procedure Par16ex3p2;

var
  a, b, c: integer;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 16,страница 107, упражнение 3.2'); 
  a := RandomN(10, 99); 
  DAtaN('a=', a, xcenter, 3, 2); 
  b := a div 10; 
  c := a mod 10; 
  ResultN('Разность равна=', b - c, xcenter, 3, 2); 
  SetTEstCount(3); 
end;

procedure Par16ex3p4;

var
  a: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 16,страница 107, упражнение 3.4'); 
  a := RandomN(999, 99999); 
  DataR('a = ', a, xcenter, 3, 5); 
  ResultR('b = ', a/10000, xcenter, 3, 2); 
  SetTEstCount(3); 
end;

procedure InitTask(num: integer);
begin
  case num of 
    1: Par15Ex1p1; 
    2: Par15Ex1p2; 
    3: Par15Ex1p3;
    4: Par15Ex2p1;
    5: Par15Ex2p2;
    6: Par15Ex3p1;
    7: Par15Ex3p2;
    8: Par15Ex4p1;
    9: Par15Ex4p2;
    10: Par16Ex3p1;
    11: Par16Ex3p2;
    12: Par16Ex3p3;
    13: Par16Ex3p4;
  end; 
end;

procedure inittaskgroup;
begin
  CreateGroup('Sclass', 'Задачник 7-й класс', 
  'FaCSM & Bezlimix', 'qwqfsdf13dfttd', 13, InitTask); 
  Subgroup('Задачник к учебнику 7 класса 2017г.'); 
end;

procedure activate(S: string);
begin
  ActivateNET(S); 
end;

begin 
end. 
