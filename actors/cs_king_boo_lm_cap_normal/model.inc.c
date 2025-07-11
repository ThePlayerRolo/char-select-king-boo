Lights1 cs_king_boo_lm_cap_normal_Gem_lights = gdSPDefLights1(
	0x7F, 0x4, 0x0,
	0xFF, 0x10, 0x0, 0x28, 0x28, 0x28);

Lights1 cs_king_boo_lm_cap_normal_Crown_Base_lights = gdSPDefLights1(
	0x7F, 0x79, 0x5,
	0xFF, 0xF3, 0x14, 0x28, 0x28, 0x28);

Texture cs_king_boo_lm_cap_normal_King_Boo_Crown_Part_1_ia16[] = {
	#include "actors/cs_king_boo_lm_cap_normal/King_Boo_Crown_Part_1.ia16.inc.c"
};

Vtx cs_king_boo_lm_cap_normal_Cap_DL_mesh_layer_1_vtx_0[29] = {
	{{{94, 88, -45}, 0, {-16, 1008}, {0x46, 0x9D, 0xDB, 0xFF}}},
	{{{8, 18, 1}, 0, {-16, 1008}, {0x00, 0x81, 0x00, 0xFF}}},
	{{{26, 88, -95}, 0, {-16, 1008}, {0x0F, 0x9D, 0xB2, 0xFF}}},
	{{{97, 88, 40}, 0, {-16, 1008}, {0x49, 0x9D, 0x20, 0xFF}}},
	{{{184, 159, -5}, 0, {-16, 1008}, {0x7F, 0xF9, 0xFC, 0xFF}}},
	{{{113, 159, -141}, 0, {-16, 1008}, {0x4C, 0xF9, 0x9A, 0xFF}}},
	{{{-38, 159, -170}, 0, {-16, 1008}, {0xE0, 0xF9, 0x85, 0xFF}}},
	{{{-56, 88, -74}, 0, {-16, 1008}, {0xCC, 0x9D, 0xC4, 0xFF}}},
	{{{-90, 88, 4}, 0, {-16, 1008}, {0xB0, 0x9D, 0x03, 0xFF}}},
	{{{-51, 88, 79}, 0, {-16, 1008}, {0xD1, 0x9D, 0x40, 0xFF}}},
	{{{33, 88, 95}, 0, {-16, 1008}, {0x14, 0x9D, 0x4D, 0xFF}}},
	{{{122, 159, 135}, 0, {-16, 1008}, {0x52, 0xF9, 0x60, 0xFF}}},
	{{{151, 190, 64}, 0, {-16, 1008}, {0x5F, 0x49, 0x2A, 0xFF}}},
	{{{146, 190, -72}, 0, {-16, 1008}, {0x5C, 0x49, 0xD0, 0xFF}}},
	{{{37, 190, -153}, 0, {-16, 1008}, {0x14, 0x49, 0x9A, 0xFF}}},
	{{{-94, 190, -118}, 0, {-16, 1008}, {0xBC, 0x49, 0xB1, 0xFF}}},
	{{{-154, 159, -70}, 0, {-16, 1008}, {0x8C, 0xF9, 0xCD, 0xFF}}},
	{{{-149, 159, 83}, 0, {-16, 1008}, {0x90, 0xF9, 0x3B, 0xFF}}},
	{{{-26, 159, 174}, 0, {-16, 1008}, {0xE8, 0xF9, 0x7D, 0xFF}}},
	{{{48, 190, 152}, 0, {-16, 1008}, {0x1B, 0x49, 0x64, 0xFF}}},
	{{{76, 220, 81}, 0, {-16, 1008}, {0x1D, 0x77, 0x22, 0xFF}}},
	{{{113, 220, -3}, 0, {-16, 1008}, {0x2D, 0x77, 0xFE, 0xFF}}},
	{{{71, 220, -84}, 0, {-16, 1008}, {0x1B, 0x77, 0xDC, 0xFF}}},
	{{{-20, 220, -102}, 0, {-16, 1008}, {0xF4, 0x77, 0xD4, 0xFF}}},
	{{{-89, 220, -42}, 0, {-16, 1008}, {0xD7, 0x77, 0xEE, 0xFF}}},
	{{{-149, 190, 6}, 0, {-16, 1008}, {0x98, 0x49, 0x04, 0xFF}}},
	{{{-86, 190, 127}, 0, {-16, 1008}, {0xC2, 0x49, 0x53, 0xFF}}},
	{{{-12, 220, 105}, 0, {-16, 1008}, {0xF7, 0x77, 0x2C, 0xFF}}},
	{{{-86, 220, 50}, 0, {-16, 1008}, {0xD8, 0x77, 0x15, 0xFF}}},
};

