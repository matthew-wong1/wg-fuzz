struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
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

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    return abs(0i);
}

fn func_2(arg_0: vec4<i32>) -> vec3<i32> {
    var var_0 = _wgslsmith_sub_i32(~(-(~_wgslsmith_div_i32(arg_0.x, arg_0.x))), ~u_input.a.x ^ ~(func_3() & firstLeadingBit(2147483647i)));
    var_0 = -2147483647i;
    let var_1 = !all(vec4<bool>(true, true, true, true));
    var_0 = countOneBits(~arg_0.x);
    var var_2 = 0i;
    return u_input.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = ~_wgslsmith_clamp_vec4_i32(~min(~vec4<i32>(0i, arg_2.a, arg_0.x, arg_2.a), vec4<i32>(-21445i, arg_0.x, u_input.a.x, 1i) & vec4<i32>(u_input.a.x, u_input.a.x, arg_2.a, 2147483647i)), _wgslsmith_mult_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.a, u_input.a.x, arg_2.a, -28378i), vec4<i32>(arg_2.a, -32129i, arg_0.x, -18939i)), ~abs(vec4<i32>(0i, arg_2.a, -10479i, -3409i))), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, 14760i, u_input.a.x, -51381i) ^ firstLeadingBit(vec4<i32>(0i, arg_0.x, 7317i, 1i)), select(vec4<i32>(0i, arg_0.x, u_input.a.x, arg_0.x), vec4<i32>(arg_0.x, 0i, arg_0.x, -72194i), vec4<bool>(true, false, false, false)) | _wgslsmith_div_vec4_i32(vec4<i32>(38460i, 40176i, arg_0.x, 2775i), vec4<i32>(-7232i, 2147483647i, u_input.a.x, arg_0.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b), arg_2.b));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(min(var_0, _wgslsmith_div_f32(538f, var_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-317f, arg_2.d)))))), vec2<bool>(true, !all(vec2<bool>(true, true))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d, arg_2.b)) - vec2<f32>(arg_2.b, var_0))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0)), var_2.x)));
    var var_3 = ~max(arg_0, func_2(vec4<i32>(8157i >> (arg_2.c.x % 32u), _wgslsmith_mult_i32(-1i, 6842i), 291i, u_input.a.x & u_input.a.x)));
    return arg_2;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    var var_0 = func_1(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(~max(vec3<i32>(1i, -44604i, 31773i), u_input.a), u_input.a), u_input.a), 742f, arg_2);
    var_0 = Struct_1(~func_2(vec4<i32>(arg_2.a, 2147483647i ^ arg_2.a, 42017i, -44776i)).x, _wgslsmith_f_op_f32(max(var_0.b, -935f)), arg_2.c, _wgslsmith_f_op_f32(-func_1(vec3<i32>(arg_2.a, -arg_0, _wgslsmith_sub_i32(var_0.a, arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1167f)) + _wgslsmith_div_f32(458f, -826f)), func_1(firstLeadingBit(vec3<i32>(2147483647i, 20610i, u_input.a.x)), _wgslsmith_f_op_f32(step(arg_1.x, -1554f)), Struct_1(31128i, -1000f, vec2<u32>(var_0.c.x, 1306u), arg_1.x))).d));
    let var_1 = func_1(select(~abs(u_input.a), u_input.a, false), var_0.b, arg_2);
    let var_2 = vec2<i32>(u_input.a.x, ~var_1.a);
    var_0 = arg_2;
    return true || (_wgslsmith_f_op_f32(exp2(arg_1.x)) <= var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(func_4(-u_input.a.x & -83991i, vec3<f32>(2250f, -1337f, _wgslsmith_div_f32(-1055f, -1144f)), func_1(u_input.a >> (vec3<u32>(4294967295u, 0u, 67440u) % vec3<u32>(32u)), 169f, Struct_1(u_input.a.x, 595f, vec2<u32>(4294967295u, 4294967295u), -1269f))), true, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4849u, 4294967295u, 15073u)), vec3<u32>(1u, 1u, 1u)) < 1u));
    let var_1 = true;
    var_0 = !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1067f - 126f)), _wgslsmith_f_op_f32(-493f - _wgslsmith_f_op_f32(sign(-1415f))), var_1)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1387f)), -1719f)) * _wgslsmith_f_op_f32(f32(-1f) * -278f)));
    var_0 = any(vec3<bool>(true, true, true));
    let var_2 = all(vec3<bool>((i32(-1i) * -1i) == _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(3958i, u_input.a.x, u_input.a.x)), true, !var_1)) != true;
    let x = u_input.a;
    s_output = StorageBuffer(1f, func_1(-u_input.a, 1828f, func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(10672u, 10766u, 33525u) % vec3<u32>(32u)), u_input.a), _wgslsmith_f_op_f32(step(func_1(u_input.a, 411f, Struct_1(58299i, -387f, vec2<u32>(0u, 84437u), -1777f)).b, _wgslsmith_f_op_f32(115f + 401f))), Struct_1(u_input.a.x ^ -29506i, _wgslsmith_f_op_f32(min(-477f, 1000f)), vec2<u32>(1u, 1u), 1f))).d);
}

