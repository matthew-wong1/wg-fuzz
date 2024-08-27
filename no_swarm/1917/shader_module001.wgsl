struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = abs(vec2<u32>((~31574u << (~u_input.b % 32u)) >> (u_input.b % 32u), 36214u));
    return 591f;
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = u_input.b << (abs(~arg_0.c.x) % 32u);
    var var_1 = Struct_1(-u_input.c.zxx, max(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 18754u), _wgslsmith_add_vec2_u32(arg_0.c.zw, vec2<u32>(24797u, arg_0.c.x)))) >> (71517u % 32u), firstLeadingBit(vec4<u32>(~u_input.b >> (1u % 32u), u_input.b, ~arg_0.c.x, u_input.b)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.d)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(arg_0.d.x - arg_0.d.x)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -187f), -980f), vec2<f32>(_wgslsmith_f_op_f32(2694f + arg_0.d.x), _wgslsmith_f_op_f32(step(-2546f, 417f)))))));
    var var_3 = arg_0.a.zy;
    var var_4 = vec2<bool>(all(vec2<bool>(true, true)) || all(vec4<bool>(true, true, true, true)), !all(vec4<bool>(true, 72350u <= u_input.b, any(vec2<bool>(true, true)), true)));
    return vec4<u32>(_wgslsmith_add_u32(u_input.b, ~reverseBits(1u)), var_1.b, firstLeadingBit(4294967295u) ^ _wgslsmith_dot_vec4_u32(var_1.c, ~select(var_1.c, var_1.c, var_4.x)), max(1u, ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(8635u, arg_0.c.x), ~var_1.b, 4294967295u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<bool> {
    let var_0 = ~(~_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, arg_0.a.x, u_input.e), abs(arg_1.xwz)) << (arg_0.c.zxy % vec3<u32>(32u)));
    var var_1 = Struct_1(vec3<i32>(min(_wgslsmith_div_i32(u_input.d.x, arg_0.a.x), 1i), reverseBits(~_wgslsmith_add_i32(1i, arg_1.x)), 24082i), 31594u, max(_wgslsmith_mod_vec4_u32(arg_0.c, func_3(Struct_1(u_input.c.wxy, arg_0.c.x, vec4<u32>(u_input.b, arg_0.c.x, 1u, u_input.b), vec2<f32>(-1426f, 116f)))), arg_0.c), _wgslsmith_div_vec2_f32(arg_0.d, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(796f, arg_0.d.x), arg_0.d))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.x, -1000f) - arg_0.d), arg_0.d, true)), all(vec2<bool>(true, false))))));
    return vec4<bool>(true, true, select(true, all(vec2<bool>(true, any(vec4<bool>(false, false, false, true)))), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true))), any(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), 63906u > u_input.b), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, true)))));
}

fn func_4(arg_0: vec4<bool>) -> f32 {
    let var_0 = Struct_1(firstLeadingBit(((u_input.c.zzy | u_input.c.yxx) >> (~vec3<u32>(u_input.b, 1u, 0u) % vec3<u32>(32u))) | _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, u_input.c.x, u_input.d.x), u_input.c.xyy)), u_input.b, ~vec4<u32>(func_3(Struct_1(u_input.c.yzy, u_input.b, vec4<u32>(u_input.b, 50348u, 0u, u_input.b), vec2<f32>(695f, 1093f))).x, func_3(Struct_1(vec3<i32>(u_input.d.x, 2147483647i, -2147483647i), 13747u, vec4<u32>(0u, 1u, 4294967295u, 20304u), vec2<f32>(-148f, 167f))).x, 17961u, u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(402f, 485f), vec2<f32>(1801f, 693f), true)) - vec2<f32>(722f, 740f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(752f, 1398f) - vec2<f32>(1f, 1f))) + vec2<f32>(1f, 812f)));
    var var_1 = var_0.d;
    var var_2 = vec2<i32>(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, -2147483647i, var_0.a.x, var_0.a.x), vec4<i32>(u_input.d.x, 25310i, -52059i, u_input.d.x) ^ u_input.c), var_0.a.x);
    var var_3 = arg_0;
    var_1 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x - -791f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1353f, 1395f, true)), _wgslsmith_f_op_f32(var_1.x - -845f))))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(u_input.c.yyz, u_input.c.xww);
    let var_1 = countOneBits(vec2<u32>(firstTrailingBit(~firstLeadingBit(u_input.b)), firstLeadingBit(_wgslsmith_mult_u32(0u, ~7284u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(445f, 325f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -724f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(vec4<bool>(false, true, false, true))), -1703f, _wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, true)))))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -827f), -1000f, 83422u < u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(964f))), any(vec4<bool>(true, true, true, true)))), 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -765f), _wgslsmith_f_op_f32(func_4(func_2(Struct_1(vec3<i32>(var_0.x, u_input.d.x, u_input.d.x), 0u, vec4<u32>(var_1.x, var_1.x, 4294967295u, 138960u), vec2<f32>(-418f, 695f)), vec4<i32>(u_input.e, 39679i, u_input.a.x, 1i))))))));
    var var_3 = Struct_1(vec3<i32>(u_input.c.x, -6464i | _wgslsmith_sub_i32(36529i, _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-2147483647i, 0i, u_input.c.x, u_input.d.x))), max(-var_0.x | var_0.x, 1i)), u_input.b, ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 14829u), vec3<u32>(u_input.b, u_input.b, 0u)) << ((var_1.x << (38245u % 32u)) % 32u), u_input.b, max(var_1.x, u_input.b), var_1.x), vec2<f32>(-1049f, 760f));
    let var_4 = Struct_1(countOneBits(select(var_0, u_input.c.xyx, func_2(Struct_1(vec3<i32>(-6593i, 53279i, var_0.x), u_input.b, vec4<u32>(var_1.x, u_input.b, 4294967295u, u_input.b), vec2<f32>(var_3.d.x, -317f)), u_input.c).x)) >> (vec3<u32>(u_input.b, abs(func_3(Struct_1(u_input.c.www, 42150u, vec4<u32>(u_input.b, 14132u, 93185u, 1u), var_3.d)).x), _wgslsmith_sub_u32(17536u, _wgslsmith_div_u32(var_1.x, 26644u))) % vec3<u32>(32u)), ~abs(var_1.x), ~firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.c.x, 0u, u_input.b, u_input.b), reverseBits(vec4<u32>(var_1.x, 24832u, 3202u, 4294967295u)), vec4<u32>(var_3.b, 4294967295u, var_3.b, 0u))), vec2<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x + -2439f)));
    let var_5 = var_4;
    var_3 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-274f + _wgslsmith_div_f32(-573f, var_3.d.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(35437i, ~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_5.a.x, -2147483647i), vec3<i32>(u_input.c.x, 1i, var_5.a.x))), firstLeadingBit(_wgslsmith_clamp_vec3_i32(var_4.a, var_4.a, vec3<i32>(u_input.c.x, u_input.c.x, 1i)))), _wgslsmith_dot_vec3_i32(u_input.c.wyy & vec3<i32>(-271i, 2147483647i, var_3.a.x), (vec3<i32>(0i, var_3.a.x, 0i) >> (var_5.c.xww % vec3<u32>(32u))) & -vec3<i32>(var_0.x, u_input.d.x, 1i))), var_5.c.x, min(1u, 0u), -7784i);
}

