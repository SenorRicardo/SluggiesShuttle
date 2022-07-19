// Created by Crowbar 0.71

$modelname "weapons\v_models\v_nml_hmg.mdl"

$bodygroup "v_minigun"
{
	studio "maxineviewmod.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 29.616 -11.278 -8.773

$cdmaterials "models\weapons\w_maxine\"
$cdmaterials "models\player\hvyweapon\"

$attachment "muzzle" "v_minigun_body" 12.68 -30.71 -2.9 rotate 0 -107 -180
$attachment "eject_brass" "v_minigun_body" 20 3 5 rotate -45 0 0

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$hboxset "default"

$definebone "v_minigun_parent" "" 0 0 0 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "v_minigun_body" "v_minigun_parent" 12.852959 0 0 0.000036 -106.646731 180.000005 0 0 0 0 0 0
$definebone "root" "" 0 7.999471 69.116623 0 0 -71.831146 0 0 0 0 0 0
$definebone "bip_collar_L" "root" 2.131428 -5.805779 -7.194565 -17.630713 -75.555833 -156.575379 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" -0.000023 -14.061869 0.000003 -32.440697 -48.398953 -17.732529 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -0.000008 -17.670929 0.000001 0.000002 0 -25.322269 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" -0.000004 -15.175497 -0.000006 0 0.000003 0.000001 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -2.440094 -1.974161 3.836563 11.662844 -29.680075 -44.861328 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000001 -4.365015 0 0 0.000003 27.712593 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000003 -1.793219 -0.000004 0.000002 0.000003 -17.637241 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" -0.751598 -6.859747 4.600626 77.620927 163.772418 172.636747 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000006 -3.600683 0.000004 -0.000002 0 53.651768 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" -0.713047 -6.783451 1.947193 68.239136 155.918534 177.162717 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.040714 -4.737335 -0.016132 -0.000001 -0.000003 47.021044 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -1.681087 -6.576668 -0.63979 65.725742 156.981926 -178.818328 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -2.639709 -6.552835 -2.641661 58.305322 139.782021 169.755691 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0 -3.015041 -0.000002 -0.000002 -0.000001 31.245397 0 0 0 0 0 0

