struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<bool> {
    let var_0 = u_input.a.x >> (_wgslsmith_sub_u32(~4996u, max(43190u, select(u_input.e, 0u, all(vec4<bool>(true, false, false, true))))) % 32u);
    let var_1 = vec4<i32>(~_wgslsmith_sub_i32(reverseBits(_wgslsmith_sub_i32(0i, 0i)), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d, 1i, u_input.d), u_input.b)), 2147483647i, -11870i, _wgslsmith_sub_i32(11832i, var_0));
    return vec3<bool>(any(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true))), true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1416f - -1473f) * _wgslsmith_div_f32(-182f, 852f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -111f)));
}

fn func_2() -> f32 {
    let var_0 = u_input.e;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(114f))) * -1014f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1131f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1028f)))), -167f);
    var var_2 = vec2<bool>(true, any(select(select(func_3(), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)));
    var var_3 = reverseBits(~abs(~vec2<u32>(u_input.e, 8257u)) >> (countOneBits(abs(vec2<u32>(1u, u_input.e) >> (vec2<u32>(u_input.e, 0u) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    let var_4 = (_wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(-136f, _wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)))) <= var_1.x) & !var_2.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-380f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -653f)) * -1252f) + _wgslsmith_f_op_f32(-var_1.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    let var_1 = u_input.c.x;
    var_0 = -517f;
    var_0 = _wgslsmith_f_op_f32(1857f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-453f - 2143f)) * -1794f));
    var var_2 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -749f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-541f)), _wgslsmith_f_op_f32(floor(-137f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1286f - -649f) - _wgslsmith_f_op_f32(383f + -1449f))) * _wgslsmith_f_op_f32(func_2())));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(650f)), _wgslsmith_div_f32(arg_2, arg_2))))), _wgslsmith_f_op_f32(trunc(153f)))));
    let var_1 = arg_3;
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(527f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -304f)), var_0.x, !all(vec3<bool>(false, true, false))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, arg_2), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, 734f) * vec2<f32>(arg_2, -1235f))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-571f, _wgslsmith_div_f32(-2398f, var_0.x))), true)));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-397f, 1386f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -733f), -658f)), 1000f));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = func_4(-1i, firstLeadingBit(_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, u_input.e, 0u), vec3<u32>(u_input.e, u_input.e, 1u), false), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, u_input.e, 1u), vec3<u32>(1u, u_input.e, u_input.e))) | 0u), _wgslsmith_div_f32(601f, _wgslsmith_f_op_f32(func_1(Struct_1(-1i, u_input.e), Struct_1(u_input.b.x, _wgslsmith_add_u32(u_input.e, 66127u))))), Struct_1(4677i, u_input.e));
    var_0 = 1u;
    var_1 = func_4(~_wgslsmith_div_i32(-var_1.a | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, var_1.a, var_1.a), vec4<i32>(var_1.a, var_1.a, 1i, var_1.a)), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.a, u_input.c.x, 1i, u_input.b.x), vec4<i32>(u_input.a.x, 1i, 1i, -2147483647i))), _wgslsmith_sub_u32(~0u & u_input.e, ~var_1.b & ~(~1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -254f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-722f, _wgslsmith_f_op_f32(-615f + 1552f))) * -2181f)), Struct_1(2147483647i, select(var_1.b, _wgslsmith_mult_u32(u_input.e, ~1u), false)));
    let var_2 = -512f;
    let var_3 = !vec4<bool>(false, true, true, firstTrailingBit(reverseBits(-2147483647i)) < abs(var_1.a));
    var var_4 = 18386u;
    var var_5 = var_1.b;
    var_0 = ~abs(u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, i32(-1i) * -28248i, u_input.a.x << (var_1.b % 32u), ~abs(-2147483647i)), -vec4<i32>(firstLeadingBit(var_1.a), 1i, 1i, -7204i)), u_input.c, ~vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b.yx, u_input.a) >> (~58960u % 32u), firstLeadingBit(abs(var_1.a)), min(var_1.a, var_1.a) ^ 0i), 1u, _wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, var_1.a, -7211i, u_input.a.x) << (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, 5841u), vec2<u32>(1571u, 1u)), 25754u, var_1.b, _wgslsmith_mod_u32(4294967295u, var_1.b)) % vec4<u32>(32u)), countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, var_1.a), vec4<i32>(2147483647i, var_1.a, 2147483647i, 0i)), -vec4<i32>(0i, -6255i, 33065i, u_input.a.x), vec4<i32>(var_1.a, u_input.d, -27684i, 56781i)))));
}

