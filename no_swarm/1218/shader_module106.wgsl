struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_2(u_input.b ^ u_input.b);
    let var_1 = countOneBits(~vec4<u32>(~(~u_input.b), 0u, reverseBits(_wgslsmith_div_u32(var_0.a, 24397u)), var_0.a));
    var_0 = Struct_2(var_0.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(144f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-405f, _wgslsmith_div_f32(-438f, 1000f)))))));
    let var_3 = ~(~(~var_1.x));
    return vec2<u32>(var_0.a & _wgslsmith_sub_u32(var_0.a, var_0.a), max(~(~1u), var_3));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: bool, arg_3: u32) -> f32 {
    var var_0 = Struct_1(!vec4<bool>(true, arg_2, arg_2, 1i <= arg_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -930f, -505f, 491f) + vec4<f32>(870f, -419f, -2284f, 1316f))))) + vec4<f32>(2782f, 1439f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1113f + -1087f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -601f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(select(-112f, 378f, arg_2)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(326f, 102f) * vec2<f32>(-665f, 2528f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(969f, 615f))), vec2<f32>(1106f, -274f), any(vec4<bool>(arg_2, true, arg_2, arg_2)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(429f + 840f)), -564f, _wgslsmith_f_op_f32(-449f * _wgslsmith_f_op_f32(abs(820f))), 602f)));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(step(var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-628f, var_0.d.x, -370f, -153f), var_0.d), _wgslsmith_f_op_vec4_f32(select(var_0.b, var_0.d, vec4<bool>(arg_2, var_0.a.x, var_0.a.x, var_0.a.x)))))))), var_0.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.d.x + var_0.c.x), -202f, _wgslsmith_f_op_f32(select(1000f, -3520f, var_0.a.x)), _wgslsmith_f_op_f32(trunc(var_0.c.x)))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.x))), -180f);
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1229f, 1177f, var_0.d.x, var_0.c.x))))));
    var var_2 = Struct_2(~_wgslsmith_clamp_u32(min(4674u << (u_input.b % 32u), 1u), func_3().x << (~arg_1.x % 32u), _wgslsmith_mod_u32(u_input.b, u_input.b)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, var_0.d.x));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1363f))))));
    var var_1 = arg_1;
    var_0 = _wgslsmith_f_op_f32(func_4(vec4<i32>(u_input.a, _wgslsmith_add_i32(~(-1i), u_input.a) << (arg_0 % 32u), ~u_input.a, ~(i32(-1i) * -u_input.a)), (~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.a, u_input.b), vec2<u32>(u_input.b, var_1.a)) >> (func_3() % vec2<u32>(32u))) >> (vec2<u32>(u_input.b, _wgslsmith_mod_u32(arg_1.a, var_1.a | 1u)) % vec2<u32>(32u)), true, 1u));
    var_1 = arg_1;
    let var_2 = select(_wgslsmith_clamp_u32(firstLeadingBit(~u_input.b), 0u, 0u), _wgslsmith_add_u32(arg_1.a, ~(~u_input.b)), false);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1554f, _wgslsmith_div_f32(1199f, 478f), _wgslsmith_f_op_f32(-1078f + 899f), 225f)) + vec4<f32>(_wgslsmith_f_op_f32(select(277f, _wgslsmith_div_f32(1221f, -674f), false)), _wgslsmith_f_op_f32(step(-442f, -288f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -445f))), -414f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-146f, 319f, -1997f, -854f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1397f, -1000f, -1000f, -445f)))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> u32 {
    let var_0 = vec3<u32>(((u_input.b << (firstLeadingBit(10597u) % 32u)) >> (~(~u_input.b) % 32u)) << (((_wgslsmith_add_u32(arg_0.x, 37855u) >> (min(1u, u_input.b) % 32u)) | (_wgslsmith_add_u32(5978u, 0u) & _wgslsmith_sub_u32(68428u, arg_0.x))) % 32u), 4294967295u, _wgslsmith_sub_u32(u_input.b, _wgslsmith_mult_u32(arg_0.x, u_input.b ^ _wgslsmith_mod_u32(0u, u_input.b))));
    let var_1 = Struct_1(vec4<bool>(any(vec2<bool>(true, select(true, true, true))), true && all(vec2<bool>(false, false)), true, true), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2299f, -580f, 178f, -725f))) * _wgslsmith_f_op_vec4_f32(func_2(66509u, Struct_2(var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(sign(193f)), _wgslsmith_f_op_f32(ceil(767f)), _wgslsmith_f_op_f32(f32(-1f) * -174f), _wgslsmith_f_op_f32(f32(-1f) * -220f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1106f, 1799f, -130f))) + vec4<f32>(-596f, _wgslsmith_f_op_f32(f32(-1f) * -216f), -908f, _wgslsmith_f_op_f32(-1073f * -1320f))))), vec2<f32>(460f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-644f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec2<bool>(false, true)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1166f, 200f, 314f, -871f), vec4<f32>(969f, -1510f, 848f, 1319f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-172f, 692f, -1329f, 269f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(721f, -909f, 1057f, 2453f)), vec4<f32>(-432f, -201f, -901f, 202f), vec4<bool>(true, true, true, true))))), true)));
    var var_2 = Struct_1(select(var_1.a, vec4<bool>(any(vec3<bool>(false, var_1.a.x, true)), any(var_1.a.zzy), firstTrailingBit(4719i) != ~arg_1, all(select(vec2<bool>(var_1.a.x, var_1.a.x), var_1.a.wz, true))), var_1.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.x, 219f, -294f, 833f), vec4<f32>(-693f, -1000f, var_1.d.x, var_1.b.x))))) + vec4<f32>(-1702f, var_1.b.x, var_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -339f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b.zz + var_1.c)), _wgslsmith_f_op_vec4_f32(-var_1.d));
    var var_3 = var_1.a.x;
    var var_4 = Struct_1(select(select(select(vec4<bool>(true, var_2.a.x, false, false), vec4<bool>(var_1.a.x, var_2.a.x, false, var_2.a.x), !vec4<bool>(var_2.a.x, true, true, true)), vec4<bool>(all(vec4<bool>(false, true, false, false)), all(vec2<bool>(false, false)), var_1.c.x < var_2.d.x, all(var_1.a.zxx)), select(true, var_1.a.x, any(vec3<bool>(false, true, true)))), var_2.a, true), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(-vec4<i32>(-1i, arg_1, arg_1, 2147483647i), arg_0.wz, 455f != var_1.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(36606u, 1u, arg_0.x), arg_0.wxy))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(1000f, var_1.c.x), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1929f, var_1.c.x)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(var_1.d.x + -1345f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.d.x, _wgslsmith_f_op_vec4_f32(func_2(0u, Struct_2(u_input.b))).x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, -1000f, var_1.d.x, 1982f)), vec4<f32>(1000f, var_2.c.x, 1085f, 1148f))))));
    return _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.x, ~_wgslsmith_div_u32(28300u, 17737u), var_0.x, func_3().x)), vec4<u32>(~_wgslsmith_add_u32(0u, 10086u), u_input.b, func_3().x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0.x, u_input.b), 54988u >> (func_3().x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(~func_1(vec4<u32>(50113u, 56650u, u_input.b, u_input.b), -5330i));
    let var_1 = Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-836f, 226f, -2359f, -1200f))))))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-742f, _wgslsmith_f_op_f32(trunc(1000f))))), vec4<f32>(515f, -447f, _wgslsmith_f_op_f32(ceil(-652f)), _wgslsmith_f_op_f32(663f + _wgslsmith_f_op_f32(select(-607f, _wgslsmith_f_op_f32(f32(-1f) * -1470f), var_0 < 3969u)))));
    let var_2 = _wgslsmith_dot_vec4_i32(-abs(-vec4<i32>(u_input.a, 42622i, u_input.a, u_input.a)) >> (~select(~vec4<u32>(78394u, u_input.b, u_input.b, 81437u), vec4<u32>(var_0, var_0, 4294967295u, u_input.b), 2231f >= var_1.d.x) % vec4<u32>(32u)), ~select(vec4<i32>(_wgslsmith_div_i32(u_input.a, -10146i), _wgslsmith_mult_i32(-20030i, 4661i), abs(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, 32423i), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i))), ~(~vec4<i32>(-48113i, 1i, u_input.a, u_input.a)), vec4<bool>(var_1.a.x, !var_1.a.x, any(vec4<bool>(false, false, var_1.a.x, var_1.a.x)), true)));
    var var_3 = !(!var_1.a);
    let var_4 = Struct_2(func_1(~vec4<u32>(u_input.b, ~var_0, _wgslsmith_clamp_u32(4294967295u, u_input.b, 17760u), reverseBits(1u)), -2636i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-325f, var_1.c.x, -786f), var_2);
}

