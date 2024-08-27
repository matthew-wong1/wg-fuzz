struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_5;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_5) -> f32 {
    let var_0 = Struct_2(~(~abs(vec3<u32>(45841u, 54844u, u_input.a)) ^ (vec3<u32>(23674u, 4294967295u, u_input.a) | vec3<u32>(global1.c, 1u, 1u))), true, global0.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1688f) + 1220f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, global0.b.c.x, arg_0.c.x) * arg_0.b) * _wgslsmith_f_op_vec3_f32(-arg_2.b.b.b)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global1.b.b.c.wwx * vec3<f32>(-798f, -1202f, global0.b.a))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.b.b.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_1.a.c.x)))), _wgslsmith_f_op_f32(arg_2.b.b.a - -522f), _wgslsmith_f_op_f32(-arg_2.b.b.b.x)), true));
    global1 = Struct_5(max(_wgslsmith_div_vec2_i32(global1.a, arg_2.a), abs(vec2<i32>(-1i) * -vec2<i32>(0i, -1i))), Struct_4(_wgslsmith_mod_i32(abs(i32(-1i) * -2147483647i), 2147483647i), Struct_1(_wgslsmith_f_op_f32(1471f - _wgslsmith_f_op_f32(global1.b.b.c.x + -1035f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.b.b.x, arg_0.c.x, arg_2.b.b.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.b.b.c + arg_2.b.b.c), _wgslsmith_f_op_vec4_f32(exp2(global1.b.b.c))), select(true, !arg_0.d, !global0.c)), any(vec2<bool>(global0.c && false, arg_1.a.d)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(~(-2696i), 23894i >> (var_0.a.x % 32u), -18773i), ~countOneBits(0i))), abs(4294967295u));
    let var_1 = !(true | arg_1.a.d);
    var var_2 = ~(~(~(firstTrailingBit(global1.c) >> (var_0.a.x % 32u))));
    var var_3 = _wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(~_wgslsmith_mod_u32(reverseBits(16873u), 12405u), 1u, 0u));
    return arg_1.a.b.x;
}

fn func_2() -> Struct_5 {
    let var_0 = ~(~min(0u, global1.c));
    let var_1 = global0.b;
    let var_2 = Struct_3(global0.b);
    var var_3 = Struct_5(~vec2<i32>(-7273i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, -6207i), -1i)), Struct_4(global0.a, Struct_1(_wgslsmith_f_op_f32(-global0.b.c.x), vec3<f32>(var_1.a, global0.b.b.x, 424f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_1.c)) * vec4<f32>(var_1.a, global0.b.b.x, 1000f, 1716f)), global0.a < -global1.b.a), -122f <= _wgslsmith_f_op_f32(func_3(Struct_1(558f, vec3<f32>(global0.b.b.x, global1.b.b.c.x, var_1.c.x), vec4<f32>(2049f, var_1.a, global0.b.b.x, var_1.a), false), Struct_3(var_2.a), Struct_5(global1.a, global1.b, 21595u))), i32(-1i) * -(global0.d | 24446i)), _wgslsmith_add_u32(~1u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global1.c, 62421u, u_input.a, global1.c) ^ vec4<u32>(u_input.a, u_input.a, 0u, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.c, u_input.a, var_0, 31512u), abs(vec4<u32>(49418u, 4294967295u, u_input.a, global1.c)), reverseBits(vec4<u32>(u_input.a, var_0, 24460u, global1.c))))));
    let var_4 = Struct_4(0i, Struct_1(1287f, var_3.b.b.b, _wgslsmith_f_op_vec4_f32(var_3.b.b.c - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.b.b.c * var_2.a.c))), false), select(true & !(!var_2.a.d), var_2.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.a + var_2.a.c.x) + -1683f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.c.x, global1.b.b.c.x)) * _wgslsmith_f_op_f32(-global0.b.b.x))), ~(~1i));
    return Struct_5(vec2<i32>(2147483647i, 2147483647i), Struct_4(-54598i ^ global0.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1712f - -612f) + var_4.b.a), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_1.c.wyx + var_1.c.yyw), vec3<f32>(625f, global1.b.b.a, global1.b.b.b.x))), var_1.c, any(select(vec2<bool>(var_3.b.c, true), vec2<bool>(false, false), vec2<bool>(false, false)))), true, 16817i), 4294967295u);
}

