unit DMSclass;

interface

uses DMTaskMaker;

implementation

procedure Par8ex2p1;
begin
  TaskText('§ 9,страница 50, упражнение 2.а');
  Field(7, 7);
  DoToPoint(0, 0);
  DoPenDown;
  DoToPoint(1, 0);
  DoToPoint(1, -2);
  DoToPoint(2, -2);
  DoToPoint(2, -1);
  DoToPoint(0, -1);
  DoToPoint(0, 0);
  DoPenUp;
  DoToPoint(4, 0);
  DoPenDown;
  DoToPoint(4, -2);
  DoToPoint(3, -2);
  DoToPoint(3, -1);
  DoToPoint(5, -1);
  DoToPoint(5, 0);
  DoToPoint(4, 0);
  DoToPoint(4, 1);
  DoPenDown;
  DoToPoint(4, 3);
  DoToPoint(3, 3);
  DoToPoint(3, 2);
  DoToPoint(5, 2);
  DoToPoint(5, 1);
  DoToPoint(4, 1);
  DoPenUp;
  DoToPoint(1, 1);
  DoPenDown;
  DoToPoint(1, 3);
  DoToPoint(2, 3);
  DoToPoint(2, 2);
  DoToPoint(0, 2);
  DoToPoint(0, 1);
  DoToPoint(1, 1);
  DoPenUp;
end;







begin
  RegisterGroup('Sclass', 'Мои задания для Чертежника', 'DMSclass', 2);
  RegisterTask('Sclass', Par8ex2p1);
end.

