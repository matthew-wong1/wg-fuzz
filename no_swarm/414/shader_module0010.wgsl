struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: vec3<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec4<f32>) -> f32 {
    let var_0 = arg_2.d;
    var var_1 = vec3<u32>(~countOneBits(~47281u ^ select(1u, 0u, false)), ~(~(~u_input.a.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, arg_2.b.a.c), ~vec3<u32>(var_0.c, 1u, 0u) << (vec3<u32>(var_0.c, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), ~u_input.a.x));
    let var_2 = false;
    var var_3 = arg_2.d;
    var var_4 = 0i;
    return 1165f;
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> bool {
    let var_0 = Struct_2(arg_1.b.a);
    var var_1 = Struct_2(Struct_1(var_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - 236f), _wgslsmith_f_op_f32(sign(arg_1.d.a)))) * _wgslsmith_f_op_f32(-arg_1.d.a)), var_0.a.c | 0u));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b, arg_1.d.b, -1820f) - vec3<f32>(arg_1.d.b, var_1.a.b, var_1.a.a)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.a.a, 128f, var_1.a.a) - vec3<f32>(var_0.a.a, 260f, 186f))))))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(var_0.a.b * var_0.a.a), _wgslsmith_f_op_f32(floor(var_1.a.b)), -456f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(countOneBits(vec2<i32>(u_input.b, u_input.b)), !vec2<bool>(true, arg_0), Struct_3(false, Struct_2(var_0.a), arg_1.a, Struct_1(-515f, -1000f, 4294967295u)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a.b, var_0.a.b, 2384f, arg_1.b.a.a), vec4<f32>(-765f, -812f, var_1.a.b, 307f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.a.b), arg_1.b.a.a))));
    var var_4 = any(!(!(!select(vec4<bool>(arg_0, true, arg_1.a, arg_0), vec4<bool>(false, arg_1.c, arg_1.c, false), true))));
    return all(vec4<bool>(true, !(!(arg_1.c && false)), false, false));
}

fn func_4(arg_0: bool) -> vec4<u32> {
    let var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(47006i >= u_input.b, all(vec4<bool>(true, false, arg_0, false))), !vec2<bool>(false, arg_0)));
    let var_1 = select(select(select(var_0, var_0, any(vec4<bool>(var_0.x, var_0.x, false, false))), vec2<bool>(var_0.x, false), true), !select(var_0, !vec2<bool>(var_0.x, arg_0), true), !select(var_0, vec2<bool>(true, false), all(vec4<bool>(false, false, true, true)) || false));
    var var_2 = Struct_1(-243f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -442f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-114f, 1073f)), _wgslsmith_f_op_f32(select(-644f, 423f, true))))), u_input.a.x);
    var_2 = Struct_1(var_2.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)) + 692f))), u_input.a.x);
    let var_3 = Struct_2(Struct_1(var_2.a, 813f, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(18616u, 4294967295u, var_2.c) | vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), firstLeadingBit(~vec3<u32>(u_input.a.x, 0u, 4294967295u)))));
    return ~vec4<u32>(31767u, _wgslsmith_dot_vec2_u32(~select(u_input.a, vec2<u32>(u_input.a.x, 27716u), vec2<bool>(var_1.x, var_0.x)), ~(~u_input.a)), 14918u, ~34966u);
}