Gfx cs_king_boo_lm_cap_normal_Cap_DL_mesh_layer_1_tri_0[] = {
	gsSPVertex(cs_king_boo_lm_cap_normal_Cap_DL_mesh_layer_1_vtx_0 + 0, 29, 0),
	gsSP2Triangles(0, 1, 2, 0, 3, 1, 0, 0),
	gsSP2Triangles(3, 0, 4, 0, 0, 5, 4, 0),
	gsSP2Triangles(0, 2, 5, 0, 2, 6, 5, 0),
	gsSP2Triangles(2, 7, 6, 0, 2, 1, 7, 0),
	gsSP2Triangles(7, 1, 8, 0, 8, 1, 9, 0),
	gsSP2Triangles(9, 1, 10, 0, 10, 1, 3, 0),
	gsSP2Triangles(10, 3, 11, 0, 3, 4, 11, 0),
	gsSP2Triangles(11, 4, 12, 0, 12, 4, 13, 0),
	gsSP2Triangles(4, 5, 13, 0, 13, 5, 14, 0),
	gsSP2Triangles(5, 6, 14, 0, 14, 6, 15, 0),
	gsSP2Triangles(6, 16, 15, 0, 7, 16, 6, 0),
	gsSP2Triangles(7, 8, 16, 0, 8, 17, 16, 0),
	gsSP2Triangles(8, 9, 17, 0, 9, 18, 17, 0),
	gsSP2Triangles(9, 10, 18, 0, 10, 11, 18, 0),
	gsSP2Triangles(18, 11, 19, 0, 19, 11, 12, 0),
	gsSP2Triangles(19, 12, 20, 0, 12, 21, 20, 0),
	gsSP2Triangles(12, 13, 21, 0, 13, 22, 21, 0),
	gsSP2Triangles(13, 14, 22, 0, 14, 23, 22, 0),
	gsSP2Triangles(14, 15, 23, 0, 15, 24, 23, 0),
	gsSP2Triangles(15, 25, 24, 0, 15, 16, 25, 0),
	gsSP2Triangles(16, 17, 25, 0, 25, 17, 26, 0),
	gsSP2Triangles(17, 18, 26, 0, 26, 18, 19, 0),
	gsSP2Triangles(26, 19, 27, 0, 19, 20, 27, 0),
	gsSP2Triangles(28, 27, 20, 0, 28, 20, 22, 0),
	gsSP2Triangles(20, 21, 22, 0, 22, 23, 28, 0),
	gsSP2Triangles(23, 24, 28, 0, 25, 28, 24, 0),
	gsSP2Triangles(25, 26, 28, 0, 26, 27, 28, 0),
	gsSPEndDisplayList(),
};

