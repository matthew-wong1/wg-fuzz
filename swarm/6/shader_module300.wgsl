struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23>;

var<private> global1: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(6782i, 1i), vec2<i32>(-29250i, i32(-2147483648)), vec2<i32>(-10343i, 1i), vec2<i32>(21325i, i32(-2147483648)), vec2<i32>(1i, 2147483647i), vec2<i32>(-51869i, -41330i), vec2<i32>(i32(-2147483648), 11360i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, 1i), vec2<i32>(23607i, i32(-2147483648)), vec2<i32>(7517i, 1i), vec2<i32>(45049i, -28532i), vec2<i32>(26109i, 5936i), vec2<i32>(0i, -1i), vec2<i32>(2147483647i, -51475i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(16811i, 1i));

var<private> global2: i32 = 4769i;

var<private> global3: array<vec3<i32>, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2107f * -1000f)));
    return abs(u_input.b.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>) -> f32 {
    global3 = array<vec3<i32>, 18>();
    var var_0 = ~(~countOneBits(vec3<i32>(-43657i, u_input.a.x, u_input.a.x)) >> (vec3<u32>(~firstTrailingBit(49452u), func_3(), max(14162u, arg_1.x) & (u_input.b.x >> (u_input.b.x % 32u))) % vec3<u32>(32u)));
    global2 = -24992i;
    let var_1 = ~(~1u);
    var var_2 = 1i;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(302f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1105f)), 1000f))))));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: u32) -> vec2<bool> {
    global0 = array<vec2<i32>, 23>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, arg_0), _wgslsmith_f_op_f32(-arg_0), all(vec3<bool>(false, false, arg_1)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -739f)), arg_0))), _wgslsmith_f_op_f32(-arg_0));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_0), true || (arg_0 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(600f * 108f) * arg_0)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 853f, -927f, -1513f)))))), arg_1, u_input.b.zz);
    global1 = array<vec2<i32>, 18>();
    var var_2 = _wgslsmith_clamp_u32(4294967295u, 4104u, max(~(u_input.b.x & ~arg_2), u_input.b.x & firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.b.wz, u_input.b.zx))));
    return select(select(vec2<bool>(arg_1 || var_1.b, arg_1), vec2<bool>(true, true), all(select(select(vec2<bool>(arg_1, false), vec2<bool>(true, var_1.b), vec2<bool>(false, arg_1)), vec2<bool>(true, true), vec2<bool>(true, true)))), !select(!(!vec2<bool>(true, var_1.b)), vec2<bool>(arg_1, var_1.d), !select(vec2<bool>(var_1.d, false), vec2<bool>(var_1.b, false), vec2<bool>(arg_1, var_1.b))), !select(vec2<bool>(false, true & arg_1), vec2<bool>(any(vec2<bool>(true, true)), true), true));
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    global0 = array<vec2<i32>, 23>();
    var var_0 = !select(vec2<bool>(true, all(vec2<bool>(false, true))), select(func_4(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, false), vec2<u32>(0u, 1u))), true, reverseBits(0u), u_input.b.x), vec2<bool>(true, false), false), vec2<bool>(true, select(all(vec3<bool>(true, true, false)), true, true)));
    global1 = array<vec2<i32>, 18>();
    let var_1 = arg_0.x;
    global0 = array<vec2<i32>, 23>();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), _wgslsmith_div_u32(34287u, 28901u)), 0u, ~(~u_input.b.x)), ~u_input.b.x), _wgslsmith_add_vec2_u32(u_input.b.wy, vec2<u32>(~abs(0u), _wgslsmith_div_u32(u_input.b.x, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(u_input.b.x, ~firstLeadingBit(func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 1870i), vec2<i32>(23344i, -47721i)))));
    let var_1 = -652f;
    global3 = array<vec3<i32>, 18>();
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-115f + var_1)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1, var_1, true)), var_1))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(112f, var_1)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1860f, -140f), vec2<f32>(var_1, 1286f))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(var_1 + var_1), 2063f))), vec2<bool>(true, true))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, false, true), true), u_input.b.xy)), var_2.x)));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(step(623f, _wgslsmith_f_op_f32(-1054f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.x, -968f, false)) + _wgslsmith_f_op_f32(-var_1))))), false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1)), var_1, _wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, false), vec2<u32>(1u, u_input.b.x)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(531f, -1307f, var_2.x, var_3))), vec4<f32>(-1000f, 679f, 555f, var_3), false))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -711f, var_2.x, var_1) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 720f, var_3, var_1))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1069f, -751f, var_1, var_1) * vec4<f32>(var_3, var_3, var_3, -838f))))), !func_4(var_1, true & (u_input.b.x <= 28870u), _wgslsmith_dot_vec3_u32(u_input.b.wwy, vec3<u32>(u_input.b.x, 14561u, u_input.b.x)), ~select(8285u, u_input.b.x, false)).x, max(vec2<u32>(u_input.b.x, func_1(vec2<i32>(0i, 2147483647i))), select(vec2<u32>(firstLeadingBit(12487u), abs(4294967295u)), reverseBits(u_input.b.zy), vec2<bool>(true, true))));
    let var_5 = Struct_1(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1408f * var_2.x))) + var_4.c.x) > -1025f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_4.c - var_4.c))), vec4<f32>(_wgslsmith_div_f32(-809f, -211f), 745f, _wgslsmith_f_op_f32(-2060f + -479f), 1f))), !select(true, _wgslsmith_sub_i32(u_input.a.x, 7810i) >= u_input.a.x, all(vec4<bool>(true, false, false, true)) & !var_4.d), vec2<u32>(firstTrailingBit(~var_4.e.x), ~(~(u_input.b.x & 44048u))));
    let var_6 = -_wgslsmith_mult_vec3_i32(global3[_wgslsmith_index_u32(1u, 18u)], max(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 0i, 1i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~_wgslsmith_mod_vec3_i32(global3[_wgslsmith_index_u32(var_5.e.x, 18u)], vec3<i32>(2147483647i, 15831i, -20435i))));
    var var_7 = 666f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(reverseBits(~1u), firstTrailingBit(4294967295u) & 17431u), abs(u_input.a.x));
}

