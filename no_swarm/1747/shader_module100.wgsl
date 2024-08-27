struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: u32, arg_3: u32) -> u32 {
    global0 = array<vec3<f32>, 4>();
    global0 = array<vec3<f32>, 4>();
    global0 = array<vec3<f32>, 4>();
    global0 = array<vec3<f32>, 4>();
    global0 = array<vec3<f32>, 4>();
    return 35132u;
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_1(vec4<u32>(~(~_wgslsmith_add_u32(4294967295u, u_input.b.x)), u_input.a.x, ~1u, u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1542f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1149f - 1000f) * -2439f))), vec3<u32>(u_input.b.x ^ (0u >> (u_input.b.x % 32u)), _wgslsmith_dot_vec4_u32(u_input.b, ~u_input.b), u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-495f, 636f), vec2<f32>(-1139f, 1107f), vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1708f, -112f), vec2<f32>(-417f, 521f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(438f, 489f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(873f, 788f), vec2<f32>(-1514f, -973f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2587f, -1734f))))))), ~vec2<i32>(2147483647i, firstLeadingBit(2147483647i)));
    let var_1 = Struct_1(reverseBits(~u_input.b), _wgslsmith_f_op_vec2_f32(trunc(var_0.b)), u_input.b.yzx, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(round(1133f)), _wgslsmith_f_op_f32(-var_0.b.x)))), var_0.e);
    var var_2 = var_1.c.x;
    let var_3 = Struct_1(firstLeadingBit(var_0.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), 1f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b * var_1.b)), vec2<f32>(372f, _wgslsmith_f_op_f32(var_1.d.x * -458f)), select(vec2<bool>(true, true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0)), true)))), max(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b.x, 62367u), 1600u, var_0.c.x), ~firstLeadingBit(49536u), ~min(20270u, u_input.b.x)), abs(vec3<u32>(9501u, var_1.c.x & var_0.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_0.a.x), vec2<u32>(71870u, 30086u))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, -1020f) - var_1.d), _wgslsmith_sub_vec2_i32(~(reverseBits(vec2<i32>(var_0.e.x, 1i)) ^ -vec2<i32>(-1i, -1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.e.x, firstLeadingBit(var_0.e.x)), var_1.e)));
    var var_4 = Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-1090f, var_3.d.x)), var_1.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d)), select(vec2<bool>(all(vec4<bool>(arg_0, true, true, true)), true), vec2<bool>(any(vec4<bool>(arg_0, false, arg_0, arg_0)), false), vec2<bool>(true, arg_0)))), ~abs(~vec3<u32>(29310u, 1u, 3228u)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -317f) + var_1.d.x), var_0.b.x))), ~reverseBits(var_1.e));
    return max(56205u, var_4.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>) -> vec4<u32> {
    global0 = array<vec3<f32>, 4>();
    var var_0 = ~(~u_input.a.x << (abs(1u) % 32u));
    global0 = array<vec3<f32>, 4>();
    global0 = array<vec3<f32>, 4>();
    var_0 = func_3(!(!(false | (arg_0.e.x < -1i))));
    return firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(6976u | arg_0.c.x, arg_2.x << (4294967295u % 32u), _wgslsmith_div_u32(1u, arg_0.c.x), ~4294967295u) << (vec4<u32>(~1u, _wgslsmith_mult_u32(arg_0.a.x, u_input.a.x), 1u, 0u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(4294967295u, arg_2.x, 4294967295u, arg_0.a.x) << (vec4<u32>(0u, 0u, arg_2.x, 21003u) % vec4<u32>(32u))), firstLeadingBit(u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(Struct_1(~(~u_input.b), vec2<f32>(_wgslsmith_f_op_f32(max(-145f, -453f)), _wgslsmith_f_op_f32(f32(-1f) * -1727f)), vec3<u32>(abs(u_input.a.x), 49348u, ~u_input.a.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(906f, -759f) - vec2<f32>(1748f, 383f)))), vec2<i32>(1i, 1i)), u_input.b, ~max(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(35668u, u_input.a.x, 617u, 0u)) ^ vec4<u32>(0u, abs(u_input.b.x), 17072u, func_1(2147483647i, vec4<bool>(true, false, false, false), 4294967295u, 30436u))) << ((select(~u_input.b, u_input.b & u_input.b, true) & vec4<u32>(u_input.a.x, u_input.a.x, ~0u, u_input.b.x)) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-395f, -814f)), _wgslsmith_f_op_f32(round(1000f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1516f, -1210f) + vec2<f32>(_wgslsmith_f_op_f32(round(745f)), -613f)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1951f, -1211f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(~var_0.x, u_input.b.x, u_input.b.x)), -vec4<i32>(0i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 76534i, -9768i, -2147483647i), vec4<i32>(-1i, 32069i, -2147483647i, -1i)), 24454i), -14441i, firstLeadingBit(1i)));
}

