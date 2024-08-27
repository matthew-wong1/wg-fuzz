struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<bool>,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32 = -345f;

var<private> global2: array<f32, 32>;

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<u32>(45898u, 37776u, 38072u), false, vec2<bool>(false, false), -1155f, vec3<f32>(831f, -750f, -289f)), Struct_1(vec3<u32>(1133u, 0u, 4294967295u), false, vec2<bool>(false, true), -2749f, vec3<f32>(-198f, -532f, 170f)), Struct_1(vec3<u32>(1u, 1u, 9791u), true, vec2<bool>(false, true), 542f, vec3<f32>(-339f, -1173f, 313f)), Struct_1(vec3<u32>(33943u, 4294967295u, 4294967295u), false, vec2<bool>(true, false), 1158f, vec3<f32>(-636f, 479f, -521f)), Struct_1(vec3<u32>(24090u, 102416u, 0u), true, vec2<bool>(false, true), 325f, vec3<f32>(-1845f, 757f, -1164f)), Struct_1(vec3<u32>(139194u, 1u, 5769u), true, vec2<bool>(false, true), -3007f, vec3<f32>(1105f, 1000f, 1144f)), Struct_1(vec3<u32>(1u, 4294967295u, 0u), false, vec2<bool>(false, false), -315f, vec3<f32>(911f, 748f, 430f)), Struct_1(vec3<u32>(1u, 4294967295u, 40857u), false, vec2<bool>(true, true), 1163f, vec3<f32>(-129f, 2207f, 585f)), Struct_1(vec3<u32>(61553u, 22075u, 35262u), true, vec2<bool>(true, true), 771f, vec3<f32>(123f, 345f, 570f)), Struct_1(vec3<u32>(7862u, 2159u, 4294967295u), true, vec2<bool>(false, false), 1528f, vec3<f32>(-247f, -1508f, 2089f)), Struct_1(vec3<u32>(59305u, 0u, 7380u), false, vec2<bool>(false, true), -1656f, vec3<f32>(-552f, 506f, -1000f)), Struct_1(vec3<u32>(15955u, 73462u, 39099u), false, vec2<bool>(true, false), 619f, vec3<f32>(1000f, -197f, 1000f)), Struct_1(vec3<u32>(32731u, 22953u, 16461u), false, vec2<bool>(false, false), 419f, vec3<f32>(475f, -769f, 739f)), Struct_1(vec3<u32>(21414u, 46507u, 1u), true, vec2<bool>(true, false), 587f, vec3<f32>(858f, -886f, 718f)), Struct_1(vec3<u32>(43788u, 1u, 43114u), true, vec2<bool>(false, false), 370f, vec3<f32>(221f, -138f, 605f)), Struct_1(vec3<u32>(1u, 16036u, 29614u), false, vec2<bool>(true, false), -2321f, vec3<f32>(904f, 276f, -1991f)), Struct_1(vec3<u32>(8605u, 9330u, 48721u), true, vec2<bool>(false, true), -2926f, vec3<f32>(-803f, 1120f, -1370f)), Struct_1(vec3<u32>(0u, 62010u, 4294967295u), true, vec2<bool>(true, false), -129f, vec3<f32>(679f, 1051f, -717f)), Struct_1(vec3<u32>(0u, 14495u, 50204u), false, vec2<bool>(false, true), -1447f, vec3<f32>(2175f, -1145f, -877f)), Struct_1(vec3<u32>(19687u, 84045u, 13976u), false, vec2<bool>(true, true), 292f, vec3<f32>(1184f, -503f, -600f)), Struct_1(vec3<u32>(1u, 19620u, 1u), true, vec2<bool>(true, false), 988f, vec3<f32>(445f, -2110f, -1576f)), Struct_1(vec3<u32>(6102u, 0u, 54733u), true, vec2<bool>(true, false), 534f, vec3<f32>(-1907f, -1541f, -330f)), Struct_1(vec3<u32>(45460u, 27879u, 37544u), false, vec2<bool>(true, false), -1479f, vec3<f32>(-465f, 289f, -315f)), Struct_1(vec3<u32>(4294967295u, 8276u, 13611u), false, vec2<bool>(false, false), 318f, vec3<f32>(1462f, 207f, 564f)), Struct_1(vec3<u32>(0u, 1u, 997u), true, vec2<bool>(false, false), -1612f, vec3<f32>(-425f, 796f, 519f)), Struct_1(vec3<u32>(2186u, 4294967295u, 1403u), true, vec2<bool>(true, true), -908f, vec3<f32>(639f, 1502f, 575f)), Struct_1(vec3<u32>(4294967295u, 72361u, 0u), true, vec2<bool>(true, false), 586f, vec3<f32>(145f, -1000f, -777f)), Struct_1(vec3<u32>(1u, 13954u, 67464u), false, vec2<bool>(false, false), -1776f, vec3<f32>(-700f, 465f, 135f)), Struct_1(vec3<u32>(1u, 69239u, 1u), true, vec2<bool>(false, true), 1812f, vec3<f32>(-120f, -599f, -1443f)), Struct_1(vec3<u32>(0u, 1588u, 9169u), false, vec2<bool>(false, true), -929f, vec3<f32>(-1307f, -281f, -821f)), Struct_1(vec3<u32>(64717u, 88317u, 75045u), false, vec2<bool>(true, false), -1000f, vec3<f32>(1094f, 1000f, 242f)));

var<private> global4: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 32u)] + 1566f) * _wgslsmith_f_op_f32(min(236f, -1181f))) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 32u)] + _wgslsmith_div_f32(global2[_wgslsmith_index_u32(7091u, 32u)], global2[_wgslsmith_index_u32(1u, 32u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(821f)))))) - 1f);
    let var_1 = false;
    global2 = array<f32, 32>();
    global4 = 1u;
    let var_2 = true;
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(4294967295u), ~(~vec2<i32>(27031i, -62463i)), -2147483647i, 1i);
}

