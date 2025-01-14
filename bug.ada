```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   function Get_Element (Index : Integer) return Integer is
   begin
       return Arr(Index);
   exception
       when Constraint_Error =>
           return -1; -- Handle out-of-bounds index
   end Get_Element;
begin
   for I in 1..10 loop
       Ada.Text_IO.Put_Line(Integer'Image(Get_Element(I)));
   end loop;
   Ada.Text_IO.Put_Line(Integer'Image(Get_Element(11))); -- Accessing an out-of-bounds element
end Example;
```