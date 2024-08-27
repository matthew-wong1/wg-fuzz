struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(vec4<f32>(-930f, -1741f, -1871f, 1068f), false), Struct_3(vec4<f32>(1067f, 1387f, -1000f, 1410f), true), Struct_3(vec4<f32>(974f, 658f, -549f, 2130f), false), Struct_3(vec4<f32>(931f, -2076f, -1063f, 1483f), false), Struct_3(vec4<f32>(-1507f, -1366f, -747f, -2011f), false), Struct_3(vec4<f32>(-1390f, -1000f, 1656f, -867f), false), Struct_3(vec4<f32>(-933f, -1867f, 592f, -1161f), false), Struct_3(vec4<f32>(1000f, -1493f, 670f, 646f), true), Struct_3(vec4<f32>(-497f, 997f, 1260f, 1875f), false), Struct_3(vec4<f32>(803f, 725f, -360f, 432f), false), Struct_3(vec4<f32>(-2007f, 345f, -556f, -203f), true), Struct_3(vec4<f32>(1000f, 1051f, -211f, -389f), false), Struct_3(vec4<f32>(-188f, 548f, 212f, 1483f), true), Struct_3(vec4<f32>(531f, 1000f, 887f, 443f), true), Struct_3(vec4<f32>(1000f, -1825f, 355f, -311f), false), Struct_3(vec4<f32>(-267f, 234f, -254f, -1222f), true), Struct_3(vec4<f32>(-693f, -316f, 207f, -1342f), false), Struct_3(vec4<f32>(662f, -1096f, 669f, -1000f), true), Struct_3(vec4<f32>(-949f, 256f, -156f, 1455f), false), Struct_3(vec4<f32>(675f, -1344f, -920f, -758f), true), Struct_3(vec4<f32>(351f, -308f, 1372f, -344f), true), Struct_3(vec4<f32>(-459f, 1155f, 1865f, -201f), true), Struct_3(vec4<f32>(345f, -133f, -502f, -1442f), true), Struct_3(vec4<f32>(-1760f, -1142f, -1050f, -1034f), true), Struct_3(vec4<f32>(1000f, 1000f, 124f, -1750f), true), Struct_3(vec4<f32>(-886f, 2040f, -837f, 219f), false), Struct_3(vec4<f32>(-1559f, -1105f, 2504f, -519f), true), Struct_3(vec4<f32>(-527f, 468f, -400f, 1002f), true), Struct_3(vec4<f32>(-640f, 371f, 1000f, 992f), true));

var<private> global1: f32 = 1643f;

var<private> global2: array<f32, 25> = array<f32, 25>(395f, 1242f, 165f, -1287f, -2626f, -1000f, 175f, -147f, -1381f, -456f, -1000f, 3622f, 813f, -1218f, 674f, -964f, 803f, -1504f, -560f, 224f, -659f, 839f, 1881f, -1317f, 107f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<i32> {
    global2 = array<f32, 25>();
    let var_0 = ~49549u;
    let var_1 = _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 69042u), 9762u);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2362f, _wgslsmith_f_op_f32(round(172f)))));
    global2 = array<f32, 25>();
    return abs(vec2<i32>(-1i, 2147483647i));
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_1 {
    var var_0 = func_3();
    let var_1 = 1u << ((~(0u ^ (u_input.a.x >> (u_input.c.x % 32u))) << (u_input.c.x % 32u)) % 32u);
    let var_2 = ~u_input.a;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2006f, global2[_wgslsmith_index_u32(u_input.a.x, 25u)], -534f, global2[_wgslsmith_index_u32(1u, 25u)]) + vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], -419f, 265f, 681f)) + vec4<f32>(global2[_wgslsmith_index_u32(var_2.x, 25u)], global2[_wgslsmith_index_u32(17772u, 25u)], -1078f, -555f))))), select(false, true, all(select(vec3<bool>(true, true, arg_1), vec3<bool>(arg_1, true, false), !vec3<bool>(true, false, arg_0)))));
    let var_4 = Struct_1(~(vec3<i32>(-1i) * -select(vec3<i32>(var_0.x, -2147483647i, var_0.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), true)), !select(vec2<bool>(arg_0, all(vec4<bool>(var_3.b, arg_1, true, var_3.b))), vec2<bool>(global2[_wgslsmith_index_u32(var_1, 25u)] < 338f, true), var_2.x >= ~15475u), true);
    return var_4;
}

fn func_1() -> u32 {
    var var_0 = ~(~(~(~u_input.a.x) | ~_wgslsmith_add_u32(1u, u_input.c.x)));
    let var_1 = Struct_2(func_2(!(~u_input.c.x <= 1u), !(!any(vec4<bool>(false, true, false, false)))));
    var_0 = 65750u;
    let var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(u_input.b.x, var_1.a.a.x)), 1i, var_1.a.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b.zyz, var_1.a.a), -vec3<i32>(43683i, 15742i, var_1.a.a.x))), u_input.b), 41344i);
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-627f, global2[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec2<f32>(1064f, 429f)))))))));
    return ~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(64923u, u_input.c.x, 33025u), u_input.a.yzx), 54999u), vec3<u32>(u_input.a.x, 1u, 70760u | u_input.c.x)) ^ (u_input.a.x | u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global2 = array<f32, 25>();
    var var_1 = _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~func_1(), select(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, u_input.a.x), u_input.c.x), u_input.c.x >> (u_input.a.x % 32u), abs(u_input.b.x) < -25391i)), 25u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(359f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1174f * global2[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_f_op_f32(ceil(-1626f))))), global2[_wgslsmith_index_u32(u_input.a.x, 25u)]), u_input.b.x, vec2<f32>(-2526f, _wgslsmith_f_op_f32(1231f + _wgslsmith_f_op_f32(f32(-1f) * -1500f))), ~(-u_input.b));
}

