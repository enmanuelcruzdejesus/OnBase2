SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


--exec ck_p_mostrar_cheques_onbase 1
CREATE procedure [dbo].[ck_p_mostrar_cheques_onbase] (@transaccion int)
as

declare @i int ,
        @n int,
		@paths varchar(max),
		@item varchar(100)

set @i = 1
set @n = (select count(*) from xpaths)
set @paths = ''
set @item = ''



while(@i <= @n)
begin
  set @item = (select path from xpaths where id = @i)
  set @paths = @paths+@item+';'
  set @i = @i+1;
 end

select substring(@paths,1,len(@paths)-1) as  paths




GO
