struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> u32 {
    var var_0 = Struct_2(arg_1.x);
    var_0 = Struct_2(24140u);
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_1.yww, vec3<u32>(_wgslsmith_clamp_u32(u_input.a, var_0.a, 96390u), ~56157u, _wgslsmith_sub_u32(var_0.a, u_input.d.x))) << (vec3<u32>(0u, var_0.a, ~19992u) % vec3<u32>(32u)), ~(~(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x, 26650u, 2162u), vec3<u32>(arg_1.x, var_0.a, 1u)) << (vec3<u32>(4294967295u, u_input.a, u_input.e.x) % vec3<u32>(32u)))));
    var var_2 = vec2<i32>(-7944i, arg_0);
    let var_3 = -u_input.b.ywx;
    return var_0.a;
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = Struct_2(arg_0.b);
    var_0 = Struct_1(var_0.a, _wgslsmith_mult_u32(var_1.a, ~4294967295u));
    var_0 = Struct_1(vec2<bool>(var_0.a.x, any(select(vec3<bool>(var_0.a.x, false, var_0.a.x), vec3<bool>(true, arg_0.a.x, arg_0.a.x), arg_0.a.x)) && false), ~var_0.b);
    var_0 = Struct_1(select(select(vec2<bool>(arg_0.a.x, !var_0.a.x), vec2<bool>(true, !arg_0.a.x), any(!var_0.a)), select(select(vec2<bool>(false, arg_0.a.x), vec2<bool>(true, true), vec2<bool>(false, arg_0.a.x)), !var_0.a, var_0.a), false), arg_0.b);
    return vec2<bool>(any(vec3<bool>(all(!vec4<bool>(true, true, var_0.a.x, true)), -u_input.b.x != _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 5458i), any(!vec3<bool>(false, true, var_0.a.x)))), true);
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1631f)), 1000f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-308f)) * -1567f)))));
    let var_1 = 1105f;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1)));
    var var_2 = Struct_1(func_4(Struct_1(vec2<bool>(true, 702f <= var_1), func_3(countOneBits(u_input.b.x), vec4<u32>(arg_0, u_input.c.x, 4294967295u, 4076u)))), ~u_input.c.x);
    return -992f;
}

fn func_5(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(4294967295u);
    let var_1 = arg_0.x;
    let var_2 = max(u_input.a, ~countOneBits(u_input.c.x));
    var var_3 = vec4<i32>(-1i, max(~(-2147483647i), _wgslsmith_mod_i32(0i, 1i)) >> ((9453u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(9470u, 3862u), vec2<u32>(var_2, u_input.d.x)) % 32u)) % 32u), -2147483647i, abs(firstLeadingBit(u_input.b.x)) ^ 2147483647i) << (vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.d ^ u_input.c, _wgslsmith_clamp_vec2_u32(u_input.d, vec2<u32>(0u, 4294967295u), _wgslsmith_add_vec2_u32(u_input.d, u_input.c))), _wgslsmith_mult_u32(var_2, abs(15853u << (u_input.d.x % 32u))), var_2, ~(~1u)) % vec4<u32>(32u));
    var_3 = _wgslsmith_mod_vec4_i32(u_input.b, _wgslsmith_add_vec4_i32(-((vec4<i32>(-1i, u_input.b.x, -1i, var_3.x) | u_input.b) | u_input.b), u_input.b));
    return Struct_1(!select(vec2<bool>(all(vec4<bool>(true, true, false, true)), func_4(Struct_1(vec2<bool>(true, true), var_2)).x), vec2<bool>(u_input.b.x == u_input.b.x, var_1 < 1000f), select(func_4(Struct_1(vec2<bool>(true, true), var_0.a)), vec2<bool>(true, true), true)), _wgslsmith_mult_u32(countOneBits(1u), max(_wgslsmith_mod_u32(u_input.a, var_0.a), abs(u_input.d.x))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: bool) -> Struct_2 {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(916f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_2(u_input.a)), -1526f), vec4<f32>(_wgslsmith_f_op_f32(-1110f - 226f), _wgslsmith_div_f32(-139f, 351f), -245f, _wgslsmith_f_op_f32(-364f * 586f)))));
    var var_1 = _wgslsmith_f_op_f32(abs(-1262f));
    var_1 = _wgslsmith_f_op_f32(max(252f, _wgslsmith_f_op_f32(-849f - _wgslsmith_f_op_f32(ceil(734f)))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1232f);
    var_1 = _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), -1000f));
    return Struct_2(_wgslsmith_add_u32(94264u, ~firstLeadingBit(arg_1.a) ^ u_input.e.x));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<i32>) -> vec4<u32> {
    let var_0 = select(max(u_input.d, vec2<u32>(abs(func_5(vec4<f32>(-1133f, -2436f, -619f, 1649f)).b), ~(~arg_0.a))), ~(abs(~vec2<u32>(23290u, 0u)) << (vec2<u32>(4294967295u, ~arg_0.a) % vec2<u32>(32u))), func_4(Struct_1(vec2<bool>(true, true), 28033u)));
    return ~vec4<u32>(28033u, 0u, ~13906u, ~(40085u ^ abs(var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.c, reverseBits(u_input.e)), u_input.d);
    let var_1 = vec2<u32>(_wgslsmith_dot_vec4_u32(func_6(func_1(all(vec4<bool>(true, true, false, true)), Struct_2(u_input.d.x), vec3<i32>(u_input.b.x, u_input.b.x, 7858i), false), Struct_1(vec2<bool>(true, false), 0u & u_input.e.x), -vec2<i32>(49636i, -23894i), vec4<i32>(1i, i32(-1i) * -1i, max(u_input.b.x, u_input.b.x), _wgslsmith_sub_i32(-53039i, -11002i))), abs(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 19698u, u_input.a, u_input.c.x), vec4<u32>(0u, u_input.c.x, 29931u, 1u)))), 1u);
    let var_2 = true;
    var_0 = ~25618u;
    var var_3 = min(reverseBits(_wgslsmith_sub_vec2_u32(var_1, vec2<u32>(_wgslsmith_add_u32(3208u, var_1.x), 4294967295u))), vec2<u32>(1u, 20216u));
    var_0 = ~_wgslsmith_sub_u32(1u & ~var_1.x, ~1u << (select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, 43193u, 0u), vec3<u32>(u_input.a, var_1.x, u_input.c.x)), _wgslsmith_mult_u32(u_input.d.x, var_1.x), select(var_2, true, true)) % 32u));
    var var_4 = func_5(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-446f, -124f, -490f, 113f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1994f, -158f, -542f, 987f) + vec4<f32>(1f, 1f, 1f, 1f)))))));
    var_0 = 1u;
    var var_5 = func_1(true, func_1(any(var_4.a), func_1(false, func_1(var_2 == false, func_1(true, Struct_2(var_4.b), vec3<i32>(21602i, u_input.b.x, -1i), false), -vec3<i32>(-1i, -1i, u_input.b.x), var_4.a.x || true), abs(abs(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i))), ~u_input.b.x < _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), ~_wgslsmith_add_vec3_i32(-u_input.b.yww, u_input.b.zyx ^ u_input.b.zyx), !var_4.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(3811i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i)), u_input.b.zxz), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_1.x)) * _wgslsmith_f_op_f32(max(-639f, -731f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(851f - -488f)), -1471f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f + 126f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1655f, -1967f, 953f, 341f))))), -1053f);
}

