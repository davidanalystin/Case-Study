

-- creating new tables for years 2015 -2022 for exp 
  CREATE TABLE  invertible-now-379519.diamonds.trade_2015_2022_exc_d_exp as(
  SELECT 
  y_19.*,
  y_18.Year_2015,
  y_18.Year_2016,
  y_18.Year_2017,
  y_18.Year_2018
  FROM (select * From invertible-now-379519.diamonds.trade_2019_2022_exc_d_exp where code is not null)  AS y_19
  full outer  JOIN (select * from  invertible-now-379519.diamonds.trade_2015_2018_exc_d_exp where code is not null ) as  y_18
  ON y_19.code= y_18.code 
  );

  CREATE TABLE  invertible-now-379519.diamonds.trade_2015_2022_in_d_exp as(
  SELECT 
  y_19.*,
  y_18.Year_2015,
  y_18.Year_2016,
  y_18.Year_2017,
  y_18.Year_2018
  FROM (select * From invertible-now-379519.diamonds.trade_2019_2022_in_d_exp where code is not null)  AS y_19
  full outer  JOIN (select * from  invertible-now-379519.diamonds.trade_2015_2018_in_d_exp where code is not null ) as  y_18
  ON y_19.code= y_18.code 
  );

--creating new tables for years 2015 -2022 for import 
  CREATE TABLE  invertible-now-379519.diamonds.trade_2015_2022_exc_d_imp as(
  SELECT 
  y_19.*,
  y_18.Year_2015,
  y_18.Year_2016,
  y_18.Year_2017,
  y_18.Year_2018
  FROM (select * From invertible-now-379519.diamonds.trade_2019_2022_exc_d_imp where code is not null)  AS y_19
  full outer  JOIN (select * from  invertible-now-379519.diamonds.trade_2015_2018_exc_d_imp where code is not null ) as  y_18
  ON y_19.code= y_18.code 
  );

  CREATE TABLE  invertible-now-379519.diamonds.trade_2015_2022_in_d_imp as(
  SELECT 
  y_19.*,
  y_18.Year_2015,
  y_18.Year_2016,
  y_18.Year_2017,
  y_18.Year_2018
  FROM (select * From invertible-now-379519.diamonds.trade_2019_2022_in_d_imp where code is not null)  AS y_19
  full outer  JOIN (select * from  invertible-now-379519.diamonds.trade_2015_2018_in_d_imp where code is not null ) as  y_18
  ON y_19.code= y_18.code 
  );

-- droping tables 
  drop table invertible-now-379519.diamonds.trade_2015_2018_exc_d_exp;
  drop table invertible-now-379519.diamonds.trade_2015_2018_exc_d_imp;
  drop table invertible-now-379519.diamonds.trade_2015_2018_in_d_exp;
  drop table invertible-now-379519.diamonds.trade_2015_2018_in_d_imp;
  drop table invertible-now-379519.diamonds.trade_2019_2022_in_d_imp;
  drop table invertible-now-379519.diamonds.trade_2019_2022_in_d_exp;
  drop table invertible-now-379519.diamonds.trade_2019_2022_in_d_imp;
  drop table invertible-now-379519.diamonds.trade_2019_2022_exc_d_exp;
  drop table invertible-now-379519.diamonds.trade_2019_2022_exc_d_imp;
