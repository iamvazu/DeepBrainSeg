#############################################################################
# Generated by PAGE version 4.25
#  in conjunction with Tcl version 8.6
#  Aug 29, 2019 10:26:14 AM IST  platform: Linux
set vTcl(timestamp) ""


if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(active_menu_fg) #000000
}




proc vTclWindow.top42 {base} {
    global vTcl
    if {$base == ""} {
        set base .top42
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 1385x947+338+63
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1905 1050
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "New Toplevel"
    vTcl:DefineAlias "$top" "DeepBrainSeg" vTcl:Toplevel:WidgetProc "" 1
    frame $top.fra43 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 775 -highlightcolor black -width 1365 
    vTcl:DefineAlias "$top.fra43" "Frame1" vTcl:WidgetProc "DeepBrainSeg" 1
    set site_3_0 $top.fra43
    frame $site_3_0.fra44 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 455 -highlightcolor black -width 1345 
    vTcl:DefineAlias "$site_3_0.fra44" "Frame2" vTcl:WidgetProc "DeepBrainSeg" 1
    set site_4_0 $site_3_0.fra44
    ttk::progressbar $site_4_0.tPr56 \
        -variable progress_bar 
    vTcl:DefineAlias "$site_4_0.tPr56" "TProgressbar1" vTcl:WidgetProc "DeepBrainSeg" 1
    vTcl:copy_lock $site_4_0.tPr56
    frame $site_4_0.fra63 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 415 -highlightcolor black -width 1325 
    vTcl:DefineAlias "$site_4_0.fra63" "Frame9" vTcl:WidgetProc "DeepBrainSeg" 1
    set site_5_0 $site_4_0.fra63
    frame $site_5_0.fra64 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 395 -highlightcolor black -width 425 
    vTcl:DefineAlias "$site_5_0.fra64" "Frame10" vTcl:WidgetProc "DeepBrainSeg" 1
    set site_6_0 $site_5_0.fra64
    canvas $site_6_0.can43 \
        -background $vTcl(actual_gui_bg) -borderwidth 2 -closeenough 1.0 \
        -height 371 -highlightcolor black -insertbackground black \
        -relief ridge -selectbackground #c4c4c4 -selectforeground black \
        -width 361 
    vTcl:DefineAlias "$site_6_0.can43" "AxialCanvas" vTcl:WidgetProc "DeepBrainSeg" 1
    scale $site_6_0.sca43 \
        -activebackground #f9f9f9 -background $vTcl(actual_gui_bg) \
        -bigincrement 0.0 -command AxialScroll -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -from 0.0 -highlightcolor black \
        -resolution 1.0 -tickinterval 0.0 -to 100.0 -troughcolor #d9d9d9 
    vTcl:DefineAlias "$site_6_0.sca43" "Scale1" vTcl:WidgetProc "DeepBrainSeg" 1
    place $site_6_0.can43 \
        -in $site_6_0 -x 10 -y 10 -width 361 -relwidth 0 -height 371 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_6_0.sca43 \
        -in $site_6_0 -x 370 -y 10 -anchor nw -bordermode ignore 
    frame $site_5_0.fra65 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 395 -highlightcolor black -width 425 
    vTcl:DefineAlias "$site_5_0.fra65" "Frame11" vTcl:WidgetProc "DeepBrainSeg" 1
    set site_6_0 $site_5_0.fra65
    canvas $site_6_0.can44 \
        -background $vTcl(actual_gui_bg) -borderwidth 2 -closeenough 1.0 \
        -height 371 -highlightcolor black -insertbackground black \
        -relief ridge -selectbackground #c4c4c4 -selectforeground black \
        -width 361 
    vTcl:DefineAlias "$site_6_0.can44" "SagitalCanvas" vTcl:WidgetProc "DeepBrainSeg" 1
    scale $site_6_0.sca45 \
        -activebackground #f9f9f9 -background $vTcl(actual_gui_bg) \
        -bigincrement 0.0 -command SagitalScroll -digits 50 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) -from 0.0 \
        -highlightcolor black -resolution 1.0 -tickinterval 0.0 -to 100.0 \
        -troughcolor #d9d9d9 
    vTcl:DefineAlias "$site_6_0.sca45" "Scale2" vTcl:WidgetProc "DeepBrainSeg" 1
    place $site_6_0.can44 \
        -in $site_6_0 -x 10 -y 10 -width 361 -relwidth 0 -height 371 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_6_0.sca45 \
        -in $site_6_0 -x 370 -y 10 -anchor nw -bordermode ignore 
    frame $site_5_0.fra66 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 395 -highlightcolor black -width 425 
    vTcl:DefineAlias "$site_5_0.fra66" "Frame12" vTcl:WidgetProc "DeepBrainSeg" 1
    set site_6_0 $site_5_0.fra66
    canvas $site_6_0.can45 \
        -background $vTcl(actual_gui_bg) -borderwidth 2 -closeenough 1.0 \
        -height 371 -highlightcolor black -insertbackground black \
        -relief ridge -selectbackground #c4c4c4 -selectforeground black \
        -width 361 
    vTcl:DefineAlias "$site_6_0.can45" "CorronalCanvas" vTcl:WidgetProc "DeepBrainSeg" 1
    scale $site_6_0.sca46 \
        -activebackground #f9f9f9 -background $vTcl(actual_gui_bg) \
        -bigincrement 0.0 -command CorronalScroll -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -from 0.0 -highlightcolor black \
        -resolution 1.0 -tickinterval 0.0 -to 100.0 -troughcolor #d9d9d9 
    vTcl:DefineAlias "$site_6_0.sca46" "Scale3" vTcl:WidgetProc "DeepBrainSeg" 1
    place $site_6_0.can45 \
        -in $site_6_0 -x 10 -y 10 -width 361 -relwidth 0 -height 371 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_6_0.sca46 \
        -in $site_6_0 -x 370 -y 10 -anchor nw -bordermode ignore 
    place $site_5_0.fra64 \
        -in $site_5_0 -x 10 -y 10 -width 425 -relwidth 0 -height 395 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.fra65 \
        -in $site_5_0 -x 450 -y 10 -width 425 -relwidth 0 -height 395 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.fra66 \
        -in $site_5_0 -x 890 -y 10 -width 425 -relwidth 0 -height 395 \
        -relheight 0 -anchor nw -bordermode ignore 
    button $site_4_0.but45 \
        -background $vTcl(actual_gui_bg) -command FlairView \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text FlairView 
    vTcl:DefineAlias "$site_4_0.but45" "FlairView" vTcl:WidgetProc "DeepBrainSeg" 1
    button $site_4_0.but46 \
        -background $vTcl(actual_gui_bg) -command T1View -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text T1View 
    vTcl:DefineAlias "$site_4_0.but46" "T1View" vTcl:WidgetProc "DeepBrainSeg" 1
    button $site_4_0.but47 \
        -background $vTcl(actual_gui_bg) -command T1ceView \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text T1ceView 
    vTcl:DefineAlias "$site_4_0.but47" "T1ceView" vTcl:WidgetProc "DeepBrainSeg" 1
    button $site_4_0.but48 \
        -background $vTcl(actual_gui_bg) -command T2View -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightcolor black -text T2View 
    vTcl:DefineAlias "$site_4_0.but48" "T2View" vTcl:WidgetProc "DeepBrainSeg" 1
    button $site_4_0.but49 \
        -background $vTcl(actual_gui_bg) -command SegmentationOverlay \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text SegmentationOverlay 
    vTcl:DefineAlias "$site_4_0.but49" "SegmentationOverlay" vTcl:WidgetProc "DeepBrainSeg" 1
    place $site_4_0.tPr56 \
        -in $site_4_0 -x 10 -y 430 -width 1320 -relwidth 0 -height 19 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.fra63 \
        -in $site_4_0 -x 10 -y 10 -width 1325 -relwidth 0 -height 415 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but45 \
        -in $site_4_0 -x 130 -y 0 -anchor nw -bordermode ignore 
    place $site_4_0.but46 \
        -in $site_4_0 -x 370 -y 0 -anchor nw -bordermode ignore 
    place $site_4_0.but47 \
        -in $site_4_0 -x 610 -y 0 -anchor nw -bordermode ignore 
    place $site_4_0.but48 \
        -in $site_4_0 -x 870 -y 0 -anchor nw -bordermode ignore 
    place $site_4_0.but49 \
        -in $site_4_0 -x 1080 -y 0 -anchor nw -bordermode ignore 
    frame $site_3_0.fra45 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 295 -highlightcolor black -width 1345 
    vTcl:DefineAlias "$site_3_0.fra45" "LoadFrame" vTcl:WidgetProc "DeepBrainSeg" 1
    set site_4_0 $site_3_0.fra45
    frame $site_4_0.fra46 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 275 -highlightcolor black -width 250 
    vTcl:DefineAlias "$site_4_0.fra46" "Flair_Frame" vTcl:WidgetProc "DeepBrainSeg" 1
    set site_5_0 $site_4_0.fra46
    button $site_5_0.but52 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command Load_Flair -compound center \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text {Load Flair} 
    vTcl:DefineAlias "$site_5_0.but52" "Button1" vTcl:WidgetProc "DeepBrainSeg" 1
    canvas $site_5_0.can58 \
        -background $vTcl(actual_gui_bg) -borderwidth 2 -closeenough 1.0 \
        -height 211 -highlightcolor black -insertbackground black \
        -relief ridge -selectbackground #c4c4c4 -selectforeground black \
        -width 211 
    vTcl:DefineAlias "$site_5_0.can58" "Flair_canvas" vTcl:WidgetProc "DeepBrainSeg" 1
    place $site_5_0.but52 \
        -in $site_5_0 -x 60 -y 230 -width 110 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.can58 \
        -in $site_5_0 -x 10 -y 10 -width 211 -relwidth 0 -height 211 \
        -relheight 0 -anchor nw -bordermode ignore 
    frame $site_4_0.fra48 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 275 -highlightcolor black -width 250 
    vTcl:DefineAlias "$site_4_0.fra48" "T1Frame" vTcl:WidgetProc "DeepBrainSeg" 1
    set site_5_0 $site_4_0.fra48
    button $site_5_0.but53 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command Load_T1 -compound center \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text {Load T1} 
    vTcl:DefineAlias "$site_5_0.but53" "Button2" vTcl:WidgetProc "DeepBrainSeg" 1
    canvas $site_5_0.can59 \
        -background $vTcl(actual_gui_bg) -borderwidth 2 -closeenough 1.0 \
        -height 211 -highlightcolor black -insertbackground black \
        -relief ridge -selectbackground #c4c4c4 -selectforeground black \
        -width 221 
    vTcl:DefineAlias "$site_5_0.can59" "T1_canvas" vTcl:WidgetProc "DeepBrainSeg" 1
    place $site_5_0.but53 \
        -in $site_5_0 -x 70 -y 230 -width 110 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.can59 \
        -in $site_5_0 -x 10 -y 10 -width 221 -relwidth 0 -height 211 \
        -relheight 0 -anchor nw -bordermode ignore 
    frame $site_4_0.fra49 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 275 -highlightcolor black -width 250 
    vTcl:DefineAlias "$site_4_0.fra49" "T1ceFrame" vTcl:WidgetProc "DeepBrainSeg" 1
    set site_5_0 $site_4_0.fra49
    button $site_5_0.but54 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command Load_T1ce -compound center \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text {Load T1ce} 
    vTcl:DefineAlias "$site_5_0.but54" "Button3" vTcl:WidgetProc "DeepBrainSeg" 1
    canvas $site_5_0.can60 \
        -background $vTcl(actual_gui_bg) -borderwidth 2 -closeenough 1.0 \
        -height 211 -highlightcolor black -insertbackground black \
        -relief ridge -selectbackground #c4c4c4 -selectforeground black \
        -width 231 
    vTcl:DefineAlias "$site_5_0.can60" "T1ce_canvas" vTcl:WidgetProc "DeepBrainSeg" 1
    place $site_5_0.but54 \
        -in $site_5_0 -x 80 -y 230 -width 100 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.can60 \
        -in $site_5_0 -x 10 -y 10 -width 231 -relwidth 0 -height 211 \
        -relheight 0 -anchor nw -bordermode ignore 
    frame $site_4_0.fra50 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 275 -highlightcolor black -width 250 
    vTcl:DefineAlias "$site_4_0.fra50" "T2Frame" vTcl:WidgetProc "DeepBrainSeg" 1
    set site_5_0 $site_4_0.fra50
    button $site_5_0.but55 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command Load_T2 -compound center \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text {Load T2} 
    vTcl:DefineAlias "$site_5_0.but55" "Button4" vTcl:WidgetProc "DeepBrainSeg" 1
    canvas $site_5_0.can61 \
        -background $vTcl(actual_gui_bg) -borderwidth 2 -closeenough 1.0 \
        -height 211 -highlightcolor black -insertbackground black \
        -relief ridge -selectbackground #c4c4c4 -selectforeground black \
        -width 221 
    vTcl:DefineAlias "$site_5_0.can61" "T2_canvas" vTcl:WidgetProc "DeepBrainSeg" 1
    place $site_5_0.but55 \
        -in $site_5_0 -x 80 -y 230 -width 100 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.can61 \
        -in $site_5_0 -x 10 -y 10 -width 221 -relwidth 0 -height 211 \
        -relheight 0 -anchor nw -bordermode ignore 
    frame $site_4_0.fra51 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 275 -highlightcolor black -width 250 
    vTcl:DefineAlias "$site_4_0.fra51" "SegFrame" vTcl:WidgetProc "DeepBrainSeg" 1
    set site_5_0 $site_4_0.fra51
    button $site_5_0.but57 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -command Get_Segmentation \
        -compound center -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightcolor black -text {Get Segmentation} 
    vTcl:DefineAlias "$site_5_0.but57" "Button5" vTcl:WidgetProc "DeepBrainSeg" 1
    canvas $site_5_0.can62 \
        -background $vTcl(actual_gui_bg) -borderwidth 2 -closeenough 1.0 \
        -height 211 -highlightcolor black -insertbackground black \
        -relief ridge -selectbackground #c4c4c4 -selectforeground black \
        -width 211 
    vTcl:DefineAlias "$site_5_0.can62" "seg_canvas" vTcl:WidgetProc "DeepBrainSeg" 1
    place $site_5_0.but57 \
        -in $site_5_0 -x 40 -y 230 -width 160 -relwidth 0 -height 35 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.can62 \
        -in $site_5_0 -x 10 -y 10 -width 211 -relwidth 0 -height 211 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.fra46 \
        -in $site_4_0 -x 10 -y 10 -width 235 -relwidth 0 -height 275 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.fra48 \
        -in $site_4_0 -x 270 -y 10 -width 245 -relwidth 0 -height 275 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.fra49 \
        -in $site_4_0 -x 540 -y 10 -width 255 -relwidth 0 -height 275 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.fra50 \
        -in $site_4_0 -x 820 -y 10 -width 245 -relwidth 0 -height 275 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.fra51 \
        -in $site_4_0 -x 1090 -y 10 -width 235 -relwidth 0 -height 275 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.fra44 \
        -in $site_3_0 -x 10 -y 10 -width 1345 -relwidth 0 -height 455 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.fra45 \
        -in $site_3_0 -x 10 -y 470 -width 1345 -relwidth 0 -height 295 \
        -relheight 0 -anchor nw -bordermode ignore 
    canvas $top.can43 \
        -background $vTcl(actual_gui_bg) -borderwidth 2 -closeenough 1.0 \
        -height 131 -highlightcolor black -insertbackground black \
        -relief ridge -selectbackground #c4c4c4 -selectforeground black \
        -width 1361 
    vTcl:DefineAlias "$top.can43" "LogoCanvas" vTcl:WidgetProc "DeepBrainSeg" 1
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.fra43 \
        -in $top -x 10 -y 160 -width 1365 -relwidth 0 -height 775 \
        -relheight 0 -anchor nw -bordermode ignore 
    place $top.can43 \
        -in $top -x 10 -y 20 -width 1361 -relwidth 0 -height 131 -relheight 0 \
        -anchor nw -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}
proc AxialScroll {args} { }
proc SagitalScroll {args} { }
proc CorronalScroll {args} { }

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top42 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

