library PT4Eclass;

uses PT4TaskMakerNET;

procedure Par13Ex4;
var
  x, z, a: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 13,страница 64, упражнение 4'); 
  x := RandomN(-99, 99);
  z := RandomN(-99, 99);
  DataR('x = ', x, xLeft, 3, 2);
  DataR('z = ', z, xRight, 3, 2);
  a := 2 * x / sqrt(sqr(z) + 9);
  ResultR('a = ', a, xCenter, 2, 4);
  SetTestCount(3); 
end;

procedure Par13Ex5;
var
  x, y, z, a: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 13,страница 64, упражнение 5'); 
  x := RandomN(-99, 99);
  y := RandomN(-99, 99);
  z := RandomN(-99, 99);
  DataR('x = ', x, xLeft, 3, 2);
  DataR('y = ', y, xCenter, 3, 2);
  DataR('z = ', z, xRight, 3, 2);
  a := (x + y + z) / 3;
  ResultR('a = ', a, xCenter, 2, 4);
  SetTestCount(3); 
end;

procedure Par13Ex6;
var
  x, y, a: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 13,страница 64, упражнение 6'); 
  x := RandomN(-99, 99);
  y := RandomN(-99, 99);
  DataR('x = ', x, xLeft, 3, 2);
  DataR('y = ', y, xRight, 3, 2);
  a := trunc(x / y);
  ResultR('a = ', a, xCenter, 2, 4);
  SetTestCount(3); 
end;

procedure Par13Ex7;
var
  a, b, c,s: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 13,страница 64, упражнение 7'); 
  x := RandomN(-99, 99);
  y := RandomN(-99, 99);
  DataR('x = ', x, xLeft, 3, 2);
  DataR('y = ', y, xRight, 3, 2);
  a := sqrt(x*x - y*y);
  s := (a*b)/2;
  ResultR('a = ', a, xleft, 2, 4);
  ResultR('s = ', s, xright, 2, 4);
  SetTestCount(3); 
end;

procedure Par13Ex8;
var
  x, y, a: integer;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 13,страница 64, упражнение 8'); 
  x := RandomN(-99, 99);
  y := RandomN(-99, 99);
  DataN('x = ', x, xLeft, 3, 2);
  DataN('y = ', y, xRight, 3, 2);
  a := trunc(x / y);
  ResultR('a = ', a / 1, xCenter, 2, 4);
  SetTestCount(3); 
end;

procedure Par15Ex4;
var
  x: integer;
  a: boolean;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 15,страница 76, упражнение 4'); 
  x := RandomN(-99, 99);
  DataN('x = ', x, xCenter, 3, 2);
  a := x > 0;
  ResultB('a - ', a, xCenter, 2);
  SetTestCount(3); 
end;

procedure Par15Ex5;
var
  x: integer;
  a: boolean;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 15,страница 76, упражнение 5'); 
  x := RandomN(-99, 99);
  DataN('x = ', x, xCenter, 3, 2);
  a := x div 1000 > 0;
  ResultB('a - ', a, xCenter, 2);
  SetTestCount(3); 
end;

procedure Par15Ex6;
var
  x, y: integer;
  a: boolean;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 15,страница 76, упражнение 6'); 
  x := RandomN(-99, 99);
  y := RandomN(-99, 99);
  DataN('x = ', x, xleft, 3, 2);
  DataN('y = ', y, xRight, 3, 2);
  if x < y then
  begin
    if(x mod 2 = 0) or (y mod 2 = 0) then
      a := true
    else
      a := false
  end;
  ResultB('a - ', a, xCenter, 2);
  SetTestCount(3); 
end;

procedure Par16Ex14;
var
  a: integer;
  h: boolean;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 16,страница 83, упражнение 14', 0, 1); 
  TaskText('Если выполняются все условия выведите True,иначе False', 0, 2);
  a := RandomN(-999999, 999999);
  DataN('x = ', a, xCenter, 3, 6);
  if (a < 999) and (a < 10000) then
  begin
    if a div 1000 > a mod 1000 div 100 then
      if a mod 1000 div 100 > a mod 100 div 10 then
        if a mod 100 div 10 > a mod 10 then
          h := true
        else
          h := false
  end;
  ResultB('a - ', h, xCenter, 2);
  SetTestCount(3); 
