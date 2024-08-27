struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 18>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = 1i;
    global0 = array<vec3<bool>, 18>();
    let var_1 = ~select(reverseBits(~vec2<u32>(u_input.d.x, u_input.a.x) ^ u_input.d.zy), firstLeadingBit(u_input.d.zy), false);
    let var_2 = Struct_2(Struct_1(-704f, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(407f, -889f))))), var_1, _wgslsmith_mod_u32(countOneBits(~5774u), ~(~var_1.x)), true), vec4<u32>(var_1.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.d.x, 0u), ~var_1.x), 99662u ^ _wgslsmith_sub_u32(var_1.x, 1u)), ~(~(~4294967295u)), ~(~(~1u))), vec3<f32>(282f, _wgslsmith_f_op_f32(f32(-1f) * -1817f), 1000f));
    global0 = array<vec3<bool>, 18>();
    return true;
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<bool>, 18>();
    let var_0 = func_3();
    global0 = array<vec3<bool>, 18>();
    var var_1 = vec3<u32>(u_input.d.x, abs(~(~select(u_input.a.x, u_input.d.x, var_0))), 14181u ^ (u_input.d.x >> ((~u_input.d.x ^ (u_input.a.x & 22838u)) % 32u)));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)), vec2<u32>(4294967295u, firstLeadingBit(~u_input.d.x)), ~1u, !any(!vec4<bool>(var_0, var_0, var_0, var_0))), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 30879u, var_1.x), min(vec4<u32>(0u, 16289u, u_input.a.x, 1u), vec4<u32>(u_input.d.x, u_input.a.x, u_input.d.x, var_1.x)))) & ~max(~vec4<u32>(67871u, 46351u, 1u, var_1.x), ~vec4<u32>(1u, 0u, 25437u, 1u)), vec3<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-159f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(383f - var_2), _wgslsmith_f_op_f32(sign(-1347f))))), -1001f));
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> bool {
    let var_0 = func_2();
    var var_1 = var_0.a;
    var var_2 = Struct_3(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, arg_1.a), firstTrailingBit(vec2<i32>(arg_1.a, -11546i) & vec2<i32>(1322i, u_input.b))), arg_1.a), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(var_0.c, _wgslsmith_f_op_vec3_f32(var_0.c + var_0.c))))), arg_1.d, vec3<bool>(all(arg_1.e), true, func_3() || var_1.e));
    var var_3 = select(var_2.e, arg_1.e, !(!(!select(vec3<bool>(true, var_2.e.x, arg_1.d.x), global0[_wgslsmith_index_u32(u_input.d.x, 18u)], false))));
    var_2 = Struct_3(_wgslsmith_add_i32(select(2147483647i, -60427i, !any(vec4<bool>(var_2.e.x, var_0.a.e, var_0.a.e, var_1.e))), _wgslsmith_mod_i32(-1i, -_wgslsmith_sub_i32(-1i, 0i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -549f))), _wgslsmith_f_op_vec3_f32(-var_2.c), vec2<bool>(~1u < _wgslsmith_add_u32(u_input.a.x, 4294967295u), true), !var_2.e);
    return !all(var_2.d);
}

fn func_4(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -1299f) + 780f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -859f), _wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(1562f, 1235f))), func_3())), func_2().a.b.x, func_2().c.x)));
    var var_1 = !(!(!(!(!vec2<bool>(arg_0, false)))));
    let var_2 = func_2().a;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1712f + -1000f), var_0.x) + var_0.xw);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -720f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_3.x)), var_3.x)))));
    return _wgslsmith_f_op_f32(sign(var_2.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(-2147483647i, max(countOneBits(u_input.b), u_input.b), false);
    global0 = array<vec3<bool>, 18>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-2497f, -386f)), 569f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -268f) + -300f) * -193f), _wgslsmith_f_op_f32(func_4(func_1(true, Struct_3(var_0, -494f, vec3<f32>(1933f, -1657f, -133f), vec2<bool>(true, false), vec3<bool>(false, false, true)))))), abs(reverseBits(_wgslsmith_sub_vec2_u32(firstLeadingBit(u_input.a), ~u_input.a))), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -991f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), 1292f)) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -782f) + _wgslsmith_f_op_f32(-391f - -2240f)), 281f)));
    global0 = array<vec3<bool>, 18>();
    global0 = array<vec3<bool>, 18>();
    var var_2 = Struct_3(-39969i, _wgslsmith_f_op_f32(f32(-1f) * -255f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.b.x, var_1.a)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, var_1.b.x, var_1.a), vec3<f32>(-770f, var_1.a, var_1.a), vec3<bool>(true, false, false)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-717f, -536f, -766f) * vec3<f32>(var_1.a, -1317f, -253f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1497f, 1749f, var_1.b.x) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.b.x, -341f, var_1.a))))), true)), vec2<bool>(all(vec4<bool>(select(var_1.e, true, var_1.e), var_1.e, true, var_1.e)), !((var_0 < u_input.b) & func_3())), select(global0[_wgslsmith_index_u32(u_input.d.x, 18u)], select(vec3<bool>(var_1.e, true, true), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.d.x, 1u), var_1.c.x), 18u)], vec3<bool>(var_1.b.x > -1723f, any(vec4<bool>(var_1.e, var_1.e, var_1.e, var_1.e)), false)), global0[_wgslsmith_index_u32(~1u, 18u)]));
    var_2 = Struct_3(-80859i, -288f, vec3<f32>(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.b.x, -1003f), _wgslsmith_div_f32(var_1.a, 1885f))) - _wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-1360f + var_2.b)))), !var_2.d, vec3<bool>(!any(var_2.e), any(select(var_2.e, vec3<bool>(true, var_2.d.x, var_1.e), !var_2.d.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(625f, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.x, 60075u, 95611u, 29167u), vec4<u32>(var_1.d, u_input.a.x, var_1.c.x, u_input.a.x))), vec3<u32>(4294967295u, 91725u, u_input.d.x << (u_input.d.x % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(reverseBits(1i), -2147483647i), _wgslsmith_sub_i32(var_2.a, 1i) << (~var_1.c.x % 32u)), var_0, ~abs(u_input.b)));
}

