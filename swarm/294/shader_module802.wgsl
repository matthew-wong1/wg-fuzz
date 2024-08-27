struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6>;

var<private> global1: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec3<f32>(-808f, -1106f, 1000f), Struct_1(false), vec2<bool>(true, false), vec3<f32>(1000f, 141f, -326f), Struct_2(Struct_1(false), vec3<f32>(-643f, -1123f, -1302f), false)), Struct_3(vec3<f32>(2102f, 130f, -903f), Struct_1(false), vec2<bool>(true, true), vec3<f32>(-991f, -1239f, -1000f), Struct_2(Struct_1(false), vec3<f32>(-1000f, 1269f, -2035f), false)), Struct_3(vec3<f32>(-1243f, 1124f, 323f), Struct_1(false), vec2<bool>(false, false), vec3<f32>(-407f, 960f, -445f), Struct_2(Struct_1(true), vec3<f32>(1298f, 848f, -1000f), true)), Struct_3(vec3<f32>(-2013f, -537f, -747f), Struct_1(true), vec2<bool>(false, false), vec3<f32>(-1000f, 590f, 248f), Struct_2(Struct_1(false), vec3<f32>(1062f, -1169f, 219f), true)), Struct_3(vec3<f32>(929f, 380f, -1116f), Struct_1(false), vec2<bool>(false, false), vec3<f32>(-235f, -1056f, 1000f), Struct_2(Struct_1(true), vec3<f32>(-1000f, -349f, -612f), true)), Struct_3(vec3<f32>(-1602f, 515f, 1000f), Struct_1(false), vec2<bool>(false, false), vec3<f32>(-536f, 171f, -472f), Struct_2(Struct_1(false), vec3<f32>(-132f, -1544f, -378f), false)), Struct_3(vec3<f32>(705f, 791f, -235f), Struct_1(true), vec2<bool>(false, true), vec3<f32>(329f, 664f, -1004f), Struct_2(Struct_1(true), vec3<f32>(-1975f, -836f, 1686f), false)), Struct_3(vec3<f32>(353f, -236f, 846f), Struct_1(true), vec2<bool>(false, false), vec3<f32>(315f, -890f, 211f), Struct_2(Struct_1(false), vec3<f32>(-339f, 141f, -752f), false)), Struct_3(vec3<f32>(-1000f, -944f, 658f), Struct_1(true), vec2<bool>(false, true), vec3<f32>(-544f, 384f, 925f), Struct_2(Struct_1(false), vec3<f32>(-245f, -205f, 890f), true)), Struct_3(vec3<f32>(993f, 1299f, 1000f), Struct_1(true), vec2<bool>(true, false), vec3<f32>(-218f, 2149f, -518f), Struct_2(Struct_1(false), vec3<f32>(1854f, -298f, 927f), true)), Struct_3(vec3<f32>(-541f, -179f, -147f), Struct_1(true), vec2<bool>(false, true), vec3<f32>(-1000f, -1000f, 465f), Struct_2(Struct_1(false), vec3<f32>(1000f, 1088f, -2345f), false)), Struct_3(vec3<f32>(-207f, -912f, -461f), Struct_1(true), vec2<bool>(false, true), vec3<f32>(-444f, 1488f, -371f), Struct_2(Struct_1(true), vec3<f32>(1829f, -1200f, -1743f), false)), Struct_3(vec3<f32>(-1704f, 1034f, 329f), Struct_1(true), vec2<bool>(false, false), vec3<f32>(483f, 596f, 580f), Struct_2(Struct_1(true), vec3<f32>(-342f, 1938f, -1000f), true)), Struct_3(vec3<f32>(1252f, 2193f, -927f), Struct_1(true), vec2<bool>(true, true), vec3<f32>(1085f, -310f, -1772f), Struct_2(Struct_1(true), vec3<f32>(588f, -107f, 667f), false)), Struct_3(vec3<f32>(-837f, 1899f, 803f), Struct_1(false), vec2<bool>(false, false), vec3<f32>(184f, -2517f, -1342f), Struct_2(Struct_1(true), vec3<f32>(1140f, 1000f, 679f), false)), Struct_3(vec3<f32>(200f, -311f, -611f), Struct_1(false), vec2<bool>(false, false), vec3<f32>(176f, 1916f, 449f), Struct_2(Struct_1(true), vec3<f32>(312f, -1459f, 514f), true)), Struct_3(vec3<f32>(-1584f, -1328f, 1056f), Struct_1(false), vec2<bool>(true, true), vec3<f32>(-232f, -2276f, -768f), Struct_2(Struct_1(true), vec3<f32>(-1052f, -690f, 396f), true)), Struct_3(vec3<f32>(1000f, 1686f, 472f), Struct_1(true), vec2<bool>(false, false), vec3<f32>(2284f, -647f, -651f), Struct_2(Struct_1(true), vec3<f32>(1173f, 575f, 183f), true)), Struct_3(vec3<f32>(-943f, 954f, 1334f), Struct_1(false), vec2<bool>(false, true), vec3<f32>(-791f, 2577f, 120f), Struct_2(Struct_1(false), vec3<f32>(-249f, -431f, 307f), true)), Struct_3(vec3<f32>(885f, -362f, -444f), Struct_1(false), vec2<bool>(false, true), vec3<f32>(1032f, 591f, 158f), Struct_2(Struct_1(true), vec3<f32>(-465f, 468f, 1421f), true)), Struct_3(vec3<f32>(1718f, -271f, -524f), Struct_1(false), vec2<bool>(false, false), vec3<f32>(1018f, -264f, 1697f), Struct_2(Struct_1(true), vec3<f32>(1310f, 255f, 133f), false)), Struct_3(vec3<f32>(359f, -1162f, -491f), Struct_1(false), vec2<bool>(false, true), vec3<f32>(-695f, -786f, 952f), Struct_2(Struct_1(true), vec3<f32>(-743f, -453f, -1963f), false)));