end;

procedure Par16Ex13;
var
  a, x: integer;
  h: boolean;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 16,страница 83, упражнение 13', 0, 1); 
  TaskText('Если выполняются все условия выведите True,иначе False', 0, 2);
  a := RandomN(-99999, 99999);
  DataN('x = ', a, xCenter, 3, 6);
  if (a < 99) and (a < 1000) then
  begin
    if a div 1000 > a mod 1000 div 100 then
      x := (a div 100) + (a mod 100 div 10) + (a mod 10);
    if x mod 7 = 0 then
      h := true
    else
      h := false
  end;
  ResultB('a - ', h, xCenter, 2);
  SetTestCount(3); 
end;

procedure Par17Ex10;
var
  x, n, m, k: integer;
  s: string;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 17,страница 88, упражнение 10'); 
  x := RandomN(0, 20);
  n := RandomN(0, 999);
  m := RandomN(99, 999);
  DataN('n = ', n, xCenter, 3, 6);
  DataN('m = ', m, xCenter, 3, 6);
  DataN('x = ', x, xCenter, 3, 6);
  for var i := n to m do
    if (n mod 2 = 0) and (n mod x <> 0) then
    begin
      ResultN('', i, xCenter, 2, 4);
      k := 1
    end;
  if k <> 1 then
    s := 'Таких чисел нет';
  ResultS('', s, xCenter, 2);
  SetTestCount(3);
end;

procedure Par19Ex13;
var
  n: integer;
  s: string;
  i, ch, neCh: integer;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 19,страница 108, упражнение 13');
  n := RandomN(100, 999999999);
  DataN('n = ', n, xCenter, 2, 9);
  s := intToStr(n);
  i := 1;
  while (i <= length(s)) do
  begin
    if(strToInt(s[i]) mod 2 = 1) then neCh := neCh + 1
    else ch := ch + 1;
    i := i + 1;
  end;
  var s1 := 'Чётных чисел больше';
  var s2 := 'Нечётных чисел больше';
  var s3 := 'Чётных и нечётных чисел поровну';
  if(ch > neCh) then ResultS('', s1, xCenter, 2);
  if(ch < neCh) then ResultS('', s2, xCenter, 2);
  if(ch = neCh) then ResultS('', s3, xCenter, 2);
  SetTestCount(3);
end;

procedure Par19Ex14;
var
  n, i: integer; 
  s: string; 
  b: array[1..9] of integer;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 19,страница 108, упражнение 14'); 
  i := 1; 
  n := Randomn(0, 999999999); 
  DataN('n=', n, xCenter, 3, 6); 
  var a := 0; 
  s := inttostr(n); 
  while strtoint(s[i]) mod 3 = 0 do 
  begin
    a := a + 1; 
    b[a] := i; 
    i := i + 1;
    SetTestCount(3);  
  end; 
  case a of 
    1: ResultN('', b[1], xCenter, 1, 1); 
    2:
      begin
        ResultN('', b[1], xleft, 1, 1); 
        ResultN('', b[2], xright, 1, 1); 
      end; 
    3:
      begin
        ResultN('', b[1], xleft, 1, 1); 
        ResultN('', b[2], xCenter, 1, 1); 
        ResultN('', b[3], xright, 1, 1); 
      end; 
    4:
      begin
        ResultN('', b[1], xleft, 1, 1); 
        ResultN('', b[2], xCenter, 1, 1); 
        ResultN('', b[3], xright, 1, 1); 
        ResultN('', b[4], xcenter, 2, 1); 
      end; 
    5:
      begin
        ResultN('', b[1], xleft, 1, 1); 
        ResultN('', b[2], xCenter, 1, 1); 
        ResultN('', b[3], xright, 1, 1); 
        ResultN('', b[4], xleft, 2, 1); 
        ResultN('', b[5], xCenter, 2, 1); 
      end; 
    6:
      begin
        ResultN('', b[1], xleft, 1, 1); 
        ResultN('', b[2], xCenter, 1, 1); 
        ResultN('', b[3], xright, 1, 1); 
        ResultN('', b[4], xleft, 2, 1); 
        ResultN('', b[5], xCenter, 2, 1); 
        ResultN('', b[6], xright, 2, 1); 
      end; 
    7:
      begin
        ResultN('', b[1], xleft, 1, 1); 
        ResultN('', b[2], xCenter, 1, 1); 
        ResultN('', b[3], xright, 1, 1); 
        ResultN('', b[4], xleft, 2, 1); 
        ResultN('', b[5], xCenter, 2, 1); 
        ResultN('', b[6], xright, 2, 1); 
        ResultN('', b[7], xCenter, 3, 1); 
      end; 
    8:
      begin
        ResultN('', b[1], xleft, 1, 1); 
        ResultN('', b[2], xCenter, 1, 1); 
        ResultN('', b[3], xright, 1, 1); 
        ResultN('', b[4], xleft, 2, 1); 
        ResultN('', b[5], xCenter, 2, 1); 
        ResultN('', b[6], xright, 2, 1); 
        ResultN('', b[7], xleft, 3, 1); 
        ResultN('', b[8], xCenter, 3, 1); 
      end; 
    9:
      begin
        ResultN('', b[1], xleft, 1, 1); 
        ResultN('', b[2], xCenter, 1, 1); 
        ResultN('', b[3], xright, 1, 1); 
        ResultN('', b[4], xleft, 2, 1); 
        ResultN('', b[5], xCenter, 2, 1); 
        ResultN('', b[6], xright, 2, 1); 
        ResultN('', b[7], xleft, 3, 1); 
        ResultN('', b[8], xCenter, 3, 1); 
        ResultN('', b[9], xright, 3, 1); 
      end; 
  end;
