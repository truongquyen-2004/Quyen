-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Truong Van Quyen
-- Create date: 2025-04-14
-- Description:	baitap4
-- =============================================
ALTER PROCEDURE bai_tap4
    @datetime1 DATETIME,
    @datetime2 DATETIME
AS
BEGIN
    SET NOCOUNT ON;

    -- Bảng ánh xạ tiết sang giờ với logic thời gian đúng
    WITH TietGio AS (
        SELECT 1 AS tiet, '06:30' AS GioVao, '07:45' AS GioRa UNION ALL
        SELECT 2, '07:55', '09:10' UNION ALL
        SELECT 3, '09:20', '10:35' UNION ALL
        SELECT 4, '10:45', '12:00' UNION ALL
        SELECT 5, '12:30', '13:45' UNION ALL
        SELECT 6, '13:55', '15:10' UNION ALL
        SELECT 7, '15:20', '16:35' UNION ALL
        SELECT 8, '16:45', '18:00' UNION ALL
        SELECT 9, '18:10', '19:25' UNION ALL
        SELECT 10, '19:35', '20:50'
    )

    SELECT 
        GV.tengv AS HoTenGV,
        mh.tenmon AS MonDay,
        CAST(CONVERT(varchar, tkb.ngay, 23) + ' ' + tg1.GioVao AS DATETIME) AS GioVao,
        CAST(CONVERT(varchar, tkb.ngay, 23) + ' ' + tg2.GioRa AS DATETIME) AS GioRa
    FROM 
        tkb
        JOIN GV gv ON tkb.magv = gv.magv
        JOIN monhoc mh ON tkb.mamon = mh.mamon
        JOIN TietGio tg1 ON tkb.tietbatdau = tg1.tiet
        JOIN TietGio tg2 ON tkb.tietketthuc = tg2.tiet
    WHERE 
        CAST(CONVERT(varchar, tkb.ngay, 23) + ' ' + tg2.GioRa AS DATETIME) > @datetime1 AND
        CAST(CONVERT(varchar, tkb.ngay, 23) + ' ' + tg1.GioVao AS DATETIME) < @datetime2
END
GO


EXEC bai_tap4 '2025-04-15 09:20', '2025-04-16 12:00';

