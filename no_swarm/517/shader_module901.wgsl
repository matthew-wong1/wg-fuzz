struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = arg_3.d;
    var var_0 = Struct_1(_wgslsmith_div_f32(arg_3.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) + _wgslsmith_f_op_f32(-arg_2.e.x)))), arg_2.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-859f * 1259f)), -1358f)), ~u_input.a > arg_3.b, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_3.e)) - _wgslsmith_f_op_vec3_f32(arg_3.e * arg_3.c)), arg_3.e), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.c * arg_2.e), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_2.c), vec3<f32>(arg_2.e.x, 790f, 181f))))));
    global0 = !(982f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) + 1861f))));
    var var_1 = arg_0;
    var var_2 = Struct_1(865f, ~78794u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_3.e.x), _wgslsmith_f_op_f32(min(616f, arg_2.e.x)))))), true, _wgslsmith_f_op_vec3_f32(var_0.c + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_3.e * vec3<f32>(var_0.c.x, arg_2.c.x, 3445f)), arg_3.c)), vec3<f32>(_wgslsmith_f_op_f32(min(-200f, -1000f)), -432f, _wgslsmith_f_op_f32(min(-1755f, -358f))), vec3<bool>(false, true, select(arg_2.d, false, true))))));
    return 34601i;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2297f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(586f + -1211f) * -1341f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -832f), -1103f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + 758f), _wgslsmith_f_op_f32(floor(-1113f)))))) - vec4<f32>(1368f, _wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - arg_0.c.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(sign(-565f))))))));
    global0 = any(select(select(vec4<bool>(1337f < arg_2.c.x, true, arg_0.d, !arg_2.d), select(!vec4<bool>(arg_0.d, arg_0.d, arg_2.d, false), !vec4<bool>(arg_0.d, arg_2.d, var_0.d, arg_0.d), !var_0.d), arg_0.d | (arg_1 == 34249i)), !select(!vec4<bool>(true, arg_2.d, false, arg_2.d), vec4<bool>(false, arg_2.d, true, var_0.d), !vec4<bool>(arg_0.d, false, true, true)), arg_2.d));
    var var_2 = true;
    var var_3 = arg_2;
    return vec2<bool>(1u > (arg_0.b >> (5208u % 32u)), !all(!vec2<bool>(false, var_3.d)));
}

fn func_2() -> u32 {
    global0 = all(func_4(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(477f + 2019f))), u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -753f, -196f) * vec3<f32>(362f, -210f, -597f))), true, vec3<f32>(-1000f, _wgslsmith_f_op_f32(step(-778f, -1377f)), _wgslsmith_div_f32(-1105f, 519f))), (func_3(vec3<i32>(-14898i, 34976i, -1i), u_input.a, Struct_1(-554f, u_input.a, vec3<f32>(1272f, -1773f, -331f), false, vec3<f32>(830f, 403f, -779f)), Struct_1(-1560f, 1u, vec3<f32>(-485f, -345f, 664f), false, vec3<f32>(719f, 1255f, -820f))) & (i32(-1i) * -16404i)) ^ min(-4494i, 2147483647i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(301f, 1091f)) * -1301f), u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), true, vec3<f32>(_wgslsmith_f_op_f32(round(443f)), -176f, _wgslsmith_f_op_f32(min(114f, 2475f))))));
    global0 = !((!select(false, false, true) & all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))) & true);
    var var_0 = !(!vec4<bool>(true, true, true, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) >= u_input.a));
    global0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-517f, _wgslsmith_div_f32(982f, -108f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1020f * 2543f) - _wgslsmith_f_op_f32(-1000f * 877f)), _wgslsmith_f_op_f32(f32(-1f) * -550f)))));
    return ~firstLeadingBit(abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(58912u, u_input.a), vec2<u32>(u_input.a, u_input.a))));
}

fn func_1(arg_0: u32) -> vec4<f32> {
    var var_0 = ~(~44540i << (_wgslsmith_clamp_u32((arg_0 & 4294967295u) ^ u_input.a, _wgslsmith_clamp_u32(~arg_0, u_input.a & arg_0, 4294967295u), countOneBits(func_2())) % 32u));
    global0 = true;
    var var_1 = Struct_1(1f, 1u, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(1431f * -252f), _wgslsmith_f_op_f32(-455f + -1486f), _wgslsmith_f_op_f32(round(-1156f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(647f, -1000f, -1239f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1217f, -287f, 1435f) - vec3<f32>(-1041f, 868f, 972f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(408f, -461f, 162f)))))))), true, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2661f - -1287f) + _wgslsmith_f_op_f32(367f - 194f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -437f), _wgslsmith_f_op_f32(max(387f, 1734f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -693f), -202f))), _wgslsmith_f_op_f32(-1507f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -650f))))));
    global0 = all(select(!select(vec4<bool>(var_1.d, false, var_1.d, var_1.d), !vec4<bool>(true, var_1.d, var_1.d, true), select(vec4<bool>(false, true, var_1.d, false), vec4<bool>(true, false, false, false), false)), select(!select(vec4<bool>(true, var_1.d, false, false), vec4<bool>(var_1.d, var_1.d, var_1.d, var_1.d), vec4<bool>(true, true, true, var_1.d)), !(!vec4<bool>(var_1.d, true, var_1.d, false)), true), false));
    let var_2 = _wgslsmith_clamp_i32(~func_3(~vec3<i32>(0i, -1i, -2147483647i), 0u ^ ~var_1.b, Struct_1(-623f, var_1.b, vec3<f32>(var_1.e.x, var_1.a, -628f), any(vec2<bool>(true, false)), var_1.e), Struct_1(_wgslsmith_f_op_f32(-122f * -155f), u_input.a << (arg_0 % 32u), vec3<f32>(var_1.c.x, var_1.c.x, 405f), true, var_1.c)), _wgslsmith_div_i32(66677i, firstTrailingBit(-2147483647i)), ~20589i);
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.c.x, var_1.e.x, var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -227f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1683f, -471f, 395f, -1173f) + _wgslsmith_f_op_vec4_f32(func_1(u_input.a))))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), 1u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-483f * -535f)) * _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_1.x * -1195f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_f32(min(513f, _wgslsmith_f_op_f32(sign(-970f))))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_vec4_f32(func_1(abs(4294967295u))).x)), u_input.a > (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(4294967295u, u_input.a), 4294967295u, u_input.a) << (_wgslsmith_mod_u32(~u_input.a, u_input.a << (u_input.a % 32u)) % 32u)), var_1.zwy);
    global0 = var_2.d;
    let var_3 = 11494u;
    let var_4 = _wgslsmith_div_u32(firstLeadingBit(var_2.b), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(~(~(-vec2<i32>(-65891i, -2147483647i))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(2147483647i, -1i) << ((vec2<u32>(4294967295u, var_2.b) ^ vec2<u32>(1u, var_3)) % vec2<u32>(32u)), vec2<i32>(-1i) * -vec2<i32>(-37204i, 2147483647i), -vec2<i32>(7933i, 0i) >> (~vec2<u32>(var_2.b, 108171u) % vec2<u32>(32u)))), var_2.e);
}