var<private> global2: Struct_1;

var<private> global3: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(i32(-2147483648), 15291i, 1i), vec3<i32>(0i, i32(-2147483648), 1i), vec3<i32>(i32(-2147483648), 7892i, 46252i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(27282i, -37413i, -1i), vec3<i32>(71543i, -30457i, 2147483647i), vec3<i32>(12873i, i32(-2147483648), 5981i), vec3<i32>(-9927i, 2147483647i, -28442i), vec3<i32>(59280i, -1i, -33253i), vec3<i32>(-1i, -4738i, 60459i), vec3<i32>(-1i, -13312i, 25022i), vec3<i32>(12196i, 31109i, 31232i), vec3<i32>(1076i, 30364i, 46235i), vec3<i32>(0i, -61591i, 1i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = -820f;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(516f - -111f) * _wgslsmith_f_op_f32(max(-1220f, -962f)))), 376f) + arg_0.a.xx);
    var var_2 = global3[_wgslsmith_index_u32(u_input.d, 14u)];
    return Struct_1(!global2.a);
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-957f, -1000f, -193f), vec3<f32>(220f, 248f, -1034f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(872f, 447f, -858f) * vec3<f32>(-191f, -686f, -933f))))), !(!global2.a));
    global0 = array<vec3<i32>, 6>();
    var var_1 = func_2(global1[_wgslsmith_index_u32(u_input.d, 22u)]);
    let var_2 = all(!vec3<bool>(func_2(Struct_3(var_0.b, arg_0, vec2<bool>(var_1.a, true), var_0.b, Struct_2(Struct_1(true), vec3<f32>(var_0.b.x, 539f, var_0.b.x), arg_0.a))).a, global2.a == var_0.c, any(vec4<bool>(true, true, arg_0.a, var_1.a)))) & false;
    var var_3 = ~vec2<u32>(min(0u, abs(~u_input.d)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.d, 16498u, 0u) & vec3<u32>(1u, u_input.d, u_input.d)), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.d), vec3<u32>(0u, u_input.d, 1u)))));
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: u32) -> f32 {
    global3 = array<vec3<i32>, 14>();
    let var_0 = 727f;
    var var_1 = Struct_2(func_3(func_2(global1[_wgslsmith_index_u32(abs(min(64251u, 0u)), 22u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(489f, var_0))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(var_0 + var_0))), var_0) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(110f, var_0, 1000f)))))), !(!(!all(vec3<bool>(false, false, global2.a)))));
    let var_2 = global1[_wgslsmith_index_u32(~4294967295u, 22u)];
    global3 = array<vec3<i32>, 14>();
    return -741f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2141f), _wgslsmith_f_op_f32(func_1(u_input.b.x, 10425u)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1389f, 233f))), _wgslsmith_f_op_f32(func_1(_wgslsmith_sub_i32(1i, u_input.b.x), u_input.d)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, ~vec4<u32>(~(~4294967295u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 6097u, u_input.d, u_input.d), vec4<u32>(u_input.d, u_input.d, u_input.d, 79722u)), u_input.d, _wgslsmith_add_u32(145172u | u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, u_input.d, u_input.d), vec4<u32>(0u, 4294967295u, u_input.d, u_input.d)))));
}