end;

procedure Par19Ex15;
var
  x, a, k, t,  d: integer;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 19,страница 108, упражнение 15'); 
  x := RandomN(100, 9999999);
  DataN('x = ', x, xCenter, 2, 7);
  a := x;
  k := 0;
  while a > 0 do
  begin
    k := 1;
    a := a div 10;
  end;
  var s1 := 'В числе четное количество цифр';
  if k mod 2 = 0 then
    ResultS('', s1, xCenter, 2)
  else
  begin
    t := 1;
    for var i := 1 to k div 2 do
      t *= 10;
    d := x div t mod 10;
    ResultN('', d, xCenter, 2, 1);
  end;
  SetTestCount(3); 
end;

procedure Par19Ex16;
var
  x, a, err: integer; 
  s, z, r: string;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 19,страница 108, упражнение 14'); 
  x := RandomN(0, 999999); 
  DataN('', x, xCenter, 2, 6);
  s := inttostr(x); 
  z := '';
  r := 'Число не подходит'; 
  for var i := length(s) downto 1 do 
    z := z + s[i]; 
  val(z, a, err); 
  if a = x then
    ResultN('', a, xcenter, 3, 6)
  else 
    ResultS('', r, xcenter, 3);
  SetTestCount(3); 
end;

procedure Par19Ex18;
var
  x, c: real;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 19,страница 108, упражнение 18', 0, 2); 
  TaskText('За год окончание подсчёта возьмите 2018', 0, 4);
  x := RandomN(1, 99);
  c := 20;
  DataR('x =  ', x, xCenter, 3, 2);
  for var i := 1626 to 2018 do
    c := c + c * (x / 100);
  ResultR('', c, xCenter, 3, 6);
  SetTestCount(3); 
end;

procedure Par19Ex19;
var
  c1, c2, n: real;
  k: integer;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
  TaskText('§ 19,страница 108, упражнение 19'); 
  c1 := RandomN(0, 99);
  c2 := RandomN(0, 99);
  k := RandomN(0, 20);
  DataR('c1 =  ', c1, xLeft, 2, 2);
  DataR('c2 =  ', c2, xRight, 2, 2);
  DataN('k = ;', k, xCenter, 4, 2);
  for var i := 1 to k do
  begin
    n := c1 / 2;
    c1 := c1 - n; c2 := c2 + n;
    n := c2 / 2;
    c2 := c2 - n; c1 := c1 + n;
  end;
  ResultR('c1 =  ', c1, xLeft, 2, 2);
  ResultR('c1 =  ', c2, xRight, 2, 2);
  SetTestCount(3); 
