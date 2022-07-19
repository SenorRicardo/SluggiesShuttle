// Created by Crowbar 0.71

$modelname "weapons\w_models\w_nml_hmg.mdl"

$bodygroup "w_minigun"
{
	studio "maxine.smd"
}


$surfaceprop "metal"

$contents "solid"

$illumposition 25.542 -3.158 -12.893

$cdmaterials "models\weapons\w_maxine\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" -1.5 -6.26 57.76 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 2.97 -4.29 21.15 rotate 0 -45 -90

$cbox 0 0 0 0 0 0

$bbox -33.004 -19.68 -32.754 57.313 58.109 9.911

$hboxset "default"
$hbox 0 "weapon_bone" -15.976 -32.754002 -6.774 9.661 6.969 35.651001

$definebone "weapon_bone" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0


$sequence "idle" {
	"w_minigun_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "spool_up" {
	"w_minigun_anims\spool_up.smd"
	activity "ACT_MP_ATTACK_STAND_PREFIRE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "fire_loop" {
	"w_minigun_anims\fire_loop.smd"
	activity "ACT_MP_ATTACK_STAND_PRIMARY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "spool_down" {
	"w_minigun_anims\spool_down.smd"
	activity "ACT_MP_ATTACK_STAND_POSTFIRE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_minigun_physics.smd"
{
	$mass 50000
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