-- updating the values for other countries in order to disticnt them from one another
  select code, countries
  from invertible-now-379519.diamonds.trade_2015_2022_exc_d_exp
  where countries like '%Countrie%';

  update invertible-now-379519.diamonds.trade_2015_2022_in_d_exp
    SET countries = 'Other Countries Oceania'
    where code= 899;

    update invertible-now-379519.diamonds.trade_2015_2022_in_d_exp
    SET countries = 'Other Countries Unclassified'
    where code= 900;

    update invertible-now-379519.diamonds.trade_2015_2022_in_d_exp
    SET countries = 'Other Countries South America'
    where code= 799;

    update invertible-now-379519.diamonds.trade_2015_2022_in_d_exp
    SET countries = 'Other Countries Central America'
    where code= 649;

    update invertible-now-379519.diamonds.trade_2015_2022_in_d_exp
    SET countries = 'Other Countries North America'
    where code= 499;

    update invertible-now-379519.diamonds.trade_2015_2022_in_d_exp
    SET countries = 'Other Countries Asia'
    where code= 399;

    update invertible-now-379519.diamonds.trade_2015_2022_in_d_exp
    SET countries = 'Other Countries European'
    where code= 299;

    update invertible-now-379519.diamonds.trade_2015_2022_exc_d_exp
    SET countries = 'Other Countries Oceania'
    where code= 899;

    update invertible-now-379519.diamonds.trade_2015_2022_exc_d_exp
    SET countries = 'Other Countries Unclassified'
    where code= 900;

    update invertible-now-379519.diamonds.trade_2015_2022_exc_d_exp
    SET countries = 'Other Countries South America'
    where code= 799;

    update invertible-now-379519.diamonds.trade_2015_2022_exc_d_exp
    SET countries = 'Other Countries Central America'
    where code= 649;

    update invertible-now-379519.diamonds.trade_2015_2022_exc_d_exp
    SET countries = 'Other Countries North America'
    where code= 499;

    update invertible-now-379519.diamonds.trade_2015_2022_exc_d_exp
    SET countries = 'Other Countries Asia'
    where code= 399;

    update invertible-now-379519.diamonds.trade_2015_2022_exc_d_exp
    SET countries = 'Other Countries European'
    where code= 299;


  -- import part 
  update invertible-now-379519.diamonds.trade_2015_2022_in_d_imp
    SET countries = 'Other Countries Oceania'
    where code= 899;

    update invertible-now-379519.diamonds.trade_2015_2022_in_d_imp
    SET countries = 'Other Countries Unclassified'
    where code= 900;

    update invertible-now-379519.diamonds.trade_2015_2022_in_d_imp
    SET countries = 'Other Countries South America'
    where code= 799;

    update invertible-now-379519.diamonds.trade_2015_2022_in_d_imp
    SET countries = 'Other Countries Central America'
    where code= 649;

    update invertible-now-379519.diamonds.trade_2015_2022_in_d_imp
    SET countries = 'Other Countries North America'
    where code= 499;

    update invertible-now-379519.diamonds.trade_2015_2022_in_d_imp
    SET countries = 'Other Countries Asia'
    where code= 399;

    update invertible-now-379519.diamonds.trade_2015_2022_in_d_imp
    SET countries = 'Other Countries European'
    where code= 299;

    update invertible-now-379519.diamonds.trade_2015_2022_exc_d_imp
    SET countries = 'Other Countries Oceania'
    where code= 899;

    update invertible-now-379519.diamonds.trade_2015_2022_exc_d_imp
    SET countries = 'Other Countries Unclassified'
    where code= 900;

    update invertible-now-379519.diamonds.trade_2015_2022_exc_d_imp
    SET countries = 'Other Countries South America'
    where code= 799;

    update invertible-now-379519.diamonds.trade_2015_2022_exc_d_imp
    SET countries = 'Other Countries Central America'
    where code= 649;

    update invertible-now-379519.diamonds.trade_2015_2022_exc_d_imp
    SET countries = 'Other Countries North America'
    where code= 499;

    update invertible-now-379519.diamonds.trade_2015_2022_exc_d_imp
    SET countries = 'Other Countries Asia'
    where code= 399;

    update invertible-now-379519.diamonds.trade_2015_2022_exc_d_imp
    SET countries = 'Other Countries European'
    where code= 299;




  -- subtracting table for trade including diamonds and table excluding, in oreder to find total amount of diamonds exported
  CREATE TABLE  invertible-now-379519.diamonds.diamonds_export AS (
    SELECT  inc.Countries, 
    inc.Code,
      round((inc.Year_2022 - exc.Year_2022),2) as year_2022,
      round((inc.Year_2021 - exc.Year_2021),2) as year_2021,
      round((inc.Year_2020 - exc.Year_2020),2) as year_2020,
      round((inc.Year_2019 - exc.Year_2019),2) as year_2019,
      round((inc.Year_2018 - exc.Year_2018),2) as year_2018,
      round((inc.Year_2017 - exc.Year_2017),2) as year_2017, 
      round((inc.Year_2016 - exc.Year_2016),2) as year_2016,
      round((inc.Year_2015 - exc.Year_2015),2) as year_2015  
    from  invertible-now-379519.diamonds.trade_2015_2022_in_d_exp as inc
    LEFT JOIN invertible-now-379519.diamonds.trade_2015_2022_exc_d_exp as exc
    ON inc.countries = exc.countries
    order by 1 
  ) ;
  -- the exact same operation for   import
  CREATE TABLE  invertible-now-379519.diamonds.diamonds_import AS (
    SELECT  inc.Countries, 
    inc.Code,
      round((inc.Year_2022 - exc.Year_2022),2) as year_2022,
      round((inc.Year_2021 - exc.Year_2021),2) as year_2021,
      round((inc.Year_2020 - exc.Year_2020),2) as year_2020,
      round((inc.Year_2019 - exc.Year_2019),2) as year_2019,
      round((inc.Year_2018 - exc.Year_2018),2) as year_2018,
      round((inc.Year_2017 - exc.Year_2017),2) as year_2017, 
      round((inc.Year_2016 - exc.Year_2016),2) as year_2016,
      round((inc.Year_2015 - exc.Year_2015),2) as year_2015  
    from  invertible-now-379519.diamonds.trade_2015_2022_in_d_imp as inc
    LEFT JOIN invertible-now-379519.diamonds.trade_2015_2022_exc_d_imp as exc
    ON inc.countries = exc.countries
    order by 1 
  ) ;