end;

procedure Par19Ex17p1; 
var 
n,n1,n2,n3: integer; 
begin 
CreateTask('Основные Алгоритмические конструкции'); 
TaskText('§ 19,страница 108, упражнение 17.1'); 
n:= 153; 
n1 := 370; 
n2 := 371; 
n3 := 407; 
ResultN('n = ', n, xleft, 2, 2); 
ResultN('n1 = ', n1, xCenter, 2, 2); 
ResultN('n2 = ', n2, xright, 2, 2); 
ResultN('n3 = ', n3, xcenter, 4, 2); 
SetTestCount(3); 
end;
 
procedure Par19Ex17p2; 
var 
n,n1,n2: integer; 
begin 
CreateTask('Основные Алгоритмические конструкции'); 
TaskText('§ 19,страница 108, упражнение 17.2'); 
n:= 1634; 
n1 := 8208; 
n2 := 9474; 
ResultN('n = ', n, xleft, 3, 2); 
ResultN('n1 = ', n1, xCenter, 3, 2); 
ResultN('n2 = ', n2, xright, 3, 2); 
SetTestCount(3); 
end;

procedure Par19Ex20;
var m1:array[1..8] of integer;
m2:array[1..24] of integer;
begin
  CreateTask('Основные Алгоритмические конструкции'); 
TaskText('§ 19,страница 108, упражнение 20'); 
m1[1]:=1;
m1[2]:=5;
m1[3]:=7;
m1[4]:=11;
m1[5]:=13;
m1[6]:=17;
m1[7]:=19;
m1[8]:=23; 
for var i:=1 to 24 do
  m2[i]:= i-1;
ResultN('',m1[1],10,1,1);
ResultN('',m1[2],25,1,1);
ResultN('',m1[3],50,1,1);
ResultN('',m1[4],65,1,2);
ResultN('',m1[5],10,2,2);
ResultN('',m1[6],25,2,2);
ResultN('',m1[7],50,2,2);
ResultN('',m1[8],65,2,2);
ResultN('',m2[1],10,3,1);
ResultN('',m2[2],25,3,1);
ResultN('',m2[3],50,3,1);
ResultN('',m2[4],65,3,1);
ResultN('',m2[5],10,4,1);
ResultN('',m2[6],25,4,1);
ResultN('',m2[7],50,4,1);
ResultN('',m2[8],65,4,1);
ResultN('',m2[9],10,5,2);
ResultN('',m2[10],25,5,2);
ResultN('',m2[11],50,5,2);
ResultN('',m2[12],65,5,2);
ResultN('',m2[13],10,6,2);
ResultN('',m2[14],25,6,2);
ResultN('',m2[15],50,6,2);
ResultN('',m2[16],65,6,2);
ResultN('',m2[17],10,7,2);
ResultN('',m2[18],25,7,2);
ResultN('',m2[19],50,7,2);
ResultN('',m2[20],65,7,2);
ResultN('',m2[21],10,8,2);
ResultN('',m2[22],25,8,2);
ResultN('',m2[23],50,8,2);
ResultN('',m2[24],65,8,2);

SetTestCount(3);
end;

procedure InitTask(num: integer);
begin
  case num of 
    1: Par13Ex4; 
    2: Par13Ex5; 
    3: Par13Ex6; 
    4: Par13Ex7;
    5: Par13Ex8;
    6: Par15Ex4;
    7: Par15Ex5;
    8: Par15Ex6;
    9: Par16Ex13;
    10: Par16Ex14;
    11: Par17Ex10;
    12: Par19Ex13;
    13: Par19Ex14;
    14: Par19Ex15;
    15: Par19Ex16;
    16: Par19Ex17p1;
    17: Par19Ex17p2;
    18: Par19Ex18;
    19: Par19Ex19;
    20: Par19Ex20;
  end; 
end;

procedure inittaskgroup;
begin
  CreateGroup('Eclass', 'Задачник 8-й класс', 
  'FaCSM & Bezlimix', 'qwqfsdf13dfttd', 20, InitTask);
  Subgroup('Задачник к учебнику 8 класса 2018г.'); 
end;

procedure activate(S: string);
begin
  ActivateNET(S); 
end;

begin 
end. 
