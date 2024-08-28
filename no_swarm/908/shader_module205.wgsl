struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a >> (u_input.b.x % 32u), 13701i, u_input.a), -vec3<i32>(-u_input.a, -u_input.a, -10249i), vec3<i32>(u_input.a, countOneBits(-2147483647i), min(-u_input.a, firstTrailingBit(u_input.a)))), Struct_1(u_input.b.xxz, select(vec4<i32>(abs(u_input.a), ~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(18907i, u_input.a), vec2<i32>(424i, u_input.a)), -2147483647i), ~min(vec4<i32>(u_input.a, -28602i, -12250i, 1i), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)), vec4<bool>(true, true, true, all(vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -704f), _wgslsmith_f_op_f32(round(-931f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(634f * -220f)))), ~u_input.b.yzy), min(firstLeadingBit(vec4<i32>(-59852i ^ u_input.a, ~u_input.a, abs(8873i), ~u_input.a)), ~(~reverseBits(vec4<i32>(u_input.a, 35667i, u_input.a, 2147483647i)))));
    var var_1 = firstLeadingBit(min(~(~(~vec4<u32>(4294967295u, 4294967295u, 27263u, var_0.b.d.x))), u_input.b));
    var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(var_1.yyz, vec3<u32>(56737u, var_1.x, var_1.x) & vec3<u32>(var_0.b.a.x, 42484u, 36145u), vec3<u32>(4294967295u, 4294967295u, 0u)), ~(~vec3<u32>(4294967295u, var_1.x, 4294967295u))) >> (19319u % 32u), ~_wgslsmith_sub_u32(var_1.x, abs(~0u)), 75545u, 19031u);
    var_1 = u_input.b;
    var_1 = ~vec4<u32>(0u, ~1u, ~9348u | ~(~var_1.x), ~(_wgslsmith_sub_u32(var_0.b.d.x, 1u) & var_1.x));
    return -_wgslsmith_clamp_i32(~_wgslsmith_add_i32(~u_input.a, -15289i), ~u_input.a, -var_0.c.x & var_0.a.x);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(vec3<i32>(abs(u_input.a), func_3(), ~(-(i32(-1i) * -7404i))), Struct_1(vec3<u32>(0u, ~u_input.b.x, ~(~u_input.b.x)), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-1i, -2147483647i, -10227i, 16479i)), min(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, -4328i, -49289i), -vec4<i32>(u_input.a, 2147483647i, u_input.a, -7604i))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-166f)))), -2296f, _wgslsmith_f_op_f32(min(-832f, -925f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1455f)) * _wgslsmith_f_op_f32(-1000f - 1559f))), u_input.b.wyx & vec3<u32>(u_input.b.x & u_input.b.x, u_input.b.x, 4294967295u)), vec4<i32>(~_wgslsmith_add_i32(u_input.a, u_input.a), abs(u_input.a >> (u_input.b.x % 32u)), abs(i32(-1i) * -1i), _wgslsmith_add_i32(u_input.a, _wgslsmith_sub_i32(u_input.a, -65075i))) | reverseBits(~vec4<i32>(u_input.a, u_input.a, u_input.a, 41319i) << (u_input.b % vec4<u32>(32u))));
    let var_1 = !(!(~var_0.b.b.x >= ~(1i | u_input.a)));
    var var_2 = firstTrailingBit(u_input.b);
    let var_3 = Struct_2(vec3<i32>(~(~(i32(-1i) * -7732i)), _wgslsmith_mult_i32(u_input.a, -9903i), 48928i), var_0.b, countOneBits(-firstLeadingBit(vec4<i32>(u_input.a, 0i, var_0.a.x, 7873i) >> (u_input.b % vec4<u32>(32u)))));
    var var_4 = var_0.b.c.ywz;
    return Struct_2(select(select(-(vec3<i32>(-1i, var_0.b.b.x, -2147483647i) & vec3<i32>(-3357i, 11614i, u_input.a)), -_wgslsmith_sub_vec3_i32(var_3.c.yzz, var_0.a), true), var_0.a, true), var_0.b, var_3.c);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = arg_1;
    var var_1 = u_input.b.x;
    var var_2 = 0u;
    var_2 = firstTrailingBit(_wgslsmith_dot_vec2_u32(min(_wgslsmith_add_vec2_u32(select(vec2<u32>(arg_1.b.d.x, 1u), arg_1.b.a.yx, false), ~vec2<u32>(1u, var_0.b.a.x)), var_0.b.a.yz), vec2<u32>(6056u, min(u_input.b.x, 41124u))));
    var_0 = func_2();
    return 1462f;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    var var_0 = arg_1.c;
    let var_1 = ~vec3<u32>(func_2().b.d.x, u_input.b.x, ~u_input.b.x);
    var var_2 = ~vec2<i32>(u_input.a, i32(-1i) * -1i);
    let var_3 = _wgslsmith_f_op_f32(-arg_1.c.x);
    var_0 = vec4<f32>(-622f, 1000f, _wgslsmith_f_op_f32(func_1(vec2<i32>(~(-1i & arg_1.b.x), _wgslsmith_dot_vec4_i32(~arg_1.b, firstTrailingBit(vec4<i32>(var_2.x, arg_2.x, -53458i, arg_2.x)))), Struct_2(~arg_2, Struct_1(select(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(arg_0, 0u, 4294967295u), false), arg_1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1018f, 497f, arg_1.c.x) - arg_1.c), _wgslsmith_mult_vec3_u32(u_input.b.xzw, vec3<u32>(arg_1.a.x, 1u, 24973u))), firstTrailingBit(vec4<i32>(arg_1.b.x, arg_2.x, -2147483647i, 1i) >> (vec4<u32>(u_input.b.x, u_input.b.x, var_1.x, 4294967295u) % vec4<u32>(32u)))))), -266f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(689f * arg_1.c.x) + var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(u_input.b.x, Struct_1(u_input.b.xzw, ~vec4<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), u_input.a, _wgslsmith_add_i32(-1i, 1i), _wgslsmith_mult_i32(-9734i, u_input.a)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1597f, _wgslsmith_f_op_f32(func_1(vec2<i32>(-27961i, 20538i), Struct_2(vec3<i32>(-10764i, 67245i, 2147483647i), Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.a, 22962i, u_input.a, 1i), vec4<f32>(490f, -202f, 1852f, -1000f), vec3<u32>(71656u, 0u, u_input.b.x)), vec4<i32>(34326i, -87069i, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(218f - -1596f), 1f))), _wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.b.x, 4294967295u, 1u)), ~(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(select(vec3<i32>(-6058i, -2147483647i, -20130i), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(false, false, true)), select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 0i, u_input.a), vec3<bool>(false, false, true))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), -vec3<i32>(u_input.a, 8213i, u_input.a)), vec3<i32>(u_input.a, 0i, ~u_input.a))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-508f - 1000f))), -500f, true)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-736f)), _wgslsmith_f_op_f32(1483f + 588f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-270f - -354f), _wgslsmith_f_op_f32(-313f - 726f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1382f - _wgslsmith_f_op_f32(select(-257f, -616f, true))) + -1018f)));
    let var_1 = select(vec4<bool>(true, true, true, true), !vec4<bool>(true | all(vec3<bool>(false, false, false)), false, any(vec2<bool>(true, true)), true), false);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f));
    var var_2 = func_2().b;
    var var_3 = !(!vec4<bool>(true, !(var_1.x == true), all(select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false))), false));
    var var_4 = vec4<u32>(1u, reverseBits(_wgslsmith_dot_vec4_u32(max(~u_input.b, u_input.b), vec4<u32>(max(u_input.b.x, 63700u), ~u_input.b.x, _wgslsmith_div_u32(3432u, u_input.b.x), ~3579u))), 4294967295u, ~_wgslsmith_add_u32(12988u & var_2.a.x, abs(u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~abs(abs(var_4.x)), select(max(u_input.b.x, var_4.x & u_input.b.x), ~countOneBits(1u), false)), vec4<f32>(_wgslsmith_f_op_f32(func_1(-vec2<i32>(1i, 1i), func_2())), _wgslsmith_f_op_f32(f32(-1f) * -1314f), _wgslsmith_f_op_f32(f32(-1f) * -2318f), var_2.c.x), func_2().b.c.x, ~_wgslsmith_add_vec4_u32(u_input.b, abs(~u_input.b)));
}