Vtx cs_king_boo_lm_cap_normal_Cap_DL_mesh_layer_1_vtx_1[64] = {
	{{{33, 109, -136}, 0, {58, 946}, {0x17, 0xD7, 0x8A, 0xFF}}},
	{{{82, 153, -157}, 0, {58, 946}, {0x2B, 0xA9, 0xAE, 0xFF}}},
	{{{109, 109, -97}, 0, {58, 894}, {0x56, 0xCF, 0xB0, 0xFF}}},
	{{{-35, 114, -132}, 0, {1008, -16}, {0xD7, 0xDB, 0x8E, 0xFF}}},
	{{{-1, 167, -164}, 0, {1008, -16}, {0xF6, 0xC4, 0x91, 0xFF}}},
	{{{33, 109, -136}, 0, {-16, -16}, {0x17, 0xD7, 0x8A, 0xFF}}},
	{{{160, 145, -86}, 0, {58, 894}, {0x4C, 0xA1, 0xDC, 0xFF}}},
	{{{145, 104, -9}, 0, {58, 946}, {0x77, 0xD3, 0xF8, 0xFF}}},
	{{{182, 145, 34}, 0, {58, 946}, {0x55, 0xA3, 0x10, 0xFF}}},
	{{{123, 98, 70}, 0, {58, 894}, {0x66, 0xD6, 0x3F, 0xFF}}},
	{{{122, 148, 124}, 0, {58, 894}, {0x45, 0xB2, 0x49, 0xFF}}},
	{{{63, 109, 138}, 0, {58, 894}, {0x2E, 0xD4, 0x6E, 0xFF}}},
	{{{63, 109, 138}, 0, {-16, 1008}, {0x2E, 0xD4, 0x6E, 0xFF}}},
	{{{-33, 154, 171}, 0, {-16, 1008}, {0xFE, 0xB2, 0x64, 0xFF}}},
	{{{-43, 114, 140}, 0, {-16, 1008}, {0xE0, 0xCC, 0x6F, 0xFF}}},
	{{{-116, 153, 131}, 0, {-16, 1008}, {0xC8, 0xA7, 0x48, 0xFF}}},
	{{{-118, 114, 82}, 0, {-16, 1008}, {0xA4, 0xCA, 0x44, 0xFF}}},
	{{{-118, 114, 82}, 0, {58, 894}, {0xA4, 0xCA, 0x44, 0xFF}}},
	{{{-188, 165, 54}, 0, {58, 894}, {0xB0, 0xA1, 0x19, 0xFF}}},
	{{{-144, 114, 0}, 0, {58, 946}, {0x8E, 0xC9, 0xF9, 0xFF}}},
	{{{-178, 174, -64}, 0, {58, 946}, {0xAB, 0xA9, 0xDC, 0xFF}}},
	{{{-113, 114, -72}, 0, {58, 894}, {0xA3, 0xCF, 0xB9, 0xFF}}},
	{{{-116, 167, -125}, 0, {58, 894}, {0xC5, 0xAF, 0xB3, 0xFF}}},
	{{{-35, 114, -132}, 0, {6, 946}, {0xD7, 0xDB, 0x8E, 0xFF}}},
	{{{-35, 114, -132}, 0, {322, 142}, {0xD7, 0xDB, 0x8E, 0xFF}}},
	{{{33, 109, -136}, 0, {745, 134}, {0x17, 0xD7, 0x8A, 0xFF}}},
	{{{33, 6, -123}, 0, {730, 986}, {0x1C, 0xF1, 0x85, 0xFF}}},
	{{{-38, 6, -122}, 0, {319, 986}, {0xD1, 0xF2, 0x8B, 0xFF}}},
	{{{33, 6, -123}, 0, {288, 999}, {0x1C, 0xF1, 0x85, 0xFF}}},
	{{{33, 109, -136}, 0, {271, 160}, {0x17, 0xD7, 0x8A, 0xFF}}},
	{{{109, 109, -97}, 0, {781, 140}, {0x56, 0xCF, 0xB0, 0xFF}}},
	{{{109, 6, -83}, 0, {785, 1012}, {0x60, 0xF4, 0xAE, 0xFF}}},
	{{{109, 6, -83}, 0, {268, 992}, {0x60, 0xF4, 0xAE, 0xFF}}},
	{{{109, 109, -97}, 0, {283, 135}, {0x56, 0xCF, 0xB0, 0xFF}}},
	{{{145, 104, -9}, 0, {691, 132}, {0x77, 0xD3, 0xF8, 0xFF}}},
	{{{138, 6, -4}, 0, {686, 993}, {0x7F, 0xF8, 0xFB, 0xFF}}},
	{{{118, 6, 70}, 0, {725, 977}, {0x6A, 0xF2, 0x44, 0xFF}}},
	{{{138, 6, -4}, 0, {277, 987}, {0x7F, 0xF8, 0xFB, 0xFF}}},
	{{{145, 104, -9}, 0, {268, 132}, {0x77, 0xD3, 0xF8, 0xFF}}},
	{{{123, 98, 70}, 0, {737, 139}, {0x66, 0xD6, 0x3F, 0xFF}}},
	{{{123, 98, 70}, 0, {223, 119}, {0x66, 0xD6, 0x3F, 0xFF}}},
	{{{45, 6, 117}, 0, {720, 996}, {0x29, 0xE8, 0x76, 0xFF}}},
	{{{118, 6, 70}, 0, {212, 977}, {0x6A, 0xF2, 0x44, 0xFF}}},
	{{{63, 109, 138}, 0, {721, 138}, {0x2E, 0xD4, 0x6E, 0xFF}}},
	{{{-29, 6, 118}, 0, {746, 992}, {0xDD, 0xE6, 0x77, 0xFF}}},
	{{{45, 6, 117}, 0, {292, 1005}, {0x29, 0xE8, 0x76, 0xFF}}},
	{{{63, 109, 138}, 0, {294, 147}, {0x2E, 0xD4, 0x6E, 0xFF}}},
	{{{-43, 114, 140}, 0, {751, 136}, {0xE0, 0xCC, 0x6F, 0xFF}}},
	{{{-118, 114, 82}, 0, {832, 129}, {0xA4, 0xCA, 0x44, 0xFF}}},
	{{{-104, 6, 72}, 0, {818, 992}, {0x9C, 0xEA, 0x4B, 0xFF}}},
	{{{-29, 6, 118}, 0, {83, 1012}, {0xDD, 0xE6, 0x77, 0xFF}}},
	{{{-43, 114, 140}, 0, {101, 136}, {0xE0, 0xCC, 0x6F, 0xFF}}},
	{{{-144, 114, 0}, 0, {764, 153}, {0x8E, 0xC9, 0xF9, 0xFF}}},
	{{{-104, 6, 72}, 0, {268, 991}, {0x9C, 0xEA, 0x4B, 0xFF}}},
	{{{-118, 114, 82}, 0, {263, 154}, {0xA4, 0xCA, 0x44, 0xFF}}},
	{{{-130, 6, -1}, 0, {757, 1016}, {0x83, 0xEC, 0xF7, 0xFF}}},
	{{{-144, 114, 0}, 0, {296, 153}, {0x8E, 0xC9, 0xF9, 0xFF}}},
	{{{-90, 6, -73}, 0, {734, 994}, {0x9E, 0xF1, 0xB0, 0xFF}}},
	{{{-130, 6, -1}, 0, {289, 977}, {0x83, 0xEC, 0xF7, 0xFF}}},
	{{{-113, 114, -72}, 0, {734, 125}, {0xA3, 0xCF, 0xB9, 0xFF}}},
	{{{-113, 114, -72}, 0, {324, 118}, {0xA3, 0xCF, 0xB9, 0xFF}}},
	{{{-38, 6, -122}, 0, {691, 1002}, {0xD1, 0xF2, 0x8B, 0xFF}}},
	{{{-90, 6, -73}, 0, {337, 988}, {0x9E, 0xF1, 0xB0, 0xFF}}},
	{{{-35, 114, -132}, 0, {697, 139}, {0xD7, 0xDB, 0x8E, 0xFF}}},
};

