struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: bool) -> vec4<f32> {
    var var_0 = abs(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32((vec2<u32>(1u, 17515u) >> (vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u))) | vec2<u32>(25555u, u_input.c), ~(vec2<u32>(u_input.c, 1u) >> (vec2<u32>(u_input.c, 108684u) % vec2<u32>(32u)))), abs(vec2<u32>(9275u, firstLeadingBit(58414u)))));
    let var_1 = Struct_2(1u, Struct_1(1f, _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1, arg_1), countOneBits(arg_1)), arg_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1658f, -455f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-2028f, 173f) * vec2<f32>(1384f, -206f))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(133f, 1094f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1797f, 1000f)), vec2<f32>(752f, -1046f), !vec2<bool>(arg_2, arg_2)))), select(!select(vec3<bool>(false, arg_2, false), vec3<bool>(true, false, arg_2), false), vec3<bool>(any(vec2<bool>(false, arg_2)), arg_2, arg_2), vec3<bool>(all(vec4<bool>(arg_2, false, arg_2, arg_2)), arg_2, arg_1.x <= arg_1.x))), !all(select(!vec2<bool>(arg_2, arg_2), !vec2<bool>(arg_2, arg_2), true)), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1f)))), arg_1, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(max(-1000f, -1000f))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(abs(-642f)), _wgslsmith_div_f32(763f, 275f)))), vec3<bool>(false, !arg_2, -519f == _wgslsmith_f_op_f32(round(935f)))));
    var var_2 = abs(~vec4<u32>(u_input.d, ~_wgslsmith_dot_vec2_u32(vec2<u32>(32932u, 1u), vec2<u32>(var_0.x, 12973u)), u_input.d, 88228u));
    var var_3 = var_1.b;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1231f)), -318f)))), max(vec2<i32>(0i, min(arg_0 & u_input.a, 1i)), ~vec2<i32>(var_1.d.b.x & -1i, -2147483647i)), var_3.c, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1000f + -139f), _wgslsmith_f_op_f32(-1687f - var_1.b.d.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.d.c.x)), _wgslsmith_f_op_f32(-464f + var_1.b.c.x)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.b.c)), var_1.d.c)), vec2<bool>(true, var_1.c))), var_1.b.e);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_4.a, var_1.d.d.x, -1000f, 1231f), vec4<f32>(var_1.d.a, var_1.d.a, var_3.c.x, var_3.c.x))))));
}

fn func_2() -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(-107f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1635f, -1002f)), _wgslsmith_f_op_f32(548f - 1592f)))) - -920f));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(-2147483647i, vec2<i32>(u_input.b, -2147483647i), all(vec3<bool>(true, any(vec2<bool>(false, false)), true)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)) - _wgslsmith_f_op_f32(f32(-1f) * -2169f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1886f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_div_f32(1295f, -2263f))), -1022f));
    let var_2 = -select(~(-vec3<i32>(18412i, -6915i, u_input.b)), select(abs(vec3<i32>(u_input.a, u_input.b, 18269i)), -vec3<i32>(2147483647i, -2147483647i, -34565i), true), !any(vec2<bool>(false, false))) | _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, u_input.a), ~vec2<i32>(u_input.a, 2147483647i)), 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-60227i, 0i, -2147483647i), -vec3<i32>(u_input.b, u_input.b, -1i))), -vec3<i32>(firstTrailingBit(-1i), _wgslsmith_add_i32(u_input.a, u_input.b), reverseBits(2147483647i)));
    let var_3 = (firstTrailingBit(select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 56056u, u_input.d, u_input.d), vec4<u32>(27043u, u_input.d, u_input.c, 4294967295u)), vec4<u32>(44494u, 166529u, 0u, u_input.d), true)) ^ countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.d, u_input.c, 96908u), vec4<u32>(u_input.d, u_input.c, 72984u, u_input.d)))) | max(vec4<u32>(u_input.d, firstLeadingBit(0u) & u_input.d, _wgslsmith_mult_u32(firstLeadingBit(u_input.c), 20266u), _wgslsmith_dot_vec3_u32(~vec3<u32>(76499u, 30423u, 1u), ~vec3<u32>(54443u, 4294967295u, 25646u))), abs(vec4<u32>(u_input.d, u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 38314u), vec3<u32>(u_input.d, u_input.c, 0u)), u_input.d)));
    let var_4 = !any(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
    return vec2<i32>(2147483647i, u_input.a);
}

fn func_1() -> f32 {
    let var_0 = abs(u_input.d);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(484f)))), _wgslsmith_clamp_vec2_i32(~(-(~vec2<i32>(u_input.a, 2147483647i))), ~func_2(), ~(~(~vec2<i32>(0i, u_input.a)))), vec2<f32>(_wgslsmith_f_op_f32(step(1038f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.a, vec2<i32>(-12194i, u_input.b), false)).x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(210f - -110f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1470f, 527f)))), -1528f), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + var_1.d.x) * _wgslsmith_f_op_f32(-var_1.c.x)))), -(~(var_1.b >> (~vec2<u32>(u_input.d, var_0) % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(var_1.c - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d + vec2<f32>(-1421f, -585f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, 1566f) + var_1.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c - _wgslsmith_f_op_vec2_f32(max(var_1.d, var_1.d))) + _wgslsmith_div_vec2_f32(var_1.c, _wgslsmith_f_op_vec2_f32(sign(var_1.d))))), var_1.e);
    return var_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.b, 2147483647i)), -vec2<i32>(-1534i, 2147483647i)), vec2<i32>(_wgslsmith_div_i32(0i, -1i), _wgslsmith_sub_i32(-1i, u_input.a)), _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.b, u_input.b), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(55168i, u_input.a)))));
    let var_1 = Struct_1(_wgslsmith_div_f32(-837f, _wgslsmith_f_op_f32(func_1())), vec2<i32>(0i, u_input.a), vec2<f32>(938f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1348f)), _wgslsmith_f_op_f32(f32(-1f) * -933f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-438f, 1840f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2097f, 120f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(762f, 414f)), true)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 962f))))))), vec3<bool>(true, true, true));
    var var_2 = Struct_2(~u_input.d & (~(2577u ^ u_input.c) & reverseBits(~4294967295u)), Struct_1(-327f, vec2<i32>(-u_input.b, _wgslsmith_mod_i32(var_1.b.x, var_1.b.x >> (1u % 32u))), _wgslsmith_div_vec2_f32(var_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c))), var_1.c, var_1.e), -(firstLeadingBit(-1i) >> (_wgslsmith_add_u32(u_input.d, u_input.c) % 32u)) < var_1.b.x, var_1);
    var var_3 = var_2.b.c.x;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-var_1.c.x), var_2.b.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_1.d + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_1.d)) - var_2.d.d)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.b.a - var_2.b.d.x), _wgslsmith_f_op_f32(round(1000f))))), !var_2.d.e);
    let var_5 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(vec3<i32>(~var_1.b.x, func_2().x, select(firstLeadingBit(var_4.b.x), var_5.b.x ^ var_1.b.x, true)), ~(vec3<i32>(-37545i, u_input.a, var_5.b.x) ^ vec3<i32>(49581i, -42425i, 0i)) << (~select(vec3<u32>(60542u, var_2.a, 31945u), vec3<u32>(6892u, 2256u, u_input.c), vec3<bool>(true, var_4.e.x, var_2.b.e.x)) % vec3<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1194f)))), var_5.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_4.c.x))) - 113f)), var_2.a);
}

