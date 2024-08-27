struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(440f, 21712i), vec2<f32>(1074f, 2341f), Struct_1(-547f, 0i)), Struct_2(Struct_1(-1000f, -1i), vec2<f32>(-1492f, -1000f), Struct_1(-760f, -3515i)), Struct_2(Struct_1(188f, 21142i), vec2<f32>(-1880f, 523f), Struct_1(822f, 0i)), Struct_2(Struct_1(-1031f, 1i), vec2<f32>(125f, -363f), Struct_1(-856f, -6311i)), Struct_2(Struct_1(-1210f, 66665i), vec2<f32>(721f, -178f), Struct_1(605f, 1420i)), Struct_2(Struct_1(757f, 6176i), vec2<f32>(-1622f, 1763f), Struct_1(542f, 4623i)), Struct_2(Struct_1(448f, 79i), vec2<f32>(807f, 1000f), Struct_1(-384f, 2147483647i)), Struct_2(Struct_1(626f, i32(-2147483648)), vec2<f32>(1098f, 2055f), Struct_1(265f, -6733i)), Struct_2(Struct_1(1962f, i32(-2147483648)), vec2<f32>(-1627f, -886f), Struct_1(-818f, -30032i)), Struct_2(Struct_1(-1057f, -1i), vec2<f32>(-1481f, 287f), Struct_1(-480f, 15203i)), Struct_2(Struct_1(288f, -1i), vec2<f32>(681f, 425f), Struct_1(-2561f, i32(-2147483648))), Struct_2(Struct_1(1580f, -11556i), vec2<f32>(-121f, -528f), Struct_1(-744f, i32(-2147483648))), Struct_2(Struct_1(-302f, 9433i), vec2<f32>(975f, -121f), Struct_1(118f, i32(-2147483648))), Struct_2(Struct_1(-1307f, 1i), vec2<f32>(-1239f, -159f), Struct_1(919f, -1i)), Struct_2(Struct_1(-372f, -21422i), vec2<f32>(110f, -1125f), Struct_1(243f, -9242i)), Struct_2(Struct_1(-378f, i32(-2147483648)), vec2<f32>(518f, 717f), Struct_1(-1170f, 1i)), Struct_2(Struct_1(621f, 2685i), vec2<f32>(-138f, -1232f), Struct_1(559f, 18486i)), Struct_2(Struct_1(405f, -15147i), vec2<f32>(1239f, -354f), Struct_1(-1233f, i32(-2147483648))), Struct_2(Struct_1(1000f, 631i), vec2<f32>(1000f, -372f), Struct_1(-1090f, i32(-2147483648))), Struct_2(Struct_1(250f, -3649i), vec2<f32>(290f, 218f), Struct_1(-929f, 0i)), Struct_2(Struct_1(-540f, -23019i), vec2<f32>(-583f, 1026f), Struct_1(-856f, 2147483647i)), Struct_2(Struct_1(-1997f, -66009i), vec2<f32>(-905f, 143f), Struct_1(-1299f, 2147483647i)), Struct_2(Struct_1(814f, 1i), vec2<f32>(-934f, -191f), Struct_1(795f, -16012i)));

var<private> global1: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(934f, 403f, 603f, 1020f), vec4<f32>(1000f, -649f, 664f, -490f), vec4<f32>(-891f, -175f, -309f, 177f), vec4<f32>(653f, -777f, 986f, -379f), vec4<f32>(-1914f, -1000f, -1525f, -1019f), vec4<f32>(-1329f, -411f, -1512f, 1332f), vec4<f32>(1176f, -1679f, -635f, -378f), vec4<f32>(-356f, 515f, 1191f, -247f), vec4<f32>(-1345f, 275f, 1000f, -752f), vec4<f32>(1000f, -265f, -1426f, 503f), vec4<f32>(885f, -1000f, -1007f, 375f), vec4<f32>(-102f, 589f, -403f, 1254f), vec4<f32>(664f, 115f, -387f, 1000f), vec4<f32>(-1000f, -1000f, 339f, -597f), vec4<f32>(828f, -250f, -1597f, 2371f), vec4<f32>(-918f, 429f, -425f, 1236f), vec4<f32>(1639f, -1801f, -1000f, 637f), vec4<f32>(-334f, -1949f, 924f, 1202f), vec4<f32>(1323f, 518f, -240f, 283f), vec4<f32>(-1257f, -1008f, 1199f, 1000f), vec4<f32>(1529f, -432f, 637f, -838f), vec4<f32>(-388f, -891f, -1414f, -1762f), vec4<f32>(-426f, 916f, 153f, -1122f), vec4<f32>(-1037f, 1347f, 991f, 553f), vec4<f32>(-1282f, -445f, -1092f, -1163f));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-19094i, vec2<u32>(1u, 1u));
}