fn func_4(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -163f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.b.x, global1.b.b.c.x, var_0), vec3<f32>(-136f, 1838f, var_0)), _wgslsmith_f_op_vec3_f32(max(global0.b.b, global0.b.b))))))))));
    global0 = func_2().b;
    global0 = global1.b;
    global0 = Struct_4(93697i & _wgslsmith_add_i32(arg_2, _wgslsmith_mult_i32(firstLeadingBit(arg_2), global0.d)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(-1000f, vec3<f32>(arg_0.b.b.b.x, var_0, global0.b.c.x), global1.b.b.c, false), Struct_3(Struct_1(var_0, vec3<f32>(1707f, -323f, -334f), global0.b.c, global0.b.d)), arg_0)) - -1000f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(548f, _wgslsmith_div_f32(global1.b.b.c.x, arg_0.b.b.a), func_2().b.b.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.b.c.x, global1.b.b.b.x, -140f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_1.x), global0.b.a, _wgslsmith_f_op_f32(-var_0)) * vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.b.b.x - 1321f), global0.b.a, -412f, -911f)), arg_0.b.c), global1.b.c, _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(-vec4<i32>(-1i, 1i, 1i, 1i), vec4<i32>(21980i, global1.a.x, global0.d, global0.a) & vec4<i32>(-1i, global0.a, 23215i, -69214i)), ~reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a, arg_0.a.x, 0i, global0.d), vec4<i32>(0i, global1.b.a, 0i, 2147483647i), vec4<i32>(global0.d, 0i, arg_0.a.x, arg_2)))));
    return Struct_2(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(firstTrailingBit(global1.c), u_input.a), arg_0.c), global1.c, arg_0.c), !all(!(!vec4<bool>(true, arg_0.b.b.d, global1.b.c, arg_0.b.b.d))), Struct_1(_wgslsmith_f_op_f32(-global0.b.c.x), _wgslsmith_f_op_vec3_f32(select(global0.b.b, vec3<f32>(global0.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -618f), 1000f), !(!vec3<bool>(global1.b.c, true, global0.b.d)))), _wgslsmith_f_op_vec4_f32(-arg_0.b.b.c), arg_0.b.b.d), arg_0.b.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = global1.b.b.d;
    var_0 = false;
    var var_1 = func_4(func_2(), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.x, arg_2.x, 652f, 328f))) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.b.b.x, arg_2.x, -192f, arg_2.x), global1.b.b.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, global0.b.a, global0.b.a) * vec4<f32>(-2723f, 1586f, -1263f, 1506f))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global0.b.c - global1.b.b.c))))), min(~select(arg_3.x, global1.a.x, true) ^ _wgslsmith_dot_vec4_i32(-arg_1, _wgslsmith_clamp_vec4_i32(vec4<i32>(-7773i, global1.a.x, 32692i, 11644i), vec4<i32>(2147483647i, -50246i, 0i, 0i), arg_1)), -countOneBits(1i)));
    global1 = func_2();
    var_1 = Struct_2(vec3<u32>(4294967295u, global1.c, u_input.a | ~(~global1.c)), true, global0.b, global0.b);
    return _wgslsmith_f_op_f32(func_3(func_2().b.b, Struct_3(func_2().b.b), func_2()));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_5, arg_3: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global0.b.b.x, -988f, 455f), _wgslsmith_div_vec4_f32(arg_1.c, arg_2.b.b.c)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global0.b.c + global0.b.c)))), vec4<f32>(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(abs(global0.b.a))), -170f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(764f, 1222f), 1627f)), arg_1.c.x)));
    let var_1 = func_2().b.b;
    let var_2 = Struct_3(arg_2.b.b);
    global1 = Struct_5(global1.a, func_2().b, ~firstLeadingBit(4294967295u));
    var var_3 = 1i;
    return Struct_4(arg_0.x, global0.b, select(false, true, !global0.c || false), abs(_wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, arg_0.x, arg_0.x, -1i), arg_0, arg_0), ~arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(~(~vec4<i32>(abs(global0.d), 0i, _wgslsmith_div_i32(-2147483647i, global1.a.x), -6025i)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-355f)) - global1.b.b.a))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.b.c.x) - _wgslsmith_div_f32(429f, global0.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b.a, 140f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.a, global1.c), vec4<i32>(global1.b.a, global1.b.d, 6645i, 5187i), global1.b.b.b, vec3<i32>(global1.a.x, 13207i, -36989i))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b.c)), _wgslsmith_f_op_vec4_f32(-global1.b.b.c)), !any(vec4<bool>(global1.b.c, global1.b.c, global0.c, global0.c))), func_2(), 4294967295u);
    var var_0 = global0.d;
    let var_1 = _wgslsmith_dot_vec2_u32(countOneBits(abs(vec2<u32>(4181u, _wgslsmith_clamp_u32(u_input.a, 1u, u_input.a)))), vec2<u32>(select(_wgslsmith_mod_u32(u_input.a & 0u, select(u_input.a, 104568u, false)), ~18561u, global0.b.d), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(21693u, u_input.a), vec2<u32>(u_input.a, global1.c))), vec2<u32>(0u, select(4294967295u, 9960u, global1.b.b.d)))));
    var var_2 = Struct_2(~(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(70557u, global1.c, var_1)), ~vec3<u32>(u_input.a, global1.c, global1.c)) & ~(vec3<u32>(0u, global1.c, 36694u) & vec3<u32>(var_1, 1u, var_1))), !global0.b.d, Struct_1(_wgslsmith_div_f32(-952f, global0.b.b.x), global1.b.b.c.ywy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global1.b.b.c))) * global0.b.c), false), global0.b);
    var var_3 = func_5(-vec4<i32>(global1.a.x, global0.d, select(~global0.d, firstLeadingBit(global1.a.x), 71150u == var_2.a.x), i32(-1i) * -24817i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(186f + var_2.d.b.x) - func_2().b.b.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.b.x, global0.b.c.x, -135f)), _wgslsmith_f_op_vec3_f32(ceil(var_2.d.c.xxw)))) * global0.b.b), _wgslsmith_f_op_vec4_f32(round(global0.b.c)), var_2.d.d), Struct_5(vec2<i32>(-1i) * -(~global1.a), Struct_4(_wgslsmith_mult_i32(i32(-1i) * -30634i, countOneBits(global0.a)), Struct_1(_wgslsmith_f_op_f32(-global0.b.c.x), vec3<f32>(-388f, -1079f, -573f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1251f, global1.b.b.c.x, 267f, -1000f))), global1.c != var_1), true, abs(global1.b.a >> (1u % 32u))), 1u), ~(~min(0u, _wgslsmith_mod_u32(1u, 21476u)))).b.d;
    var var_4 = firstLeadingBit(0u);
    var_0 = ~_wgslsmith_dot_vec4_i32(~select(~vec4<i32>(-41748i, global1.a.x, 38168i, global1.a.x), vec4<i32>(global1.b.d, 1i, global0.a, -2147483647i) << (vec4<u32>(u_input.a, global1.c, 27257u, u_input.a) % vec4<u32>(32u)), var_2.b), -(vec4<i32>(36979i, -9151i, global1.b.d, global1.b.d) << (vec4<u32>(13824u, 59873u, 83436u, 4294967295u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.d, -1660f);
}