-- clenaing  null rows 


  DELETE FROM  invertible-now-379519.diamonds.diamonds_export
  where year_2022 + year_2021 + year_2020 +year_2019 + year_2018+ year_2017 +year_2016 +year_2015   < 0.1;

  DELETE FROM  invertible-now-379519.diamonds.diamonds_import
  where year_2022 + year_2021 + year_2020 +year_2019 + year_2018+ year_2017 +year_2016 +year_2015   < 0.1;

 

-- temp  export
  drop table if exists diamonds_export_long;

  create temp table diamonds_export_long as  (
    SELECT Countries, code, year_2022 as value_millions,'2022' as year
    FROM invertible-now-379519.diamonds.diamonds_export
    UNION ALL
    SELECT Countries, code, year_2021 as value_millions, '2021' as year
    FROM invertible-now-379519.diamonds.diamonds_export
    UNION ALL
    SELECT Countries, code,    year_2020 as value_millions, '2020' as year
    FROM invertible-now-379519.diamonds.diamonds_export
    UNION ALL
    SELECT Countries, code,    year_2019 as value_millions, '2019' as year
    FROM invertible-now-379519.diamonds.diamonds_export
    UNION ALL
    SELECT Countries, code,    year_2018 as value_millions, '2018' as year
    FROM invertible-now-379519.diamonds.diamonds_export
    UNION ALL
    SELECT Countries, code,    year_2017 as value_millions, '2017' as year
    FROM invertible-now-379519.diamonds.diamonds_export
    UNION ALL
    SELECT Countries, code,    year_2016 as value_millions, '2016' as year
    FROM invertible-now-379519.diamonds.diamonds_export
    UNION ALL
    SELECT Countries, code,    year_2015 as value_millions, '2015' as year
    FROM invertible-now-379519.diamonds.diamonds_export)  ;

-- import 
  drop table if exists diamonds_import_long;

  create temp table diamonds_import_long as  (
    SELECT Countries, code, year_2022 as value_millions,'2022' as year
    FROM invertible-now-379519.diamonds.diamonds_import
    UNION ALL
    SELECT Countries, code, year_2021 as value_millions, '2021' as year
    FROM invertible-now-379519.diamonds.diamonds_import
    UNION ALL
    SELECT Countries, code,    year_2020 as value_millions, '2020' as year
    FROM invertible-now-379519.diamonds.diamonds_import
    UNION ALL
    SELECT Countries, code,    year_2019 as value_millions, '2019' as year
    FROM invertible-now-379519.diamonds.diamonds_import
    UNION ALL
    SELECT Countries, code,    year_2018 as value_millions, '2018' as year
    FROM invertible-now-379519.diamonds.diamonds_import
    UNION ALL
    SELECT Countries, code,    year_2017 as value_millions, '2017' as year
    FROM invertible-now-379519.diamonds.diamonds_import
    UNION ALL
    SELECT Countries, code,    year_2016 as value_millions, '2016' as year
    FROM invertible-now-379519.diamonds.diamonds_import
    UNION ALL
    SELECT Countries, code,    year_2015 as value_millions, '2015' as year
    FROM invertible-now-379519.diamonds.diamonds_import)  ;

-- select diamonds export tab
  SELECT
  *
  FROM diamonds_export_long

--select diamonds import 

  SELECT 
  *
  FROM diamonds_import_long
 
-- total amount diamond's export per year
  SELECT
    round(sum(value_millions),2) as total_amount_of_export_year,
    year
  FROM    diamonds_export_long
  GROUP BY   year 
  ORDER BY year desc;

-- annual growth in percantages
  SELECT 
  total_amount_of_export_year,
    year,
   round( (((total_amount_of_export_year -LAG(total_amount_of_export_year) OVER(ORDER BY year)) / LAG(total_amount_of_export_year) OVER (order by year)) *100), 2) AS total_growth_percentages
  FROM(
        SELECT
          round(sum(value_millions),2) as total_amount_of_export_year,
          year
        FROM    diamonds_export_long
        GROUP BY   year 
        ORDER BY year desc
        ) order by year desc;