Gfx cs_king_boo_lm_cap_normal_Cap_DL_mesh_layer_1_tri_1[] = {
	gsSPVertex(cs_king_boo_lm_cap_normal_Cap_DL_mesh_layer_1_vtx_1 + 0, 64, 0),
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
	gsSP2Triangles(2, 6, 7, 0, 7, 8, 9, 0),
	gsSP2Triangles(9, 10, 11, 0, 12, 13, 14, 0),
	gsSP2Triangles(14, 15, 16, 0, 17, 18, 19, 0),
	gsSP2Triangles(19, 20, 21, 0, 21, 22, 23, 0),
	gsSP2Triangles(24, 25, 26, 0, 24, 26, 27, 0),
	gsSP2Triangles(28, 29, 30, 0, 28, 30, 31, 0),
	gsSP2Triangles(32, 33, 34, 0, 32, 34, 35, 0),
	gsSP2Triangles(36, 37, 38, 0, 36, 38, 39, 0),
	gsSP2Triangles(40, 41, 42, 0, 40, 43, 41, 0),
	gsSP2Triangles(44, 45, 46, 0, 44, 46, 47, 0),
	gsSP2Triangles(48, 49, 50, 0, 48, 50, 51, 0),
	gsSP2Triangles(52, 53, 54, 0, 52, 55, 53, 0),
	gsSP2Triangles(56, 57, 58, 0, 56, 59, 57, 0),
	gsSP2Triangles(60, 61, 62, 0, 60, 63, 61, 0),
	gsSPEndDisplayList(),
};


