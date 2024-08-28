struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    let var_0 = Struct_3(Struct_1(u_input.e.x, 17512i, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1427f - 1164f), -968f, _wgslsmith_f_op_f32(f32(-1f) * -682f)), vec3<f32>(_wgslsmith_f_op_f32(-292f - -1174f), -1719f, _wgslsmith_f_op_f32(select(-751f, -272f, true))))), select(vec2<i32>(~u_input.b.x >> (max(15726u, u_input.c.x) % 32u), _wgslsmith_dot_vec3_i32(select(u_input.b.xzy, u_input.b.wzz, vec3<bool>(true, false, true)), vec3<i32>(-43950i, 44064i, 0i))), _wgslsmith_sub_vec2_i32(-select(u_input.b.xx, vec2<i32>(u_input.b.x, 54902i), true), _wgslsmith_add_vec2_i32(u_input.b.wy, u_input.b.wz) >> (u_input.d % vec2<u32>(32u))), all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(false, true, false, false), true))), _wgslsmith_f_op_f32(797f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f - -1749f)))), Struct_1(27561u, firstLeadingBit(-17449i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(867f, -116f, -1530f)))));
    let var_1 = Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(select(var_0.b, var_0.b, false)), _wgslsmith_add_vec2_i32(abs(u_input.b.wz), u_input.b.yz)), select(var_0.a.b, 25973i, true), 1i), Struct_1(~var_0.d.a, -4351i, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-809f - 1073f), _wgslsmith_f_op_f32(round(var_0.a.c.x)), _wgslsmith_f_op_f32(abs(384f))), var_0.a.c))), -5125i, global0[_wgslsmith_index_u32(52171u, 25u)]);
    global0 = array<Struct_1, 25>();
    let var_2 = Struct_4(global0[_wgslsmith_index_u32(var_1.b.a, 25u)]);
    let var_3 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true))), select(vec3<bool>(true, true, any(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), var_2.a.c.x <= var_1.d.c.x), all(vec3<bool>(false, true, true)));
    return all(select(select(var_3, vec3<bool>(!var_3.x, true, false), true), vec3<bool>(var_3.x, var_3.x, 25488u != ~var_1.d.a), vec3<bool>(any(var_3), u_input.e.x == firstTrailingBit(u_input.e.x), all(var_3))));
}

fn func_2() -> bool {
    var var_0 = Struct_4(Struct_1(u_input.c.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.a), u_input.b.x), _wgslsmith_mod_i32(-2147483647i, -1i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(495f, -700f, 687f)) * vec3<f32>(-141f, -1000f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(782f, -329f, -1193f)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))))));
    let var_1 = -50138i;
    var var_2 = Struct_5(4294967295u);
    let var_3 = var_0.a.b;
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1915f), _wgslsmith_f_op_f32(var_0.a.c.x * -816f))) - var_0.a.c.x)))));
    return func_3();
}

