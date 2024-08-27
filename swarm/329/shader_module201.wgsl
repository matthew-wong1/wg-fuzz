struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: bool,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool = true;

var<private> global2: bool = false;

var<private> global3: Struct_2;

var<private> global4: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<f32>(336f, 1000f, -439f, 289f), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec4<bool>(false, true, false, false), false, vec2<bool>(false, false), vec3<f32>(358f, 474f, 1115f))), Struct_2(vec4<f32>(961f, 312f, 1605f, 720f), Struct_1(vec2<i32>(1i, 1i), vec4<bool>(false, false, false, true), false, vec2<bool>(true, false), vec3<f32>(-936f, 239f, -762f))), Struct_2(vec4<f32>(625f, -3018f, -268f, 150f), Struct_1(vec2<i32>(i32(-2147483648), -1i), vec4<bool>(false, true, false, true), true, vec2<bool>(false, true), vec3<f32>(1418f, -1717f, 1548f))), Struct_2(vec4<f32>(-1040f, -858f, 268f, 541f), Struct_1(vec2<i32>(10353i, -1i), vec4<bool>(true, false, true, true), false, vec2<bool>(true, true), vec3<f32>(-1220f, 598f, 1412f))), Struct_2(vec4<f32>(813f, -668f, 1000f, 2345f), Struct_1(vec2<i32>(2147483647i, 755i), vec4<bool>(true, true, true, true), true, vec2<bool>(false, true), vec3<f32>(468f, -102f, 183f))), Struct_2(vec4<f32>(-444f, -1197f, -834f, -1627f), Struct_1(vec2<i32>(2147483647i, 1i), vec4<bool>(false, false, true, false), true, vec2<bool>(true, true), vec3<f32>(-1000f, -858f, 586f))), Struct_2(vec4<f32>(-1293f, 630f, 918f, 446f), Struct_1(vec2<i32>(-75904i, 1i), vec4<bool>(false, false, false, false), false, vec2<bool>(false, true), vec3<f32>(-1283f, -1575f, 816f))), Struct_2(vec4<f32>(530f, 601f, 1913f, 1067f), Struct_1(vec2<i32>(-16393i, 2147483647i), vec4<bool>(false, true, false, false), true, vec2<bool>(true, false), vec3<f32>(-245f, -1384f, -350f))), Struct_2(vec4<f32>(654f, -692f, 643f, 1601f), Struct_1(vec2<i32>(19484i, 0i), vec4<bool>(false, false, true, true), true, vec2<bool>(true, false), vec3<f32>(-1182f, 1000f, 361f))), Struct_2(vec4<f32>(-480f, -1410f, 1181f, 1107f), Struct_1(vec2<i32>(-34535i, i32(-2147483648)), vec4<bool>(false, true, false, false), false, vec2<bool>(true, true), vec3<f32>(864f, 1896f, 1450f))), Struct_2(vec4<f32>(-1584f, -575f, -2790f, -122f), Struct_1(vec2<i32>(0i, -7006i), vec4<bool>(false, true, false, false), true, vec2<bool>(false, false), vec3<f32>(-635f, -1913f, 213f))), Struct_2(vec4<f32>(223f, 1391f, 1418f, 1307f), Struct_1(vec2<i32>(-1i, 2147483647i), vec4<bool>(false, true, false, true), false, vec2<bool>(false, false), vec3<f32>(-948f, -3343f, -699f))), Struct_2(vec4<f32>(1377f, -683f, 1142f, 821f), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec4<bool>(true, false, true, false), true, vec2<bool>(true, false), vec3<f32>(316f, -1204f, -2094f))), Struct_2(vec4<f32>(-835f, -1232f, -706f, -397f), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec4<bool>(true, true, true, false), false, vec2<bool>(false, false), vec3<f32>(259f, 746f, -1108f))), Struct_2(vec4<f32>(-1000f, -1331f, 243f, 395f), Struct_1(vec2<i32>(22735i, -15005i), vec4<bool>(false, true, false, false), false, vec2<bool>(true, false), vec3<f32>(-731f, 916f, -991f))), Struct_2(vec4<f32>(421f, -686f, 335f, 443f), Struct_1(vec2<i32>(2147483647i, 35191i), vec4<bool>(true, true, true, true), false, vec2<bool>(true, false), vec3<f32>(1153f, -577f, -176f))), Struct_2(vec4<f32>(1507f, -794f, -331f, 268f), Struct_1(vec2<i32>(0i, 19389i), vec4<bool>(false, true, false, true), true, vec2<bool>(false, true), vec3<f32>(1055f, -1253f, 2107f))), Struct_2(vec4<f32>(-1197f, -1040f, -1066f, 1166f), Struct_1(vec2<i32>(-1i, 21751i), vec4<bool>(false, false, true, true), true, vec2<bool>(false, false), vec3<f32>(203f, -483f, 510f))), Struct_2(vec4<f32>(-170f, -472f, -2208f, 779f), Struct_1(vec2<i32>(2147483647i, 9706i), vec4<bool>(true, true, false, false), false, vec2<bool>(false, false), vec3<f32>(113f, -1505f, -1301f))), Struct_2(vec4<f32>(265f, 833f, -1245f, 184f), Struct_1(vec2<i32>(2147483647i, -1i), vec4<bool>(false, true, true, false), true, vec2<bool>(false, false), vec3<f32>(-722f, 379f, -276f))), Struct_2(vec4<f32>(199f, -237f, -2120f, -630f), Struct_1(vec2<i32>(i32(-2147483648), 3067i), vec4<bool>(false, false, true, true), false, vec2<bool>(false, false), vec3<f32>(-642f, 559f, 547f))), Struct_2(vec4<f32>(546f, 499f, -1142f, -1308f), Struct_1(vec2<i32>(0i, 61553i), vec4<bool>(true, true, true, true), true, vec2<bool>(false, false), vec3<f32>(1819f, 1953f, -564f))), Struct_2(vec4<f32>(-817f, 195f, -1071f, -1000f), Struct_1(vec2<i32>(-32933i, -1i), vec4<bool>(false, false, false, true), true, vec2<bool>(false, false), vec3<f32>(841f, -811f, 1000f))), Struct_2(vec4<f32>(189f, 320f, 1624f, 2101f), Struct_1(vec2<i32>(34369i, 2147483647i), vec4<bool>(false, false, false, false), false, vec2<bool>(false, true), vec3<f32>(126f, 1414f, 983f))), Struct_2(vec4<f32>(-337f, -1000f, 489f, 749f), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec4<bool>(true, true, true, false), true, vec2<bool>(true, true), vec3<f32>(1313f, -691f, -647f))), Struct_2(vec4<f32>(140f, -259f, 156f, -467f), Struct_1(vec2<i32>(0i, 1i), vec4<bool>(true, false, false, true), true, vec2<bool>(true, true), vec3<f32>(-691f, -143f, 1306f))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), global3.a.x), global3.b.e.x);
    var_0 = Struct_3(241f, _wgslsmith_f_op_f32(exp2(var_0.a)));
    global3 = global4[_wgslsmith_index_u32(~u_input.c.x, 26u)];
    global1 = (false | all(select(global3.b.b.xyz, vec3<bool>(global3.b.d.x, global3.b.b.x, global3.b.b.x), global3.b.b.x && false))) | true;
    let var_1 = 34483i;
    global0 = 14004u;
    var var_2 = global3.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.xw, abs(~(firstLeadingBit(vec4<u32>(u_input.d, u_input.c.x, u_input.b, u_input.d)) & ~u_input.c)), firstTrailingBit(~u_input.c.x), 30056u);
}

