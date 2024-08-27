struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32;

var<private> global2: Struct_1;

var<private> global3: f32 = 683f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: f32) -> vec4<u32> {
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 + global2.a))))), global2.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -560f)), arg_2) * _wgslsmith_f_op_vec2_f32(global2.c + _wgslsmith_f_op_vec2_f32(vec2<f32>(614f, -1000f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-575f, 840f) - global2.c)))), 4647u);
    var var_0 = Struct_2(17446u, _wgslsmith_clamp_u32(global2.b.x, countOneBits(firstTrailingBit(_wgslsmith_mod_u32(global2.d, 19096u))), min(global2.d, 58436u) | (max(7660u, global2.b.x) >> (global2.d % 32u))), false, !vec4<bool>(all(select(vec4<bool>(arg_1, arg_0.x, false, false), vec4<bool>(arg_0.x, true, arg_0.x, arg_1), false)), true, any(vec2<bool>(arg_0.x, false)), arg_2 >= _wgslsmith_f_op_f32(-409f + 312f)), select(arg_0.x, false, !arg_1));
    var var_1 = u_input.d == -_wgslsmith_add_i32(u_input.d, 89627i);
    let var_2 = Struct_2(var_0.b, ~16368u, ~_wgslsmith_mod_i32(-u_input.d, u_input.d) <= ~countOneBits(1i), !arg_0, (var_0.b | var_0.b) < _wgslsmith_dot_vec2_u32(global2.b.wz ^ vec2<u32>(24411u, global2.d), _wgslsmith_add_vec2_u32(~global2.b.zy, vec2<u32>(1u, 8584u))));
    var var_3 = global2.c;
    return global2.b;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: bool) -> f32 {
    var var_0 = select(arg_1.xxz, vec3<bool>(arg_1.x, arg_2, arg_2), all(vec4<bool>(all(vec2<bool>(arg_1.x, false)), arg_2 == false, !any(vec2<bool>(arg_2, false)), all(vec3<bool>(true, arg_1.x, true)))));
    global2 = Struct_1(_wgslsmith_f_op_f32(global2.a - global2.c.x), firstTrailingBit(~(~func_3(vec4<bool>(true, arg_0.c, arg_1.x, false), false, 377f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x + -876f) * _wgslsmith_f_op_f32(min(-362f, global2.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global2.a)), _wgslsmith_f_op_f32(-global2.c.x)))))), 51738u);
    global0 = _wgslsmith_f_op_f32(ceil(-956f));
    var_0 = arg_0.d.zwz;
    var var_1 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global2.c.x, global2.c.x)), 1514f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-474f * _wgslsmith_f_op_f32(step(global2.a, 1716f)))))));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = global2.b.x;
    global1 = u_input.c;
    global1 = 1i & select(reverseBits(83001i), _wgslsmith_mult_i32(-2147483647i, firstTrailingBit(u_input.a)), true);
    global0 = -779f;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(351f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-2036f, _wgslsmith_f_op_f32(469f - global2.c.x))))), _wgslsmith_f_op_f32(ceil(-1090f)), _wgslsmith_div_f32(-1000f, arg_1.x)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1650f, 831f, -414f, arg_2.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1055f, -1741f, -1886f, arg_2.x) * vec4<f32>(528f, arg_2.x, global2.a, 101f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -2114f), vec4<f32>(-1805f, -580f, 1166f, 1056f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, -1584f, -1000f, 362f), vec4<f32>(987f, 871f, arg_2.x, 1358f)))), !(-1269f == global2.a) != true)));
    return Struct_2(arg_0, 1u, !all(vec4<bool>(all(vec3<bool>(true, false, true)), true, true, select(false, false, true))), !(!vec4<bool>(any(vec2<bool>(true, true)), true, true, true)), true);
}

fn func_1() -> Struct_1 {
    let var_0 = global2.b.x;
    var var_1 = ~(-(abs(u_input.d) | 22852i));
    let var_2 = true;
    let var_3 = func_4(_wgslsmith_dot_vec3_u32(global2.b.wxw, ~(~vec3<u32>(global2.d, 2972u, 1u))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(116f + 482f)), all(!vec2<bool>(var_2, true)))), _wgslsmith_f_op_f32(1619f * -792f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(904f - _wgslsmith_f_op_f32(-global2.c.x)), global2.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(710f, global2.c.x)), _wgslsmith_f_op_f32(func_2(Struct_2(global2.b.x, 0u, var_2, vec4<bool>(var_2, true, var_2, false), true), vec4<bool>(false, var_2, var_2, var_2), var_2))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x * global2.a)), global2.c.x, _wgslsmith_f_op_f32(-global2.c.x))));
    global1 = u_input.c;
    return Struct_1(_wgslsmith_f_op_f32(exp2(global2.c.x)), ~(vec4<u32>(global2.b.x, ~4294967295u, ~global2.b.x, 4294967295u) & firstLeadingBit(global2.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global2.c - vec2<f32>(-258f, -911f)), _wgslsmith_div_vec2_f32(vec2<f32>(global2.a, -1342f), vec2<f32>(global2.a, 1437f)))) - vec2<f32>(_wgslsmith_f_op_f32(max(-2206f, global2.c.x)), global2.a)) - _wgslsmith_f_op_vec2_f32(global2.c * _wgslsmith_f_op_vec2_f32(global2.c - _wgslsmith_f_op_vec2_f32(global2.c - global2.c)))), ~(~var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) + -717f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1254f))))));
    let var_0 = 35609i;
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(1i, firstLeadingBit(30870i)), reverseBits(-_wgslsmith_div_i32(-1i, var_0)) << (reverseBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(global2.b.x, 0u), 0u)) % 32u), ~(-1i), var_0);
    let var_2 = func_1();
    var var_3 = Struct_2(_wgslsmith_dot_vec4_u32(countOneBits(firstLeadingBit(vec4<u32>(1u, 2768u, var_2.d, var_2.b.x)) << (vec4<u32>(0u, global2.b.x, 31314u, var_2.b.x) % vec4<u32>(32u))), global2.b), global2.d, true, select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, false, true, false)), func_4(var_2.d, _wgslsmith_f_op_vec2_f32(-global2.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, var_2.a, global2.c.x))).d, (var_0 <= var_1.x) && true), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), func_4(var_2.d, vec2<f32>(var_2.a, -749f), vec3<f32>(-586f, global2.a, 215f)).d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2251f)) <= var_2.c.x);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_mult_u32(34257u, 67442u), ~global2.d >> (var_2.d % 32u), !var_3.d.x, vec4<bool>(true, true, true, true), var_3.c), !select(vec4<bool>(var_3.c, var_3.d.x, true, true), select(vec4<bool>(false, true, true, var_3.c), var_3.d, var_3.d), vec4<bool>(var_3.d.x, true, var_3.d.x, var_3.e)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(abs(global2.c.x))), -1i);
}

