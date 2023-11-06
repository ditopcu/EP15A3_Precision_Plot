# EP15A3_Precision_Plot
EP15A3 precision plot

Plots up to 3 level precision plot for visualization of EP15A3 precision results.


Data must include following variables as a data.frame:


"block"            (Factor or character) Information for block, module, or reading cell information
"test_name_unit"   (Charachter) Test names with unit
"sample_no"        (Factor or character) QC Levels, e.g., "Level1"
"cv_type"          (Charachter) CV type, must be "r" or "wl"
"act"              (Numeric) Actual calculated CV%
"limits"           (Numeric) Manufacturer proposed CV% limit
"claim"            (Numeric) Extended manufacturer proposed CV% limit, calculated according to the guideline

Demo data was provided.


head(demo_data)
# A tibble: 6 × 7
  block        test_name_unit    sample_no cv_type    act limits claim
  <chr>        <ord>             <ord>     <chr>    <dbl>  <dbl> <dbl>
1 Left Channel Basophils, x109/L Level1    r       26.3    67    50   
2 Left Channel Basophils, x109/L Level2    r       27.0    67    50   
3 Left Channel Basophils, x109/L Level3    r       16.3    26.8  20   
4 Left Channel Hematocrit, %     Level1    r        0.906   5.00  3.73
5 Left Channel Hematocrit, %     Level2    r        1.65    3.27  2.44
6 Left Channel Hematocrit, %     Level3    r        0.919   2.01  1.5 
