// Created by Crowbar 0.71

$modelname "v_nml_enfield_sniper.mdl"

$bodygroup "studio"
{
	studio "v_nml_enfield.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\weapons\enfield\"

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 3.9 51.9 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 0 4.69 3.14 rotate 0 158.54 0

$cbox 0 0 0 0 0 0

$bbox -136.012 -150.453 -19.213 50.901 2.672 34.634

$definebone "weapon_bone" "" -18.381657 38.365097 -0.48736 0 0 0 0 0 0 0 0 0
$definebone "root" "" -1.603516 -10.335938 2.09375 0.010485 -0.010485 89.992988 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 4.279694 -17.992743 2.53914 -12.163953 15.449287 -94.257519 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.188005 -14.058311 -3.26346 -0.634095 -3.369334 -38.14593 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0 -12.37536 0 -0.000005 0.000009 -0.710548 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" -0.000003 -1.058859 0 57.063218 89.509062 95.821045 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809825 -0.49992 2.575139 -9.007981 -21.46006 -10.629682 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0.000002 -3.099531 0.000002 0 0.00001 15.747797 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0 -1.64941 0 0.000002 0.000009 -18.191068 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008207 -1.168278 1.640405 61.198884 -118.799256 -115.97944 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" -0.000001 -3.307278 0 -10.951971 32.195179 -1.137149 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000002 -2.892876 -0.000002 0.000003 -0.000017 23.300253 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000001 -1.789225 0.000004 -0.000006 -0.000015 8.963489 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108311 -1.322845 0.774748 75.180029 -147.650877 -144.614147 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0 -3.408821 0 -6.141873 11.826468 13.018627 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000001 -2.799519 -0.000002 0.000002 -0.000007 39.115322 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000001 -1.822439 0.000004 -0.000002 -0.000012 14.700046 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205323 -1.37532 -0.310268 77.044028 145.98248 149.993809 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.000003 -3.388165 -0.000002 0.778596 -0.720674 16.126072 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" -0.000004 -2.085264 0 0.000003 -0.00001 60.052526 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0.000005 -1.544365 -0.000008 -0.000007 -0.000006 12.350689 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193996 -1.163864 -1.333151 69.132934 115.57277 124.448314 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" -0.000004 -3.297548 -0.000004 1.354873 -7.076729 43.943238 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" -0.000003 -1.951862 0 -0.000015 -0.000012 42.671282 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0.000002 -1.231825 0.000004 -0.000017 0 22.624836 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -15.639386 -6.109516 -20.152962 14.039182 -8.865147 118.496037 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187957 14.058361 3.263467 -0.53044 -2.836477 -54.882824 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" 0.000023 12.375401 0.00001 -0.000006 0.000009 -0.710534 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000053 1.058851 -0.000007 -4.152341 17.217498 44.908306 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809744 0.499897 -2.575145 -16.492062 -34.66335 -20.040229 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000009 3.099563 0.000011 -0.000009 0.000024 44.494116 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0 1.649405 0.000001 0.000012 0.000017 23.050381 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.00817 1.168326 -1.640393 61.198891 -118.799256 -115.97944 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000021 3.307257 0.00001 -15.198047 22.79061 6.62329 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000036 2.89282 0.000028 0.000003 0.00001 30.855332 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.00003 1.789289 -0.000042 0.000009 0.000004 17.773269 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108294 1.322824 -0.774755 75.180029 -147.650904 -144.614161 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" 0.000005 3.408812 0.000009 -6.141876 11.826476 52.145018 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000011 2.799552 0.000006 -0.000001 -0.000003 63.730569 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000013 1.822388 0.00001 0 -0.000003 54.069222 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205294 1.375276 0.310249 77.044028 145.982453 149.993837 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000023 3.38823 0.000002 0.773501 -0.7162 55.251815 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0 2.085243 0.000006 0.000004 -0.000012 60.181794 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000009 1.544374 0.000017 -0.000011 -0.000008 34.862392 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.19398 1.163817 1.33313 69.132921 115.57277 124.448328 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000009 3.29759 0.000028 1.356192 -7.076203 53.472325 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000013 1.951801 -0.000002 -0.000008 -0.000001 53.199384 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000008 1.231857 -0.000043 0 0.000003 45.137138 0 0 0 0 0 0
$definebone "jiggle_1" "weapon_bone" -0.462559 1.1712 37.589447 16.404875 -2.63721 177.915185 0 0 0 0 0 0
$definebone "jiggle_2" "weapon_bone" -0.493484 -4.319023 -10.813754 -8.42735 168.549739 -14.615982 0 0 0 0 0 0
$definebone "enfield_bolt" "weapon_bone" -0.49633 4.266998 2.333208 0 0 0 0 0 0 0 0 0
$definebone "enfield_mag" "weapon_bone" -0.399393 1.637737 8.014982 0 0 0 0 0 0 0 0 0
$definebone "enfield_bolt_back" "weapon_bone" -0.49633 4.266998 1.514623 0 0 0 0 0 0 0 0 0
$definebone "enfield_bullet" "weapon_bone" -0.361004 3.936428 5.761809 0 0 0 0 0 0 0 0 0

$bonemerge "weapon_bone"
$bonemerge "root"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_wrist_L"
$bonemerge "bip_hand_L"
$bonemerge "bip_thumb_0_L"
$bonemerge "bip_thumb_1_L"
$bonemerge "bip_thumb_2_L"
$bonemerge "bip_index_meta_0_L"
$bonemerge "bip_index_0_L"
$bonemerge "bip_index_1_L"
$bonemerge "bip_index_2_L"
$bonemerge "bip_middle_meta_0_L"
$bonemerge "bip_middle_0_L"
$bonemerge "bip_middle_1_L"
$bonemerge "bip_middle_2_L"
$bonemerge "bip_ring_meta_0_L"
$bonemerge "bip_ring_0_L"
$bonemerge "bip_ring_1_L"
$bonemerge "bip_ring_2_L"
$bonemerge "bip_pinky_meta_0_L"
$bonemerge "bip_pinky_0_L"
$bonemerge "bip_pinky_1_L"
$bonemerge "bip_pinky_2_L"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_wrist_R"
$bonemerge "bip_hand_R"
$bonemerge "bip_thumb_0_R"
$bonemerge "bip_thumb_1_R"
$bonemerge "bip_thumb_2_R"
$bonemerge "bip_index_meta_0_R"
$bonemerge "bip_index_0_R"
$bonemerge "bip_index_1_R"
$bonemerge "bip_index_2_R"
$bonemerge "bip_middle_meta_0_R"
$bonemerge "bip_middle_0_R"
$bonemerge "bip_middle_1_R"
$bonemerge "bip_middle_2_R"
$bonemerge "bip_ring_meta_0_R"
$bonemerge "bip_ring_0_R"
$bonemerge "bip_ring_1_R"
$bonemerge "bip_ring_2_R"
$bonemerge "bip_pinky_meta_0_R"
$bonemerge "bip_pinky_0_R"
$bonemerge "bip_pinky_1_R"
$bonemerge "bip_pinky_2_R"

$jigglebone "jiggle_1"
{
	is_flexible
	{
		length 20
		tip_mass 500
		pitch_stiffness 100
		pitch_damping 2
		yaw_stiffness 100
		yaw_damping 2
		along_stiffness 100
		along_damping 0
		angle_constraint 89.000001
	}
}
$jigglebone "jiggle_2"
{
	is_flexible
	{
		length 20
		tip_mass 500
		pitch_stiffness 100
		pitch_damping 2
		yaw_stiffness 100
		yaw_damping 2
		along_stiffness 100
		along_damping 0
		angle_constraint 89.000001
	}
}

$sectionframes 30 133

$sequence "idle" {
	"v_nml_enfield_sniper_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "draw" {
	"v_nml_enfield_sniper_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "fire" {
	"v_nml_enfield_sniper_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "reload" {
	"v_nml_enfield_sniper_anims\reload.smd"
	activity "ACT_RELOAD_START" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
