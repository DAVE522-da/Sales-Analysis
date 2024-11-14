SELECT TOP (1000) 
      -- [DateKey],
      [FullDateAlternateKey] AS Date,
      -- [DayNumberOfWeek],
      [EnglishDayNameOfWeek] AS Day,
      -- [SpanishDayNameOfWeek],
      -- [FrenchDayNameOfWeek],
      -- [DayNumberOfMonth],
      -- [DayNumberOfYear],
      -- [WeekNumberOfYear],
      [EnglishMonthName] AS Month,
      LEFT([EnglishMonthName], 3) AS MonthShort, -- Useful for front-end navigation and graphs
      -- [SpanishMonthName],
      -- [FrenchMonthName],
      [MonthNumberOfYear] AS MonthNO,
      [CalendarQuarter] AS Quarter,
      [CalendarYear] AS Year
      -- [CalendarSemester],
      -- [FiscalQuarter],
      -- [FiscalYear],
      -- [FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE CalendarYear >= 2019