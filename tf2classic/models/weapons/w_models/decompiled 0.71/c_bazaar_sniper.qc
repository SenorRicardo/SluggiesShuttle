// Created by Crowbar 0.71

$modelname "workshop/weapons/w_models/w_nml_enfield_sniper.mdl"

$bodygroup "body"
{
	studio "c_bazaar_sniper.smd"
}

$lod 11
{
	replacemodel "c_bazaar_sniper.smd" "c_bazaar_sniper_lod1.smd"
	replacebone "c_weapon_stattrack" "weapon_bone"
	nofacial
}
$lod 17
{
	replacemodel "c_bazaar_sniper.smd" "c_bazaar_sniper_lod2.smd"
	replacebone "c_weapon_stattrack" "weapon_bone"
	nofacial
}
$lod 23
{
	replacemodel "c_bazaar_sniper.smd" "c_bazaar_sniper_lod3.smd"
	replacebone "c_weapon_stattrack" "weapon_bone"
	nofacial
}

$surfaceprop "metal"

$contents "solid"

$illumposition -1.285 -4.487 -0.062

$cdmaterials "models\player\yardr\sniper\0x00be0c45\service_rifle\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 3.9 51.9 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 0 4.69 3.14 rotate 0 158.54 0
$attachment "pedestal_0" "weapon_bone" 0 2.83 10.84 rotate -90 -90 0
$attachment "icon_camera" "weapon_bone" 52.46 15.88 62.46 rotate 31.82 -165.47 102.27
$attachment "unusual_0" "weapon_bone" 0 4.26 54.61 rotate -90 0 0
$attachment "unusual_1" "weapon_bone" 0 4.26 44.49 rotate -90 0 0
$attachment "unusual_2" "weapon_bone" 0 4.26 34.99 rotate -90 0 0
$attachment "unusual_3" "weapon_bone" 0 4.26 24.36 rotate -90 0 0
$attachment "unusual_4" "weapon_bone" 0 4.26 14.26 rotate -90 0 0
$attachment "unusual_5" "weapon_bone" 0 4.26 -0.24 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -30.761 -4.099 -8.367 39.734 1.529 8.243

$definebone "weapon_bone" "" 0 -1.772578 -15.121245 0 0 0 0 0 0 0 0 0
$definebone "vm_weapon_bone_4" "weapon_bone" -0.49633 4.267 2.333208 0 0 0 0 0 0 0 0 0
$definebone "c_weapon_stattrack" "weapon_bone" 0.978939 3.126992 9.69643 -0.005237 -2.756248 -89.371885 0 0 0 0 0 0
$definebone "jiggle_1" "weapon_bone" -0.462559 1.1712 37.589447 16.404873 -2.63721 177.915185 0 0 0 0 0 0
$definebone "jiggle_2" "weapon_bone" -0.493484 -4.319022 -10.813754 -8.42735 168.549739 -14.615982 0 0 0 0 0 0

$bonemerge "weapon_bone"
$bonemerge "c_weapon_stattrack"

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

$sequence "idle" {
	"c_bazaar_sniper_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "c_bazaar_sniper_physics.smd"
{
	$mass 8.012039
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