fn func_1(arg_0: f32, arg_1: bool) -> bool {
    var var_0 = select(!(!vec3<bool>(true, arg_1, func_2())), !vec3<bool>(max(75481u, 0u) >= _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 7495u, u_input.e.x), u_input.c), true != (1000f <= arg_0), true), vec3<bool>(abs(min(26063u, 60275u)) == u_input.d.x, false, func_2()));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1457f, -1000f, arg_0) * vec3<f32>(arg_0, -256f, arg_0)), _wgslsmith_div_vec3_f32(vec3<f32>(-286f, 494f, 657f), vec3<f32>(arg_0, -640f, arg_0)), !vec3<bool>(true, false, arg_1))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 2397f, -1060f), vec3<f32>(-1000f, arg_0, arg_0)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 1009f, arg_0), vec3<f32>(-1299f, arg_0, arg_0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1268f, arg_0, 178f) - vec3<f32>(arg_0, arg_0, 1481f))))));
    global0 = array<Struct_1, 25>();
    var_0 = vec3<bool>(select(arg_1, arg_1, all(vec3<bool>(true, any(vec2<bool>(false, var_0.x)), false))), true, true);
    global0 = array<Struct_1, 25>();
    return var_0.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<u32>) -> bool {
    var var_0 = _wgslsmith_div_vec4_u32(~(~reverseBits(vec4<u32>(arg_1.x, 966u, u_input.d.x, 4294967295u))), u_input.c);
    var var_1 = !vec2<bool>(_wgslsmith_mod_i32(u_input.b.x, -48291i) != u_input.a, arg_0.x && arg_0.x);
    var_1 = arg_0.yy;
    var_0 = _wgslsmith_sub_vec4_u32(u_input.c, min(vec4<u32>(0u, _wgslsmith_mult_u32(u_input.e.x, abs(54937u)), u_input.c.x | 50189u, var_0.x), u_input.c));
    var var_2 = Struct_2((-max(u_input.b.wxw, vec3<i32>(u_input.b.x, -24475i, u_input.b.x)) & select(u_input.b.zww, u_input.b.yyz, vec3<bool>(false, false, false))) & vec3<i32>(u_input.a, 8041i, 0i), Struct_1(u_input.d.x, u_input.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(626f, 1157f)) + _wgslsmith_f_op_f32(f32(-1f) * -1163f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-817f, 1108f))), _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(1540f, 787f)))), firstTrailingBit(-firstLeadingBit(2147483647i)), Struct_1(_wgslsmith_mult_u32(arg_1.x, var_0.x), 1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-645f, 1743f, 1687f), vec3<f32>(929f, -1274f, -512f), var_1.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(270f, -162f, -1083f) * vec3<f32>(-406f, 156f, -1000f))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    var var_0 = func_4(select(vec3<bool>(true, true, true), select(vec3<bool>(all(vec4<bool>(false, true, true, true)), true, true), vec3<bool>(u_input.a < -23189i, true, true), select(true, false, func_1(518f, false))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), u_input.d.x == 61711u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u << (u_input.c.x % 32u), ~0u, 32142u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 0u), select(u_input.e, u_input.c.yyx, vec3<bool>(false, false, false)))) ^ ~vec3<u32>(11810u, ~1u, 0u));
    var var_1 = Struct_2(u_input.b.yxz, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e.x, u_input.e.x, 4294967295u), u_input.c) >> (_wgslsmith_add_u32(4294967295u, u_input.c.x) % 32u)), abs(_wgslsmith_mod_u32(~14400u, 78743u))), 25u)], reverseBits(countOneBits(u_input.a)), Struct_1((abs(u_input.d.x) >> (~u_input.e.x % 32u)) | u_input.d.x, 2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 1169f, 1000f), vec3<f32>(1000f, 617f, -394f), true))))));
    let var_2 = Struct_5(var_1.b.a);
    global0 = array<Struct_1, 25>();
    let var_3 = Struct_2(vec3<i32>(_wgslsmith_mod_i32(-_wgslsmith_clamp_i32(-2147483647i, u_input.a, var_1.b.b), u_input.b.x), u_input.a, -var_1.c | -56321i), Struct_1(min(~u_input.c.x, reverseBits(~var_1.b.a)), ~(-1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b.c + vec3<f32>(1522f, var_1.b.c.x, -620f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.c.x, var_1.b.c.x, var_1.b.c.x))))), firstTrailingBit(_wgslsmith_div_i32(-1i, var_1.a.x)), Struct_1(~1u, -19855i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.b.c.x, var_1.d.c.x, 750f))), _wgslsmith_f_op_vec3_f32(var_1.d.c - vec3<f32>(-581f, 1394f, 1052f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.d.c.xx)))), -2147483647i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(197f, _wgslsmith_f_op_f32(min(var_1.b.c.x, -309f))) * _wgslsmith_div_vec2_f32(var_3.d.c.zz, vec2<f32>(var_1.b.c.x, 425f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-717f, -599f)), var_1.d.c.xz, true))), func_3())), firstLeadingBit(~((var_3.b.b & 0i) >> (var_1.b.a % 32u))), -(u_input.a & u_input.b.x));
}

