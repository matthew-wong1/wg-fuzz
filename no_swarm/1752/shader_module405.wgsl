struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec2<bool>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_4(_wgslsmith_mod_i32(38390i, u_input.a.x) & _wgslsmith_add_i32(-(~arg_0.c), -44853i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-400f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - -785f), -583f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-473f - -476f))), -1001f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(264f, 252f, arg_0.b.x)) + -1239f)))), Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(ceil(2282f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 659f))), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), u_input.a.wz)) ^ 1i, select(select(select(vec2<bool>(arg_0.b.x, false), arg_0.b.xz, arg_0.b.yz), vec2<bool>(true, arg_0.b.x), !arg_0.b.xx), select(vec2<bool>(arg_0.b.x, false), !vec2<bool>(arg_0.b.x, false), select(arg_0.b.xy, arg_0.b.yz, vec2<bool>(false, true))), any(arg_0.b)), vec3<u32>((47672u >> (arg_0.a % 32u)) ^ 1u, ~reverseBits(arg_0.a), 1u), ~1u), _wgslsmith_div_u32(94107u, _wgslsmith_div_u32(~min(arg_0.a, arg_0.d.x), 24803u)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_add_u32(76086u, 3350u), vec4<bool>(false, false, var_0.c.c.x, any(!arg_0.b.zyy)), var_0.c.b, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a, arg_0.d.x, var_0.d), vec3<u32>(82264u, var_0.c.d.x, u_input.b)) << (var_0.c.d % vec3<u32>(32u))), Struct_2(vec2<f32>(var_0.b.x, var_0.c.a.x), 2147483647i, select(vec2<bool>(true, !var_0.c.c.x), arg_0.b.yx, false), abs(~vec3<u32>(26680u, 0u, var_0.c.e)), 1u), _wgslsmith_div_f32(-1005f, var_0.b.x), vec4<i32>(_wgslsmith_clamp_i32(var_0.c.b, abs(i32(-1i) * -45134i), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-41327i, 15156i, arg_0.c)), abs(u_input.a.yxw))), -(~_wgslsmith_clamp_i32(var_0.c.b, u_input.a.x, 9429i)), -u_input.a.x, var_0.c.b), var_0.c.c);
    var var_2 = _wgslsmith_add_vec4_i32(-(~var_1.d >> (abs(vec4<u32>(var_1.b.d.x, 0u, 32884u, var_0.d)) % vec4<u32>(32u))), vec4<i32>(-(~(11705i >> (var_1.b.d.x % 32u))), 0i, 1i, select(var_1.d.x, abs(firstTrailingBit(u_input.a.x)), any(vec4<bool>(true, true, arg_0.b.x, var_1.b.c.x)))));
    var var_3 = ~countOneBits(select(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a, 27188u, 1u, u_input.b), ~vec4<u32>(arg_0.a, 1u, arg_0.a, 1u)), vec4<u32>(1u, ~var_1.b.d.x, firstLeadingBit(1u), var_0.c.e ^ 0u), !vec4<bool>(false, var_0.c.c.x, true, var_1.a.b.x)));
    var_2 = var_1.d;
    return select(!vec2<bool>(true, !(u_input.a.x == var_1.d.x)), vec2<bool>(select(0u, _wgslsmith_sub_u32(1u, 0u), true) > u_input.b, true), !select(!var_0.c.c, select(var_0.c.c, !var_1.e, arg_0.b.yy), all(!vec4<bool>(var_1.a.b.x, true, var_0.c.c.x, var_0.c.c.x))));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<bool>) -> vec2<f32> {
    var var_0 = u_input.a.zw;
    var_0 = _wgslsmith_div_vec2_i32((vec2<i32>(-arg_1, -7982i) | vec2<i32>(arg_1, 1i)) | vec2<i32>(abs(u_input.a.x), _wgslsmith_sub_i32(var_0.x, u_input.a.x)), -(~_wgslsmith_mod_vec2_i32(u_input.a.xy, vec2<i32>(u_input.a.x, var_0.x))) << (~vec2<u32>(abs(1u), ~u_input.b) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_add_vec3_i32(~select(_wgslsmith_div_vec3_i32(u_input.a.xwy, vec3<i32>(-2147483647i, 65782i, var_0.x)) ^ vec3<i32>(u_input.a.x, arg_1, u_input.a.x), vec3<i32>(arg_1, var_0.x, _wgslsmith_dot_vec3_i32(u_input.a.zzx, vec3<i32>(-11114i, 46012i, 2147483647i))), false), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-u_input.a.yyx, u_input.a.zwz), -2147483647i), var_0.x & (-arg_1 ^ _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(arg_1, 2147483647i, u_input.a.x, var_0.x))), u_input.a.x));
    let var_2 = all(select(vec4<bool>(!arg_2.x, true, true, all(arg_2.zwz)), select(arg_2, !arg_2, select(true, arg_2.x, arg_0.x & true)), arg_2));
    var var_3 = func_3(Struct_1(~firstLeadingBit(19231u) >> (u_input.b % 32u), !arg_2, 1i, ~vec3<u32>(reverseBits(u_input.b), ~63105u, abs(u_input.b))));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1202f * 621f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(186f - -1701f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

fn func_2(arg_0: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_4(select(func_3(Struct_1(27048u, vec4<bool>(false, false, true, false), 1i, vec3<u32>(u_input.b, u_input.b, 0u))), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), true), abs(_wgslsmith_dot_vec2_i32(u_input.a.xw, u_input.a.wz)), vec4<bool>(false, false, false, true))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-719f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(744f, 551f))))), vec2<bool>(true, true))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(arg_0 * 498f), _wgslsmith_f_op_f32(var_0.x + arg_0), _wgslsmith_f_op_f32(select(-1409f, arg_0, false)), _wgslsmith_f_op_f32(var_0.x * 452f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(3085f, arg_0, 1839f, -243f)) - vec4<f32>(_wgslsmith_f_op_f32(2078f * 237f), _wgslsmith_f_op_f32(-var_0.x), 1000f, _wgslsmith_div_f32(-1842f, -624f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, 861f, -1525f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, var_0.x, arg_0, arg_0))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -967f, var_0.x, 830f), vec4<f32>(arg_0, arg_0, var_0.x, arg_0))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(220f, 1337f, 1952f, arg_0)))))), any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), false))));
    var var_2 = Struct_3(Struct_1(u_input.b, !select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), true), u_input.a.x, _wgslsmith_sub_vec3_u32(vec3<u32>(1u, ~4294967295u, u_input.b), select(min(vec3<u32>(u_input.b, u_input.b, 57156u), vec3<u32>(u_input.b, u_input.b, 0u)), vec3<u32>(0u, 0u, u_input.b) & vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<bool>(true, true, true)))), Struct_2(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -673f))), select(1i, -u_input.a.x >> (~0u % 32u), !all(vec4<bool>(true, true, true, false))), func_3(Struct_1(_wgslsmith_add_u32(u_input.b, 46326u), vec4<bool>(true, true, true, true), _wgslsmith_mod_i32(2147483647i, 1i), vec3<u32>(u_input.b, u_input.b, 16279u) | vec3<u32>(u_input.b, 0u, 38120u))), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(25573u, 9539u, 0u) | vec3<u32>(u_input.b, 4294967295u, 33726u), vec3<u32>(4294967295u, 0u, u_input.b) >> (vec3<u32>(u_input.b, u_input.b, 53246u) % vec3<u32>(32u)), ~vec3<u32>(1u, u_input.b, 19974u))), ~(u_input.b << (64542u % 32u)) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.b, u_input.b, 45958u)) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1079f)), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, ~5828i), vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false)))), all(vec3<bool>(true, true, true))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_0.x, -1508f, 445f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, var_2.b.a.x) + vec4<f32>(var_1.x, -784f, var_1.x, 1659f)))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(171f, var_0.x, var_2.b.a.x, var_1.x) - vec4<f32>(368f, 798f, arg_0, -1782f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(307f, var_2.b.a.x, var_1.x, -165f))))))));
    var var_3 = firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~u_input.a.xz, vec2<i32>(1619i, 3320i)), max(max(0i, -1i), -2147483647i)), var_2.b.b, firstTrailingBit(var_2.d.x), i32(-1i) * -u_input.a.x));
    return ~(~vec4<u32>(1u >> (1u % 32u), var_2.b.e, u_input.b, 0u));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec2<f32>) -> vec3<f32> {
    var var_0 = select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), ~_wgslsmith_mod_i32(-1i, -12780i) == _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(arg_1.x, u_input.a.x, 2147483647i, -14942i)), 25441i << (u_input.b % 32u))), vec3<bool>(select(true, all(vec2<bool>(true, false)), any(vec2<bool>(true, true))), false, false), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(arg_0.x == u_input.b, true, all(vec2<bool>(false, false))), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), all(vec2<bool>(true, false)))));
    var var_1 = arg_0.yzx;
    var var_2 = Struct_3(Struct_1(~_wgslsmith_dot_vec2_u32(var_1.zx, vec2<u32>(var_1.x, 53u)), vec4<bool>(func_3(Struct_1(23801u, vec4<bool>(var_0.x, false, true, false), u_input.a.x, vec3<u32>(arg_0.x, arg_0.x, 14571u))).x, any(vec4<bool>(var_0.x, false, var_0.x, false)), true, !var_0.x), _wgslsmith_add_i32(~u_input.a.x & (21305i >> (arg_0.x % 32u)), 8741i), ~(~arg_0.wxw)), Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(var_0.zz, -23935i, vec4<bool>(var_0.x, var_0.x, false, var_0.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 389f))))), arg_1.x, func_3(Struct_1(u_input.b, select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-20259i, -47843i, 2147483647i, u_input.a.x), vec4<i32>(21219i, arg_1.x, 1i, 1i)), firstTrailingBit(arg_0.xyy))), arg_0.yxw, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-264f))), vec4<i32>(~(-2147483647i), arg_1.x >> (~(~4294967295u) % 32u), -_wgslsmith_add_i32(arg_1.x, ~u_input.a.x), _wgslsmith_div_i32(0i, _wgslsmith_mult_i32(-33511i, firstLeadingBit(u_input.a.x)))), !vec2<bool>(all(vec3<bool>(var_0.x, false, false)) || true, var_0.x && var_0.x));
    let var_3 = Struct_3(Struct_1(4294967295u, select(select(!var_2.a.b, vec4<bool>(var_2.b.c.x, true, false, var_0.x), var_2.b.c.x), !var_2.a.b, true != func_3(var_2.a).x), -(~_wgslsmith_sub_i32(arg_1.x, arg_1.x)), _wgslsmith_div_vec3_u32(min(arg_0.xyw, vec3<u32>(var_2.a.d.x, 4294967295u, u_input.b)), vec3<u32>(0u, 4294967295u, _wgslsmith_clamp_u32(0u, 0u, 4294967295u)))), var_2.b, 1433f, abs(vec4<i32>(var_2.b.b | arg_1.x, ~u_input.a.x, _wgslsmith_add_i32(var_2.b.b, 20154i), -1i) | vec4<i32>(~(-55207i), u_input.a.x, var_2.d.x, -arg_1.x)), var_2.a.b.xw);
    let var_4 = arg_0.wwy;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1408f, var_2.b.a.x, var_2.c)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.b.a.x, -1000f, arg_2.x))), !var_3.a.b.wzx)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(8539u, arg_0.a >> (0u % 32u), ~1u), firstTrailingBit(arg_0.d));
    let var_1 = _wgslsmith_f_op_vec3_f32(func_5(~((_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.d.x, arg_0.a, 22138u, 1u), vec4<u32>(4294967295u, u_input.b, arg_1.a, 18766u)) & func_2(-1237f)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(42145u, u_input.b, 4109u, arg_0.a) & vec4<u32>(u_input.b, 1u, arg_1.d.x, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a, u_input.b, 65144u, 1u), vec4<u32>(6199u, u_input.b, u_input.b, 4943u))) % vec4<u32>(32u))), firstTrailingBit(~(u_input.a.yyx | vec3<i32>(u_input.a.x, 110907i, -14457i))) >> (arg_1.d % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(864f, 1146f), vec2<f32>(-895f, -1429f))))))));
    var var_2 = !any(arg_1.b.zxx);
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_4(select(arg_1.b.ww, select(vec2<bool>(true, arg_0.b.x), vec2<bool>(arg_2, arg_1.b.x), arg_1.b.zy), true), arg_1.c, vec4<bool>(false, func_3(arg_0).x, true, arg_2 && false))).x))));
    let var_4 = _wgslsmith_f_op_vec3_f32(func_5(vec4<u32>(_wgslsmith_add_u32(select(arg_1.a, ~arg_0.a, arg_1.b.x), 41182u << (~arg_1.d.x % 32u)), _wgslsmith_clamp_u32(1u, min(arg_0.a >> (u_input.b % 32u), ~11197u), ~_wgslsmith_dot_vec3_u32(arg_1.d, arg_1.d)), arg_0.a, 4294967295u), -(firstTrailingBit(vec3<i32>(arg_1.c, -17419i, u_input.a.x)) ^ select(vec3<i32>(u_input.a.x, u_input.a.x, arg_1.c), u_input.a.zww, arg_0.b.www)) | u_input.a.zyz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + var_1.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.zx * var_1.yx))))))).x;
    return min(~10849u, ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~u_input.b, firstTrailingBit(u_input.b), _wgslsmith_mod_u32(func_1(Struct_1(u_input.b, vec4<bool>(true, true, true, true), u_input.a.x, vec3<u32>(0u, u_input.b, 4294967295u)), Struct_1(~u_input.b, vec4<bool>(true, true, true, true), -43360i, vec3<u32>(4294967295u, u_input.b, 0u)), false), ~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(~(~103273u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 37891u, 25336u, u_input.b), vec4<u32>(4294967295u, u_input.b, 1u, u_input.b)) | ~u_input.b, abs(4294967295u), 1u), vec4<u32>(4294967295u, u_input.b, u_input.b, _wgslsmith_mult_u32(0u, u_input.b))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1159f)), _wgslsmith_f_op_f32(738f * -1000f))))))));
    var var_2 = max(vec2<i32>(u_input.a.x, u_input.a.x >> (0u % 32u)), -vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, -32229i, u_input.a.x, u_input.a.x)), select(vec4<i32>(-47143i, u_input.a.x, u_input.a.x, -1i), u_input.a, vec4<bool>(false, false, true, false))), 45464i));
    let var_3 = Struct_3(Struct_1(var_0.x, select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec4<bool>(true, false, false, true)), true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true))), -2147483647i, _wgslsmith_div_vec3_u32(~abs(var_0.xyx), var_0.xyx)), Struct_2(_wgslsmith_f_op_vec2_f32(func_4(vec2<bool>(true, true), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-3997i, u_input.a.x, u_input.a.x), vec3<i32>(var_2.x, u_input.a.x, u_input.a.x)), 1i), vec4<bool>(var_1 == 2056f, all(vec3<bool>(false, true, true)), true, true))), -_wgslsmith_sub_i32(u_input.a.x, 56037i) & select(var_2.x, var_2.x, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, false)), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(38404u, u_input.b), 1741u), select(_wgslsmith_mod_u32(var_0.x, 4294967295u), _wgslsmith_div_u32(75166u, var_0.x), true), 25182u), max(138u, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1913f * _wgslsmith_f_op_f32(f32(-1f) * -1338f))), u_input.a, !select(vec2<bool>(all(vec3<bool>(false, false, true)), func_3(Struct_1(var_0.x, vec4<bool>(false, false, false, true), u_input.a.x, var_0.yyy)).x), func_3(Struct_1(var_0.x, vec4<bool>(false, true, false, false), var_2.x, var_0.wyy)), _wgslsmith_f_op_f32(-var_1) < _wgslsmith_f_op_f32(select(-1690f, 1200f, false))));
    let var_4 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.e, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4 * -598f) * -398f)).wy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f), var_1));
}

