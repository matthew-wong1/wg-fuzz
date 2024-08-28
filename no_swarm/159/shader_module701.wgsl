struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 7>;

var<private> global1: array<Struct_1, 17>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1212f)));
}

fn func_2(arg_0: vec4<u32>) -> bool {
    global0 = array<vec3<i32>, 7>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(max(vec3<u32>(arg_0.x, 17421u, 0u), arg_0.zxy), global1[_wgslsmith_index_u32(min(4294967295u, arg_0.x), 17u)]))) + -1000f) - 1082f);
    let var_1 = firstTrailingBit(global0[_wgslsmith_index_u32(arg_0.x, 7u)]) & ((vec3<i32>(-1i) * -global0[_wgslsmith_index_u32(arg_0.x, 7u)]) & _wgslsmith_sub_vec3_i32(vec3<i32>(~1960i, u_input.a, select(-2147483647i, u_input.a, false)), vec3<i32>(0i, u_input.a, u_input.a)));
    var var_2 = Struct_2(Struct_1(vec4<bool>(true, false, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1991f, _wgslsmith_div_f32(-1475f, 123f), all(vec3<bool>(true, false, false)))) * _wgslsmith_f_op_f32(123f + -1078f)), vec3<u32>(62040u, 47693u ^ arg_0.x, ~0u) | arg_0.xyw, vec3<f32>(-842f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0))), arg_0.zy), Struct_1(vec4<bool>(true, any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))), !(0u <= arg_0.x), -17396i < ~u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -310f), ~select(arg_0.wxz ^ vec3<u32>(0u, arg_0.x, 1u), vec3<u32>(4294967295u, arg_0.x, arg_0.x), 140f <= var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 539f, -1000f))), vec2<u32>(_wgslsmith_add_u32(arg_0.x, arg_0.x | 1u), arg_0.x)), !vec2<bool>(any(vec3<bool>(true, true, true)), false));
    var var_3 = !var_2.b.a.zxw;
    return !(select(var_2.a.a.x, any(!vec3<bool>(var_3.x, false, true)), var_3.x) || all(vec3<bool>(true, false, var_3.x)));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = 1000f;
    global1 = array<Struct_1, 17>();
    let var_1 = !arg_2.a;
    var var_2 = Struct_1(select(!vec4<bool>(any(var_1), true & arg_1.x, all(var_1.yzy), true), !select(var_1, !vec4<bool>(arg_1.x, arg_2.a.x, true, true), var_1.x | false), arg_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-654f, _wgslsmith_f_op_f32(-arg_2.b)) * _wgslsmith_f_op_f32(trunc(2059f))))), vec3<u32>(arg_2.c.x, max(~_wgslsmith_mod_u32(5314u, arg_0), arg_2.c.x), arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1790f, arg_2.d.x)))) + arg_2.d), ~select(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(1u, 4294967295u)), ~arg_2.c.zx), reverseBits(vec2<u32>(1u, arg_0) ^ arg_2.e), select(select(arg_1.xx, arg_1.yx, arg_2.a.x), vec2<bool>(false, false), any(vec4<bool>(false, var_1.x, arg_1.x, arg_1.x)))));
    global0 = array<vec3<i32>, 7>();
    return u_input.a;
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1598f)))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2056f, -187f)), _wgslsmith_div_vec2_f32(vec2<f32>(-263f, -1000f), vec2<f32>(-897f, -2225f)))))));
    let var_2 = func_4(countOneBits(114210u << (1u % 32u)), vec3<bool>(true, true, func_2(~vec4<u32>(1u, 27916u, 1u, 51882u)) != false), Struct_1(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false)), vec4<bool>(all(vec4<bool>(true, true, true, false)), true, true, false), vec4<bool>(true, true, true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), 2653f), max(firstTrailingBit(vec3<u32>(1u, 1u, 1u)), ~min(vec3<u32>(32294u, 31251u, 0u), vec3<u32>(1u, 14420u, 48273u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1012f, var_1.x, var_1.x)))), vec2<u32>(_wgslsmith_div_u32(~10076u, _wgslsmith_clamp_u32(65490u, 4294967295u, 4294967295u)), ~24381u)), -1i);
    var var_3 = Struct_2(Struct_1(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), true), !(var_1.x == var_1.x)), var_1.x, vec3<u32>(_wgslsmith_div_u32(abs(1u), 1u), 1u, countOneBits(abs(6459u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(var_1.x, var_1.x, 317f), vec3<bool>(true, true, true)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(635f, 474f, var_1.x))))), vec2<u32>(9757u, _wgslsmith_sub_u32(firstLeadingBit(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(57767u, 0u, 37563u), vec3<u32>(49867u, 88711u, 1u))))), Struct_1(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(false, false, true, true)), vec4<bool>(true, all(vec3<bool>(false, false, true)), false, true), vec4<bool>(any(vec3<bool>(true, true, false)), true, false, false)), -688f, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(28148u, 4294967295u, 4089u, 20303u), vec4<u32>(271u, 51884u, 20904u, 4294967295u)) << (1u % 32u), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(168467u, 4294967295u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(64469u, 14858u, 1u), vec3<u32>(1u, 0u, 0u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-761f, _wgslsmith_f_op_f32(-397f - 551f), var_1.x)), vec2<u32>(~_wgslsmith_sub_u32(12142u, 1u), 1u)), vec2<bool>(all(vec2<bool>(true, true)), true));
    let var_4 = min(vec4<i32>(-21105i, u_input.a, ~0i, -firstLeadingBit(~u_input.a)), abs(_wgslsmith_div_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-27276i, u_input.a, var_2, 0i), vec4<i32>(var_2, u_input.a, u_input.a, u_input.a))), vec4<i32>(2147483647i, _wgslsmith_mod_i32(-23122i, 16850i), -24137i, -34536i | u_input.a))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 17>();
    let var_0 = select(countOneBits(abs(func_1()) << (_wgslsmith_div_u32(78742u, 59605u) % 32u)), _wgslsmith_mult_i32(abs(-1i), -u_input.a), any(!vec4<bool>(all(vec3<bool>(true, false, false)), true, true, true)));
    global0 = array<vec3<i32>, 7>();
    var var_1 = min(vec4<i32>(-24941i, u_input.a, u_input.a, 19774i), max(~vec4<i32>(select(0i, u_input.a, true), _wgslsmith_mult_i32(1412i, 5929i), u_input.a, -1i), max(select(countOneBits(vec4<i32>(-1i, var_0, 1i, 1i)), -vec4<i32>(-2147483647i, var_0, u_input.a, -13675i), vec4<bool>(false, false, true, true)), vec4<i32>(u_input.a & -1i, _wgslsmith_sub_i32(0i, 2147483647i), select(u_input.a, var_0, true), ~var_0))));
    global1 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(42658u, ~firstTrailingBit(_wgslsmith_clamp_u32(27747u, 0u, 1u)), 77475u), vec2<i32>(var_1.x, countOneBits(-11418i)), -vec2<i32>(~var_0, var_1.x) << (max(select(~vec2<u32>(1163u, 60116u), vec2<u32>(71038u, 1u), select(false, true, true)), vec2<u32>(1u, _wgslsmith_mult_u32(1u, 24248u))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), select(firstTrailingBit(vec2<u32>(1u, 4294967295u)), ~vec2<u32>(4294967295u, 1u), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))) << (vec2<u32>(max(~65147u, _wgslsmith_mult_u32(1u, 1u)), ~(~0u)) % vec2<u32>(32u)), 4294967295u);
}

