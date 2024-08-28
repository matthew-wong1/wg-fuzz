struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(~(-3293i), -u_input.b.x), ~(u_input.b.x << (arg_2.b.x % 32u)), -(u_input.b.x >> (_wgslsmith_dot_vec4_u32(arg_0.b, arg_2.b) % 32u))), select(vec3<i32>(u_input.b.x, select(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -69263i, u_input.b.x), vec3<i32>(u_input.b.x, 40803i, u_input.b.x)), u_input.b.x, true), max(i32(-1i) * -7022i, _wgslsmith_sub_i32(0i, 86926i))), ~u_input.b.xzx, false), u_input.b.wzy);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(522f, arg_2.a.x, arg_2.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(arg_2.a.x)), _wgslsmith_f_op_f32(max(arg_0.a.x, -661f)), _wgslsmith_f_op_f32(-arg_2.a.x))))), ~(~_wgslsmith_sub_vec4_u32(arg_2.b, arg_0.b)));
    var var_2 = -max(~(u_input.b.x & u_input.b.x), 1i & (41650i << (u_input.a % 32u))) <= -29189i;
    global0 = _wgslsmith_f_op_f32(639f + _wgslsmith_f_op_f32(step(-193f, _wgslsmith_f_op_f32(f32(-1f) * -623f))));
    var var_3 = -36228i;
    return arg_0;
}

fn func_3() -> vec3<f32> {
    var var_0 = select(select(vec4<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), false, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))), select(vec4<bool>(true, true, true, all(vec2<bool>(true, true))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), !select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, 13735i != u_input.b.x, any(vec2<bool>(false, false)))), select(vec4<bool>(true, select(any(vec3<bool>(false, false, true)), 4687u <= u_input.a, true), false, any(vec3<bool>(true, true, true))), !vec4<bool>(true, true, u_input.a > u_input.a, true), any(vec2<bool>(true, true))));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-364f + func_2(Struct_1(vec3<f32>(-347f, -1137f, -1345f), vec4<u32>(0u, u_input.a, 0u, u_input.a)), vec2<u32>(u_input.a, u_input.a), Struct_1(vec3<f32>(1238f, 683f, -1397f), vec4<u32>(u_input.a, 37135u, u_input.a, 1u))).a.x)), _wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2802f)), true))), vec4<u32>(1u, u_input.a, max(countOneBits(~4294967295u), firstTrailingBit(abs(34356u))), 1u));
    let var_2 = any(var_0.zw) || any(select(var_0.yw, !(!var_0.xw), all(vec2<bool>(true, true))));
    var var_3 = abs(abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 15528u, 4294967295u, 0u), firstLeadingBit(var_1.b)))) | var_1.b;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2044f, var_1.a.x, var_1.a.x, 1197f) + vec4<f32>(1768f, var_1.a.x, var_1.a.x, -371f))))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(step(-1222f, -367f)), var_1.a.x)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.a, var_4.xzw))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_4.zyz)) - _wgslsmith_f_op_vec3_f32(select(var_1.a, var_1.a, vec3<bool>(true, true, true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.a.x, 1043f, var_4.x)))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> StorageBuffer {
    global0 = arg_1.a.x;
    let var_0 = u_input.b;
    var var_1 = func_2(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_1.a - vec3<f32>(arg_1.a.x, -418f, 1790f)))))), arg_1.b), vec2<u32>(_wgslsmith_div_u32(~u_input.a, 11216u), 14491u), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(arg_1.a)), min(~arg_1.b, arg_1.b & arg_1.b) << (abs(vec4<u32>(u_input.a, arg_1.b.x, u_input.a, u_input.a)) % vec4<u32>(32u))));
    let var_2 = func_2(arg_1, countOneBits(firstTrailingBit(~arg_1.b.wz)), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(func_3()), vec4<u32>(~u_input.a, var_1.b.x << (u_input.a % 32u), _wgslsmith_mod_u32(var_1.b.x, arg_1.b.x), _wgslsmith_dot_vec2_u32(var_1.b.yz, vec2<u32>(0u, var_1.b.x)))), arg_1.b.xw, arg_1));
    let var_3 = func_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a.x + var_2.a.x))), var_1.a.x, var_2.a.x), arg_1.b), _wgslsmith_clamp_vec2_u32(countOneBits(~_wgslsmith_clamp_vec2_u32(vec2<u32>(9053u, 4294967295u), arg_1.b.xw, vec2<u32>(27321u, 0u))), arg_1.b.xx, _wgslsmith_clamp_vec2_u32(vec2<u32>(~arg_1.b.x, var_2.b.x), select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 0u), var_1.b.zy), max(vec2<u32>(var_1.b.x, 4294967295u), vec2<u32>(8560u, u_input.a)), true), ~abs(vec2<u32>(u_input.a, 33233u)))), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(var_1.a)))), min(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.b.x, arg_1.b.x, var_1.b.x, arg_1.b.x), var_1.b), firstLeadingBit(var_2.b))), ~(~(vec2<u32>(0u, 61372u) << (arg_1.b.wz % vec2<u32>(32u)))), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x) - var_1.a), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, var_2.b.x, 85054u), vec4<u32>(var_2.b.x, var_1.b.x, 40887u, 0u))), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.b.x, arg_1.b.x), var_1.b.ww) & vec2<u32>(arg_1.b.x, arg_1.b.x), Struct_1(_wgslsmith_f_op_vec3_f32(arg_1.a + vec3<f32>(arg_1.a.x, -216f, var_1.a.x)), ~var_2.b))));
    return StorageBuffer(abs(abs(vec2<i32>(-31407i, 29429i))), 9756u, arg_1.b.xz, vec3<i32>(i32(-1i) * -arg_0.x, u_input.b.x, -u_input.b.x & -arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -471f;
    let x = u_input.a;
    s_output = func_1(-vec3<i32>(_wgslsmith_dot_vec3_i32(abs(u_input.b.xzx), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -23578i, u_input.b.x), u_input.b.xyw)), u_input.b.x, u_input.b.x), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1051f, -495f, 101f) + vec3<f32>(385f, 255f, 1254f))))), ~(~(vec4<u32>(21075u, u_input.a, u_input.a, u_input.a) & vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)))));
}