--annual growth in percentages import

  SELECT 
  total_amount_of_import_year,
    year,
   round( (((total_amount_of_import_year -LAG(total_amount_of_import_year) OVER(ORDER BY year)) / LAG(total_amount_of_import_year) OVER (order by year)) *100), 2) AS total_growth_percentages
  FROM(
          SELECT
            round(sum(value_millions),2) as total_amount_of_import_year,
            year
          FROM    diamonds_import_long
          GROUP BY   year 
          ORDER BY year desc
          )
   order by year desc;

-- gdp growth 
  SELECT 
    time as year,
   round( (((value -LAG(value) OVER(ORDER BY time)) / LAG(value) OVER (order by time)) *100), 2) AS total_growth_percentages_gdp
  FROM invertible-now-379519.diamonds.gdp_1
   order by time desc;

-- market share  
  WITH israel_d as(
    SELECT
      round(sum(value_millions),2) as total_amount_of_israel_d_export_year,
      year
    FROM    diamonds_export_long
    GROUP BY   year 
    ORDER BY year desc),
  world_d as(
    SELECT
      round(sum(cast(value_in_millions as float64)),2) as total_amount_of_export_year_worldwide,
      year
    FROM   invertible-now-379519.diamonds.worldwide_diamonds
    where year >= 2015 and value_in_millions != '#VALUE!'
    GROUP BY   year 
    ORDER BY year desc  
    )
    SELECT 
    i.year,
      (total_amount_of_israel_d_export_year / total_amount_of_export_year_worldwide )*100 as market_share
      from israel_d as i left join world_d as w on cast(i.year as int64) = w.year
      where i.year != '2022'
      group by year,market_share 
      order by i.year desc;

-- total amunt diamond's imported per year
  SELECT
    ROUND(SUM(value_millions),2) as total_amount_of_import_year,
    year
  from   diamonds_import_long
  group by   year 
  order by year desc;

-- trade balance (export - import) 
  SELECT 
    round(sum(value_millions) - im.total_amount_of_import_yea) as trade_balance_year,
    ex.year
    FROM diamonds_export_long ex  LEFT JOIN (select round(sum(value_millions),2) as  total_amount_of_import_yea, year from diamonds_import_long   group by year) im 
    ON ex.year= im.year
    group by ex.year, im.total_amount_of_import_yea 
    order by ex.year desc;

-- the top 10 countries israel is exporting to  per year
  SELECT * 
    FROM (
    SELECT 
    Countries,
    value_millions,
    year,
    RANK() OVER(PARTITION BY year ORDER BY value_millions  DESC  ) as rank
  
    FROM  diamonds_export_long)
    WHERE  rank<= 10
    ORDER BY year desc,rank;
    
-- top countries israel is importing from 
  SELECT * 
    FROM (
    SELECT 
    Countries,
    value_millions,
    year,
    RANK() OVER(PARTITION BY year ORDER BY value_millions  DESC  ) as rank
  
    from  diamonds_import_long)
    WHERE  rank<= 10
    ORDER BY year desc,rank;

-- what part of gdp  diamonds exports are
  SELECT
  ROUND((SUM(dd.value_millions)/gdp.value) *100,2) as total_amount_of_export_year,
  year
  FROM   diamonds_export_long as dd
  LEFT JOIN  invertible-now-379519.diamonds.gdp_1 gdp  
  on cast(dd.Year as int64) = gdp.time
  GROUP BY   year ,gdp.value
  ORDER BY year desc;

-- New big export location in last 4 years


  SELECT countries FROM (
    SELECT
      countries, 
      SUM( CASE WHEN year between '2015' 
        and '2018'  THEN value_millions ELSE 0 END
      ) as sum15_18, 
      SUM(
        CASE WHEN year between '2019'
        and '2022'
        THEN value_millions ELSE 0 END
      ) as sum19_22 
    FROM 
      diamonds_export_long 
    /*WHERE 
      (
        year between '2015' 
        and '2018' 
        OR year between '2019' 
        and '2022'
      )*/  
    GROUP BY 
      countries 
    HAVING
      sum15_18 = 0 
      and sum19_22 > 1

  ); 
-- new big importers in last years 

  SELECT countries FROM (
    SELECT
      countries, 
      SUM( CASE WHEN year between '2015' 
        and '2018'  THEN value_millions ELSE 0 END
      ) as total_import_15_18, 
      SUM(
        CASE WHEN year between '2019'
        and '2022'
        THEN value_millions ELSE 0 END
      ) as total_import_19_22 
    FROM 
      diamonds_import_long 
    /*WHERE 
      (
        year between '2015' 
        and '2018' 
        OR year between '2019' 
        and '2022'
      )*/  
    GROUP BY 
      countries 
    HAVING
      total_import_15_18 = 0 
      and total_import_19_22 > 1

  )  
