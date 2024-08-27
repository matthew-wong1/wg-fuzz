struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 7>;

var<private> global1: array<vec3<u32>, 2>;

var<private> global2: vec2<u32>;

var<private> global3: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(445f, -846f, -565f, 896f), vec4<f32>(1072f, -946f, 1134f, -119f), vec4<f32>(776f, 387f, -1000f, 781f), vec4<f32>(593f, -671f, 183f, -1000f), vec4<f32>(-469f, 1502f, 1309f, -419f), vec4<f32>(1154f, 897f, -999f, -1038f), vec4<f32>(957f, 371f, -628f, 716f), vec4<f32>(-1986f, -289f, -1567f, 359f), vec4<f32>(-1000f, -138f, -373f, -711f), vec4<f32>(-1052f, 260f, -1161f, -339f), vec4<f32>(140f, -2320f, -812f, -668f), vec4<f32>(604f, -352f, -242f, 966f), vec4<f32>(-1229f, 1000f, -1815f, 1445f), vec4<f32>(366f, -854f, -900f, -247f), vec4<f32>(-222f, -1921f, 1593f, 2400f), vec4<f32>(-353f, 350f, 743f, 1546f), vec4<f32>(542f, -869f, 312f, 565f), vec4<f32>(2034f, 1329f, 1152f, 237f), vec4<f32>(1351f, -840f, 1038f, -1137f), vec4<f32>(830f, 1455f, 1073f, 1000f), vec4<f32>(961f, -1388f, 2090f, 1021f), vec4<f32>(-1009f, -567f, -582f, 1000f), vec4<f32>(-999f, 267f, 397f, 1983f), vec4<f32>(393f, 1313f, 422f, -309f), vec4<f32>(1101f, 423f, -380f, -688f), vec4<f32>(-1222f, -1123f, 261f, -1880f), vec4<f32>(-752f, -1621f, -1399f, -1448f), vec4<f32>(1056f, 120f, -902f, -551f));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = !(!select(!arg_0.b.yx, vec2<bool>(global2.x < global2.x, true), false));
    var var_1 = global2.x;
    let var_2 = ~u_input.c;
    var var_3 = vec3<i32>(abs(u_input.e), -58335i, -1i);
    let var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(select(global3[_wgslsmith_index_u32(1u, 28u)], arg_0.a, arg_0.b)), !vec4<bool>(false, true, true, ~53614u <= _wgslsmith_mod_u32(var_2, global2.x)), Struct_2(select(arg_0.b, !(!vec4<bool>(false, false, var_0.x, arg_0.c.a.x)), select(vec4<bool>(var_0.x, var_0.x, true, true), arg_0.c.a, 8278u > global2.x)), false, select(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 19385i), u_input.a.xx), var_0.x)), false);
    return vec4<bool>(var_0.x, true, true, var_0.x);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(!select(select(vec4<bool>(true, true, true, false), func_3(Struct_4(global3[_wgslsmith_index_u32(6461u, 28u)], vec4<bool>(true, false, false, false), Struct_2(vec4<bool>(false, true, false, true), true, 0i), false)), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, global2.x == global2.x, any(vec2<bool>(true, true)), all(vec3<bool>(false, true, true)))), all(!select(func_3(Struct_4(global3[_wgslsmith_index_u32(76209u, 28u)], vec4<bool>(true, false, false, true), Struct_2(vec4<bool>(false, false, true, false), true, -5548i), false)).wzy, vec3<bool>(true, false, true), true)), _wgslsmith_dot_vec3_i32(abs(abs(countOneBits(u_input.a))), vec3<i32>(-1i, u_input.e, ~30737i)));
    global2 = vec2<u32>(60169u, ~_wgslsmith_clamp_u32(global2.x, global2.x, 21610u));
    var var_1 = -50465i;
    global1 = array<vec3<u32>, 2>();
    var var_2 = true;
    return -113f;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<bool>) -> bool {
    global1 = array<vec3<u32>, 2>();
    var var_0 = Struct_1(-40445i, vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(sign(427f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1103f)) * _wgslsmith_f_op_f32(f32(-1f) * -931f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-574f, -514f)) - -1264f))), global3[_wgslsmith_index_u32(34424u, 28u)], arg_2.x);
    let var_1 = var_0.c.x;
    let var_2 = _wgslsmith_f_op_f32(func_2());
    global3 = array<vec4<f32>, 28>();
    return var_0.d;
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: bool) -> i32 {
    let var_0 = vec3<bool>(true, false | any(func_3(Struct_4(vec4<f32>(512f, -920f, -1188f, 1159f), arg_0, Struct_2(vec4<bool>(true, arg_0.x, true, false), arg_2, -1i), arg_2)).yxy), func_1(Struct_3(vec4<u32>(_wgslsmith_mod_u32(1u, global2.x), 28551u, ~global2.x, u_input.d | u_input.d)), Struct_3(~(~vec4<u32>(44661u, arg_1, arg_1, arg_1))), vec2<bool>(true, arg_0.x)));
    global3 = array<vec4<f32>, 28>();
    let var_1 = vec2<u32>(arg_1, ~(~53607u & ~global2.x));
    var var_2 = arg_0.x;
    var_2 = false;
    return u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~0i;
    var var_1 = max(var_0, min(-(_wgslsmith_add_i32(u_input.e, u_input.e) << (~59741u % 32u)), -237i));
    let var_2 = i32(-1i) * -func_4(vec4<bool>(true, func_1(Struct_3(vec4<u32>(63120u, 3418u, global2.x, 4294967295u)), Struct_3(vec4<u32>(1u, u_input.d, global2.x, 15236u)), vec2<bool>(true, false)), true, true), 1u, all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true)));
    global0 = array<vec3<u32>, 7>();
    var var_3 = var_0;
    var var_4 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(global2.x, u_input.b.x, u_input.c, 4294967295u)), vec4<u32>(0u, global2.x, u_input.b.x, global2.x | global2.x), vec4<u32>(~34811u, _wgslsmith_div_u32(u_input.d, 1u), 475u, ~global2.x)), _wgslsmith_add_vec4_u32(vec4<u32>(global2.x ^ u_input.c, 22803u, global2.x, global2.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c) << (vec4<u32>(54950u, u_input.c, global2.x, global2.x) % vec4<u32>(32u)), reverseBits(vec4<u32>(u_input.d, 4294967295u, 22425u, 4294967295u))))) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, 37731u, global2.x, ~0u), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(48440u, 22119u, u_input.b.x, 52176u), vec4<u32>(u_input.d, u_input.c, 270u, global2.x), vec4<u32>(4294967295u, global2.x, 23185u, 4294967295u)), select(vec4<u32>(60071u, 56136u, 16951u, 0u), vec4<u32>(0u, 61601u, global2.x, global2.x), vec4<bool>(true, false, true, true)))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, ~u_input.d, firstLeadingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 76358u, 15402u, 21790u), vec4<u32>(1u, global2.x, 26662u, u_input.b.x))), ~vec4<u32>(44238u, 49997u, global2.x, global2.x) << ((vec4<u32>(u_input.b.x, u_input.c, 0u, 19250u) | vec4<u32>(global2.x, global2.x, 24557u, 0u)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_5 = _wgslsmith_mod_u32(min(global2.x, min(41149u, ~(u_input.c ^ 0u))), select(~(~23424u), ~68530u, false));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.c, u_input.d, ~var_4.x, 14357u));
}