Gfx mat_cs_king_boo_lm_cap_normal_Gem[] = {
	gsSPCopyLightsPlayerPart(EMBLEM),
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT, 0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT),
	gsDPSetAlphaDither(G_AD_NOISE),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsSPEndDisplayList(),
};

Gfx mat_revert_cs_king_boo_lm_cap_normal_Gem[] = {
	gsDPPipeSync(),
	gsDPSetAlphaDither(G_AD_DISABLE),
	gsSPEndDisplayList(),
};

Gfx mat_cs_king_boo_lm_cap_normal_Crown_Base[] = {
	gsSPCopyLightsPlayerPart(CAP),
	gsDPPipeSync(),
	gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT),
	gsDPSetAlphaDither(G_AD_NOISE),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b_LOAD_BLOCK, 1, cs_king_boo_lm_cap_normal_King_Boo_Crown_Part_1_ia16),
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 1023, 256),
	gsDPSetTile(G_IM_FMT_IA, G_IM_SIZ_16b, 8, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 5, 0, G_TX_WRAP | G_TX_NOMIRROR, 5, 0),
	gsDPSetTileSize(0, 0, 0, 124, 124),
	gsSPEndDisplayList(),
};

Gfx mat_revert_cs_king_boo_lm_cap_normal_Crown_Base[] = {
	gsDPPipeSync(),
	gsDPSetAlphaDither(G_AD_DISABLE),
	gsSPEndDisplayList(),
};

Gfx cs_king_boo_lm_cap_normal_Cap_DL_mesh_layer_1[] = {
	gsSPDisplayList(mat_cs_king_boo_lm_cap_normal_Gem),
	gsSPDisplayList(cs_king_boo_lm_cap_normal_Cap_DL_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_cs_king_boo_lm_cap_normal_Gem),
	gsSPDisplayList(mat_cs_king_boo_lm_cap_normal_Crown_Base),
	gsSPDisplayList(cs_king_boo_lm_cap_normal_Cap_DL_mesh_layer_1_tri_1),
	gsSPDisplayList(mat_revert_cs_king_boo_lm_cap_normal_Crown_Base),
	gsSPEndDisplayList(),
};

Gfx cs_king_boo_lm_cap_normal_material_revert_render_settings[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineLERP(0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT, 0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT),
	gsSPTexture(65535, 65535, 0, 0, 0),
	gsDPSetEnvColor(255, 255, 255, 255),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, 0),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP  | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 1023, 256),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, G_TX_CLAMP | G_TX_NOMIRROR, 5, 0, G_TX_CLAMP | G_TX_NOMIRROR, 5, 0),
	gsDPSetTileSize(0, 0, 0, 124, 124),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, 0),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 256, 6, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(6, 0, 0, 1023, 256),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, G_TX_CLAMP | G_TX_NOMIRROR, 5, 0, G_TX_CLAMP | G_TX_NOMIRROR, 5, 0),
	gsDPSetTileSize(1, 0, 0, 124, 124),
	gsSPEndDisplayList(),
};

