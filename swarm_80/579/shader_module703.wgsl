struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<f32>(-331f, -529f, 420f, 2047f), false, false, vec2<f32>(-591f, -1068f), 42744u), Struct_1(vec4<f32>(480f, 2416f, 1572f, -850f), false, false, vec2<f32>(-135f, -792f), 43377u), Struct_1(vec4<f32>(-213f, -709f, -1168f, -553f), true, false, vec2<f32>(894f, 1007f), 1u), Struct_1(vec4<f32>(1094f, 773f, 1000f, -1281f), false, false, vec2<f32>(-502f, -1000f), 37746u), Struct_1(vec4<f32>(-463f, 1231f, -2103f, 682f), true, true, vec2<f32>(993f, 1391f), 32800u), Struct_1(vec4<f32>(159f, -1000f, 1613f, 1013f), false, true, vec2<f32>(1671f, -538f), 32911u), Struct_1(vec4<f32>(-1115f, -1591f, -1000f, 108f), false, true, vec2<f32>(-1003f, -741f), 34063u), Struct_1(vec4<f32>(1000f, -141f, 334f, -892f), false, true, vec2<f32>(-1776f, 415f), 60879u));

var<private> global1: u32 = 41055u;

var<private> global2: vec3<f32> = vec3<f32>(438f, 892f, 193f);

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<f32>(-1027f, 658f, 986f, 908f), false, true, vec2<f32>(793f, 2296f), 1u), Struct_1(vec4<f32>(403f, -600f, -474f, -883f), false, false, vec2<f32>(-442f, -458f), 36637u), Struct_1(vec4<f32>(-969f, 783f, -704f, 442f), false, true, vec2<f32>(534f, 689f), 4294967295u), Struct_1(vec4<f32>(-766f, 293f, -1442f, 656f), true, false, vec2<f32>(-1440f, -273f), 1u), Struct_1(vec4<f32>(431f, 716f, 208f, -1000f), true, false, vec2<f32>(-524f, -642f), 17491u), Struct_1(vec4<f32>(-1000f, 200f, -1638f, 911f), false, true, vec2<f32>(1258f, -230f), 4294967295u), Struct_1(vec4<f32>(751f, 1133f, 1000f, 1470f), false, true, vec2<f32>(-1060f, -120f), 11590u), Struct_1(vec4<f32>(653f, -588f, 802f, -581f), true, false, vec2<f32>(-262f, -1994f), 0u), Struct_1(vec4<f32>(887f, -1314f, -895f, -1000f), false, false, vec2<f32>(1000f, -209f), 111584u), Struct_1(vec4<f32>(2642f, 552f, -1263f, 335f), true, false, vec2<f32>(-310f, 614f), 12812u), Struct_1(vec4<f32>(-122f, 352f, 1209f, 523f), true, true, vec2<f32>(1155f, 859f), 1u), Struct_1(vec4<f32>(2333f, 848f, 137f, -593f), true, true, vec2<f32>(-302f, 408f), 30790u), Struct_1(vec4<f32>(1792f, -643f, -446f, 267f), false, true, vec2<f32>(-1095f, 407f), 20656u), Struct_1(vec4<f32>(-1000f, -1564f, 1134f, 1235f), false, true, vec2<f32>(-1005f, -526f), 0u), Struct_1(vec4<f32>(-390f, 607f, -514f, 1016f), true, true, vec2<f32>(821f, 1095f), 34284u), Struct_1(vec4<f32>(-182f, -1514f, 965f, 294f), true, false, vec2<f32>(1000f, 873f), 4294967295u), Struct_1(vec4<f32>(173f, 442f, 1471f, -813f), true, false, vec2<f32>(-404f, 1341f), 34835u), Struct_1(vec4<f32>(-2049f, 2736f, 725f, 1117f), false, true, vec2<f32>(2001f, -571f), 1u), Struct_1(vec4<f32>(-540f, 191f, 220f, -820f), false, false, vec2<f32>(286f, -1594f), 0u), Struct_1(vec4<f32>(1305f, -739f, -221f, -1044f), false, true, vec2<f32>(657f, -999f), 1u), Struct_1(vec4<f32>(-133f, 1115f, -314f, -368f), false, true, vec2<f32>(-953f, -856f), 46732u), Struct_1(vec4<f32>(-562f, 1778f, -1136f, -1004f), false, false, vec2<f32>(1668f, -1222f), 4294967295u), Struct_1(vec4<f32>(260f, 1429f, 608f, -2521f), false, false, vec2<f32>(298f, 331f), 22355u), Struct_1(vec4<f32>(-293f, -206f, 263f, -436f), false, true, vec2<f32>(495f, -909f), 35968u), Struct_1(vec4<f32>(-273f, -753f, 401f, 889f), true, false, vec2<f32>(-634f, 481f), 66926u), Struct_1(vec4<f32>(855f, 1549f, 733f, 579f), true, true, vec2<f32>(-374f, -381f), 4294967295u), Struct_1(vec4<f32>(-995f, -716f, -267f, 375f), true, true, vec2<f32>(-220f, 992f), 7325u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 27>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(1727f * -1141f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(trunc(global2.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -481f), -469f)))), -435f);
    global2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, global2.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x + 104f), _wgslsmith_f_op_f32(745f - 1528f)))))));
    global0 = array<Struct_1, 8>();
    let var_1 = vec2<i32>(countOneBits(_wgslsmith_sub_i32(u_input.a, u_input.c.x | -65732i)), _wgslsmith_clamp_i32(19007i, u_input.a, ~firstLeadingBit(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.d.xw, u_input.d.wy), u_input.d, -114f);
}