fn func_5(arg_0: vec4<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(-94336i, u_input.b, max(u_input.b, ~u_input.b), -41519i), ~abs(vec4<i32>(~(-20769i), -2147483647i, _wgslsmith_mod_i32(u_input.b, 1i), firstLeadingBit(u_input.b))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))), -1018f, u_input.a.x >> (33709u % 32u)));
    let var_2 = Struct_4(Struct_1(var_1.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b * -2372f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.a)))), abs(_wgslsmith_clamp_u32(~var_1.a.c, ~0u, 1u))), abs(u_input.b), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-1023f + -726f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(304f)), var_1.a.b)), -1000f))), select(!vec3<bool>(true, any(vec2<bool>(true, true)), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), var_1.a.a > -1517f), select(vec3<bool>(func_2(true, Struct_3(false, Struct_2(var_1.a), true, Struct_1(var_1.a.a, var_1.a.a, arg_0.x))), true, all(vec4<bool>(false, true, false, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_3(select((6199i <= u_input.b) & func_2(true, Struct_3(false, Struct_2(Struct_1(247f, -1557f, 38352u)), true, Struct_1(var_1.a.a, var_1.a.a, arg_0.x))), true & any(vec3<bool>(true, true, false)), false), Struct_2(Struct_1(1053f, _wgslsmith_f_op_f32(-var_1.a.a), arg_0.x)), 61781u >= u_input.a.x, Struct_1(_wgslsmith_f_op_f32(step(var_1.a.b, _wgslsmith_f_op_f32(select(525f, var_1.a.a, true)))), _wgslsmith_f_op_f32(round(-1177f)), _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(93258u, var_1.a.c, 4294967295u), vec3<u32>(var_1.a.c, 1u, u_input.a.x))))));
    var var_3 = !vec4<bool>(!select(!var_2.e.c, true, var_2.e.c), true, any(select(!vec4<bool>(var_2.e.c, var_2.e.c, false, var_2.e.a), vec4<bool>(var_2.d.x, var_2.d.x, false, false), vec4<bool>(var_2.d.x, false, var_2.e.c, var_2.d.x))), !func_2(false, Struct_3(var_2.d.x, var_2.e.b, var_2.e.c, var_1.a)));
    let var_4 = -677f;
    return min(vec3<u32>(((0u >> (var_1.a.c % 32u)) << (1u % 32u)) ^ ~(~u_input.a.x), ~39357u, ~var_1.a.c), arg_0.zzy);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = 1u;
    let var_1 = max(~(abs(vec2<i32>(arg_0.x, -22201i)) | firstTrailingBit(vec2<i32>(2147483647i, -1i) ^ arg_0.wz)), arg_0.xw);
    let var_2 = any(vec4<bool>(~(~arg_3.x) >= (~var_0 >> (_wgslsmith_add_u32(0u, 43497u) % 32u)), false, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false)), true));
    var var_3 = _wgslsmith_div_u32(max(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, ~u_input.a.x, _wgslsmith_mult_u32(0u, arg_3.x)), 4294967295u), ~var_0), firstTrailingBit(countOneBits(~13344u)));
    let var_4 = func_5(_wgslsmith_div_vec4_u32(firstTrailingBit(func_4(func_2(true, Struct_3(false, Struct_2(arg_2), false, arg_1)))), _wgslsmith_add_vec4_u32(select(select(vec4<u32>(4294967295u, arg_2.c, 49089u, arg_2.c), vec4<u32>(var_0, arg_3.x, 90486u, 53880u), true), ~vec4<u32>(4294967295u, 4294967295u, 1018u, arg_1.c), !vec4<bool>(var_2, var_2, var_2, true)), vec4<u32>(~arg_3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c, 11537u, arg_2.c), vec3<u32>(50809u, u_input.a.x, arg_2.c)), ~26194u, 1u))));
    return Struct_2(arg_1);
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: f32, arg_3: vec3<u32>) -> f32 {
    let var_0 = ~vec4<u32>(arg_3.x, func_4(all(vec3<bool>(true, false, true))).x, arg_1.a.c << (1u % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0, ~vec4<u32>(9390u, u_input.a.x, 29530u, 27485u)), ~vec4<u32>(15407u, 95528u, 0u, u_input.a.x)));
    let var_1 = true;
    let var_2 = true;
    var var_3 = vec4<u32>(_wgslsmith_add_u32(41475u, ~(~30799u)), 40167u, arg_1.a.c, 14547u);
    var var_4 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), func_1(vec4<i32>(2147483647i, 2147483647i, u_input.b, 0i), Struct_1(1816f, 1008f, u_input.a.x), Struct_1(-941f, -362f, 22514u), u_input.a), -209f, ~vec3<u32>(4294967295u, 10913u, u_input.a.x))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(592f))))), -547f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-486f + _wgslsmith_f_op_f32(f32(-1f) * -796f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(573f + -638f)))), firstTrailingBit(u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(func_5(vec4<u32>(var_0.c, 0u, 0u, var_0.c)).x, u_input.a.x, 4294967295u)), _wgslsmith_clamp_i32(select(u_input.b, i32(-1i) * -2147483647i, true), u_input.b, -(~u_input.b)) >> (~var_0.c % 32u), ~(~1u), -628f, var_0.a);
}

