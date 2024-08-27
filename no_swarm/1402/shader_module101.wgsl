struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: vec3<bool>) -> i32 {
    let var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = arg_0;
    var var_3 = ~(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(48942u, arg_0.b.x, 1u), var_2.a.zyy, vec3<u32>(arg_1.d.x, arg_0.b.x, arg_1.d.x)), abs(~arg_0.b.zwy)) ^ ((4294967295u >> (countOneBits(arg_1.d.x) % 32u)) | 4294967295u));
    var var_4 = min(0i, arg_1.b);
    return u_input.c.x;
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> f32 {
    var var_0 = Struct_2(-vec2<i32>(434i, u_input.e.x), _wgslsmith_div_i32(func_3(Struct_1(u_input.b, vec4<u32>(1u, u_input.b.x, 1u, 85633u), vec4<i32>(u_input.e.x, -15428i, -2147483647i, 1i), u_input.e.x, 276f), Struct_2(u_input.c, -14345i, 903f, u_input.b.yyw), _wgslsmith_add_u32(u_input.d, u_input.a), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false)) << (0u % 32u), arg_1.x), _wgslsmith_f_op_f32(-arg_0), vec3<u32>(u_input.d, ~u_input.b.x, _wgslsmith_add_u32(u_input.d, ~(~0u))));
    var_0 = Struct_2(var_0.a, -2147483647i >> (~_wgslsmith_add_u32(~67277u, _wgslsmith_mod_u32(81545u, var_0.d.x)) % 32u), _wgslsmith_f_op_f32(-arg_0), select(~vec3<u32>(100533u, 4294967295u, ~u_input.d), u_input.b.yzy & abs(vec3<u32>(var_0.d.x, 4294967295u, 0u)), vec3<bool>(true, true, true)));
    var_0 = Struct_2(max(_wgslsmith_clamp_vec2_i32(reverseBits(~var_0.a), vec2<i32>(-1i) * -vec2<i32>(arg_1.x, 2147483647i), vec2<i32>(abs(u_input.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_1.x, 0i), vec3<i32>(arg_1.x, var_0.b, arg_1.x)))), arg_1), var_0.b, _wgslsmith_f_op_f32(max(317f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(663f * 642f), _wgslsmith_f_op_f32(-arg_0))), -1194f))), vec3<u32>(1u, 10271u, var_0.d.x));
    let var_1 = ~(~u_input.b.yxz);
    var_0 = Struct_2(vec2<i32>(-1i) * -max(-arg_1, arg_1 << (vec2<u32>(55737u, 9407u) % vec2<u32>(32u))), i32(-1i) * -(-53094i ^ _wgslsmith_div_i32(var_0.a.x, arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + 761f), ~(~(~vec3<u32>(50262u, u_input.d, var_1.x))));
    return _wgslsmith_f_op_f32(-var_0.c);
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<f32>) -> f32 {
    var var_0 = Struct_2(vec2<i32>(_wgslsmith_add_i32(49472i, 26958i), _wgslsmith_add_i32(min(_wgslsmith_clamp_i32(u_input.e.x, -4842i, -44112i), i32(-1i) * -35930i), _wgslsmith_add_i32(-1i, -59451i ^ u_input.c.x))), -2147483647i, _wgslsmith_f_op_f32(func_2(726f, -(~vec2<i32>(-2147483647i, u_input.c.x)) >> (vec2<u32>(~22623u, _wgslsmith_mod_u32(70794u, arg_1.x)) % vec2<u32>(32u)))), vec3<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, arg_1.x), ~vec2<u32>(8551u, u_input.a)), u_input.a));
    var var_1 = Struct_1(~u_input.b, select(abs((vec4<u32>(u_input.a, 78582u, 69401u, var_0.d.x) | u_input.b) ^ ~vec4<u32>(u_input.d, 1u, 48915u, arg_1.x)), select(vec4<u32>(~var_0.d.x, u_input.a, _wgslsmith_mult_u32(26111u, u_input.a), arg_1.x), u_input.b, all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)))), true), abs(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(9171i, 0i, -10199i, 2147483647i)), -vec4<i32>(u_input.e.x, 35957i, 13759i, u_input.c.x))) & ~(~vec4<i32>(var_0.a.x, -44470i, u_input.c.x, -1i)), 0i, arg_2.x);
    var var_2 = var_1.e;
    var_1 = Struct_1(~(~(vec4<u32>(25369u, 24219u, arg_1.x, 0u) | u_input.b)), var_1.a, var_1.c, 10718i, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, arg_2.x))));
    var var_3 = vec4<bool>(var_0.a.x <= 2147483647i, 1i <= (-u_input.c.x | u_input.c.x), all(!select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true))), !(!any(vec2<bool>(true, false))) | any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
    return _wgslsmith_f_op_f32(f32(-1f) * -153f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = max(abs(firstLeadingBit(15744u)), _wgslsmith_mod_u32(~(arg_0.a.x ^ 106595u), arg_2.b.x) ^ _wgslsmith_add_u32(max(_wgslsmith_sub_u32(30156u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(88876u, 37965u, 49587u, 31320u), vec4<u32>(arg_0.a.x, 57667u, arg_1.d.x, 0u))), ~(61576u ^ u_input.a)));
    var_1 = max(27900u, arg_1.d.x);
    var_1 = arg_0.a.x & ~(~(~4294967295u));
    var_1 = 29448u | ~(0u << ((firstLeadingBit(u_input.a) << (4294967295u % 32u)) % 32u));
    return Struct_1(abs(vec4<u32>(arg_2.a.x, select(_wgslsmith_mod_u32(arg_1.d.x, 1u), firstLeadingBit(var_0.a.x), all(vec4<bool>(false, true, true, false))), ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.d, u_input.a), vec4<u32>(arg_1.d.x, arg_0.a.x, 41297u, u_input.d)))), vec4<u32>(arg_0.b.x, 52661u, ~arg_1.d.x, arg_0.a.x) ^ ~vec4<u32>(1u, u_input.b.x, max(arg_0.a.x, arg_0.b.x), arg_1.d.x), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(4505i, -28262i) >> (_wgslsmith_mult_u32(var_0.a.x, 0u) % 32u), min(-12266i, -2147483647i << (arg_1.d.x % 32u)), u_input.c.x, -21677i), _wgslsmith_div_vec4_i32(-vec4<i32>(arg_1.a.x, -7458i, -17223i, var_0.c.x), arg_2.c)), u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e * 915f)) + _wgslsmith_f_op_f32(arg_2.e + _wgslsmith_f_op_f32(-arg_2.e)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32, arg_3: vec4<i32>) -> u32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(117f + -253f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(round(arg_2))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.e, arg_0.e, true)), _wgslsmith_f_op_f32(arg_2 - -549f), -1697f, _wgslsmith_f_op_f32(-var_0.e)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -522f, arg_2), vec4<f32>(-317f, arg_0.e, arg_2, arg_2)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1393f, 329f, _wgslsmith_f_op_f32(sign(-3236f)), -570f)));
    let var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a.x, u_input.d, 0u, var_0.b.x), vec4<u32>(13324u, 4294967295u, u_input.b.x, 12885u))), arg_0.b >> (vec4<u32>(arg_0.a.x, 0u, 52416u, u_input.d) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(~(~u_input.b), ~vec4<u32>(4294967295u, 28224u, 17365u, var_0.a.x)) % vec4<u32>(32u)), ~min(_wgslsmith_sub_vec4_u32(~arg_0.b, u_input.b), ~select(vec4<u32>(u_input.a, arg_0.b.x, 1u, arg_0.b.x), vec4<u32>(1u, var_0.a.x, 4294967295u, arg_0.a.x), true)));
    let var_3 = ~(vec2<u32>(u_input.d, 1u) ^ arg_0.b.zz);
    let var_4 = !(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)))) | !(~u_input.c.x > u_input.e.x));
    return ~arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_5(func_4(Struct_1(abs(u_input.b), u_input.b, _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.c.x, -24887i), vec4<i32>(-1i, u_input.c.x, u_input.e.x, 0i)), -51217i, _wgslsmith_f_op_f32(func_1(2664f, vec2<u32>(18264u, u_input.a), vec4<f32>(2405f, -1448f, 1221f, 1208f)))), Struct_2(-u_input.c, u_input.e.x, 1f, vec3<u32>(1u, u_input.d, u_input.a) ^ u_input.b.www), Struct_1(u_input.b | u_input.b, min(u_input.b, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -1i), vec4<i32>(u_input.c.x, -1i, u_input.c.x, u_input.e.x)), _wgslsmith_sub_i32(-57788i, u_input.c.x), _wgslsmith_f_op_f32(max(-721f, -1716f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(144f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1129f, 627f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -713f) - _wgslsmith_f_op_f32(f32(-1f) * -976f)) * _wgslsmith_f_op_f32(f32(-1f) * -667f)), abs(reverseBits(vec4<i32>(1i, -25562i, u_input.c.x, u_input.c.x) >> (u_input.b % vec4<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(582f, 291f, 340f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(165f, -737f, -391f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 425f, -716f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(~1i, u_input.e.x), vec2<i32>(_wgslsmith_mult_i32(func_3(Struct_1(u_input.b, u_input.b, vec4<i32>(-2147483647i, u_input.e.x, -1i, 17395i), u_input.c.x, -1516f), Struct_2(u_input.e, 2147483647i, -468f, vec3<u32>(4294967295u, u_input.b.x, var_0)), 1u, vec3<bool>(false, true, false)), ~11773i), reverseBits(-48004i))), -18232i, _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.b, ~(vec4<u32>(0u, u_input.b.x, 23346u, var_0) << (vec4<u32>(1u, 1u, var_0, 38350u) % vec4<u32>(32u))), firstLeadingBit(~u_input.b)), max(u_input.b, u_input.b)));
}

