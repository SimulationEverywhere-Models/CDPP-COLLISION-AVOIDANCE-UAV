[top]
components : uav

[uav]
type : cell
width : 20
height : 20
delay : transport
defaultDelayTime : 100
border : wrapped
neighbors : uav(-2,-2) uav(-1,-2) uav(0,-2) uav(1,-2) uav(2,-2)
neighbors : uav(-2,-1) uav(-1,-1) uav(0,-1) uav(1,-1) uav(2,-1)
neighbors : uav(-2,0) uav(-1,0) uav(0,0) uav(1,0) uav(2,0)
neighbors : uav(-2,1) uav(-1,1) uav(0,1) uav(1,1) uav(2,1)
neighbors : uav(-2,2) uav(-1,2) uav(0,2) uav(1,2) uav(2,2)
neighbors : uav(3,-2) uav(3,-1) uav(3,0) uav(3,1) uav(3,2)
initialvalue : 0
initialrowvalue : 5    00000000099900000000
%initialrowvalue : 0     00010100001010010000
initialrowvalue : 0     00000100000000000000
initialrowvalue : 15    00000000900000000000
initialrowvalue : 9     00009090000000090900
initialrowvalue : 10    00099999000000099900
initialrowvalue : 17   00999000000099900000
%initialrowvalue : 10   00000000000000090000
%zone : noFlyZone1-rule { (10,4) }
%zone : noFlyZone2-rule { (10,15) }
localtransition : uav-rule
zone : noFlyZone1-rule { (9,4) }
zone : noFlyZone2-rule { (9,15) }
zone : noFlyZone3-rule { (9,6) }
zone : noFlyZone4-rule { (10,3)..(10,7) }
zone : noFlyZone5-rule { (9,17) }
zone : noFlyZone6-rule { (10,15)..(10,17) }
zone : noFlyZone7-rule { (15,8) }
zone : noFlyZone8-rule { (5,9)..(5,11) }
zone : noFlyZone9-rule { (17,12)..(17,14) }
zone : noFlyZone10-rule { (17,2)..(17,4) }

[noFlyZone1-rule]
rule : 9 100 { (0,0) = 9 }
%rule : 9 100 { (0,0) = 9 }

[noFlyZone2-rule]
rule : 9 100 { (0,0) = 9 }
%rule : 9 100 { (0,0) = 9 }

[noFlyZone3-rule]
rule : 9 100 { (0,0) = 9 }
%rule : 9 100 { (0,0) = 9 }

[noFlyZone4-rule]
rule : 9 100 { (0,0) = 9 }
%rule : 9 100 { (0,0) = 9 }

[noFlyZone5-rule]
rule : 9 100 { (0,0) = 9 }
%rule : 9 100 { (0,0) = 9 }

[noFlyZone6-rule]
rule : 9 100 { (0,0) = 9 }
%rule : 9 100 { (0,0) = 9 }

[noFlyZone7-rule]
rule : 9 100 { (0,0) = 9 }
%rule : 9 100 { (0,0) = 9 }

[noFlyZone8-rule]
rule : 9 100 { (0,0) = 9 }
%rule : 9 100 { (0,0) = 9 }

[noFlyZone9-rule]
rule : 9 100 { (0,0) = 9 }
%rule : 9 100 { (0,0) = 9 }

[noFlyZone10-rule]
rule : 9 100 { (0,0) = 9 }
%rule : 9 100 { (0,0) = 9 }

[uav-rule]
%000
rule : 1 100 { (0,0)=0 and (0,-1)=0 and (0,1)=0 and (-1,0)=1}
rule : 0 100 { (1,0)=1 and (0,0)=1 }

%009
rule : 1 100 { (0,0)=0 and (0,-1)=0 and (0,1)!=0 and (-1,0)=1}
rule : 0 100 { (1,0)=1 and (0,0)=1 }

%090   --->
%9?0
rule : 1 100 { (0,0)=0 and (1,-1)!=0 and (1,-2)=0 and (1,0)=0 and (0,-1)=1 and (2,-2)!=0 and (2,0)=0}
rule : 0 100 { (0,1)=1 and (0,0)=1 }

%090   <---
%0?9
rule : 1 100 { (0,0)=0 and (1,1)!=0 and (1,2)=0 and (1,0)=0 and (0,1)=1 and (2,2)!=0 and (2,0)=0}
rule : 0 100 { (0,1)=1 and (0,0)=1 }

%090   <---
%0?0
rule : 1 100 { (0,0)=0 and (1,1)!=0 and (1,2)=0 and (1,0)=0 and (0,1)=1 and (2,2)=0 and (2,0)=0}
rule : 0 100 { (0,1)=1 and (0,0)=1 }

%090   <---
%9?9
rule : 1 100 { (0,0)=0 and (1,1)!=0 and (1,2)=0 and (1,0)=0 and (0,1)=1 and (2,2)!=0 and (2,0)!=0}
rule : 0 100 { (0,1)=1 and (0,0)=1 }



%090   --->
%rule : 1 100 { (0,0)=0 and (1,-1)!=0 and (1,-2)=0 and (1,0)=0 and (0,-1)=1}
%rule : 0 100 { (0,1)=1 and (0,0)=1 }



%099	<----
rule : 1 100 { (0,0)=0 and (1,1)!=0 and (1,2)=9 and (0,1)=1 and (1,0)=0}
rule : 0 100 { (0,-1)=1 and (0,0)=1 }

%900
rule : 1 100 { (0,0)=0 and (0,-1)!=0 and (0,1)=0 and (-1,0)=1}
rule : 0 100 { (1,0)=1 and (0,0)=1 }

%909  <---
%090
rule : 1 100 { (0,0)=0 and (0,1)=1 and (1,1)=0 and (2,1)!=0 and (1,0)!=0 and (1,2)!=0 and (2,0)=0 and (2,2)=0}
rule : 0 100 { (0,-1)=1 and (0,0)=1 }

%909
%009
rule : 1 100 { (0,0)=0 and (0,1)!=0 and (0,-1)!=0 and (1,0)=0 and (1,1)!=0 and (1,-1)=0 and (-1,0)=1}
rule : 0 100 { (1,0)=1 and (0,0)=1 }


%909    <---
%099
rule : 1 100 { (0,0)=0 and (0,1)=1 and (1,1)=0 and (2,1)=9 and (1,0)!=0 and (1,2)!=0 and (2,0)=0 and (2,2)!=0}
rule : 0 100 { (0,-1)=1 and (0,0)=1 }

%909
%900
rule : 1 100 { (0,0)=0 and (0,1)!=0 and (0,-1)!=0 and (1,0)=0 and (1,1)=0 and (1,-1)!=0 and (-1,0)=1}
rule : 0 100 { (1,0)=1 and (0,0)=1 }

%909
%999   <----
rule : 1 100 { (0,0)=0 and (0,1)=1 and (1,1)=0 and (2,1)!=0 and (1,0)!=0 and (1,2)!=0 and (2,0)!=0 and (2,2)!=0}
rule : 0 100 { (0,-1)=1 and (0,0)=1 }

%990 --->
rule : 1 100 { (0,0)=0 and (1,-1)!=0 and (1,-2)!=0 and (1,0)=0 and (0,-1)=1}
rule : 0 100 { (0,1)=1 and (0,0)=1 }

%999
rule : 1 100 { (0,0)=0 and (1,-1)!=0 and (1,-2)!=0 and (1,0)!=0 and (0,-1)=1}
rule : 0 100 { (0,1)=1 and (0,0)=1 }










rule : 0 100 { t }