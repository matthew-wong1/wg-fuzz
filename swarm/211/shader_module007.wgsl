struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: Struct_1,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 320f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = Struct_3(vec4<u32>(18800u, abs(4294967295u), 1u, u_input.a));
    global0 = _wgslsmith_f_op_f32(-arg_0.a);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_0.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.a)), _wgslsmith_f_op_f32(select(arg_1.a, arg_0.a, false)))))) <= _wgslsmith_f_op_f32(674f + 1739f);
    var_1 = !select(true, true, true);
    var var_2 = var_0.a.wxx;
    return ~reverseBits(var_0.a);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(~u_input.a, u_input.a, _wgslsmith_mod_u32(u_input.a, 4294967295u), u_input.a >> (51619u % 32u)) & func_3(Struct_1(-534f), Struct_1(_wgslsmith_f_op_f32(1065f + -319f))), ~vec4<u32>(~(u_input.a >> (u_input.a % 32u)), 1u, 40050u, u_input.a));
    var_0 = vec4<u32>(u_input.a << (_wgslsmith_dot_vec3_u32(~(~var_0.wxw), _wgslsmith_clamp_vec3_u32(vec3<u32>(115496u, 19071u, 31192u), ~var_0.zwx, _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, u_input.a, 0u), vec3<u32>(var_0.x, u_input.a, 10664u)))) % 32u), _wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), ~vec4<u32>(var_0.x, var_0.x, 658u, var_0.x)) | ~1u), var_0.x | _wgslsmith_sub_u32(89u, 1u), u_input.a);
    var_0 = select((~vec4<u32>(var_0.x, u_input.a, 1u, u_input.a) << (~vec4<u32>(var_0.x, 4294967295u, 7902u, u_input.a) % vec4<u32>(32u))) & firstTrailingBit(~vec4<u32>(u_input.a, var_0.x, 2252u, 1u)), vec4<u32>(7559u << (_wgslsmith_sub_u32(1u, var_0.x) % 32u), abs(18137u), 12514u, firstLeadingBit(156163u)), vec4<bool>(true, all(vec4<bool>(true, true, false, false)), _wgslsmith_f_op_f32(sign(-701f)) >= _wgslsmith_f_op_f32(f32(-1f) * -108f), all(vec2<bool>(true, true)))) | (max(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, 11589u, 4294967295u) ^ vec4<u32>(88743u, var_0.x, 10647u, 1u), ~vec4<u32>(u_input.a, 34454u, 49908u, u_input.a)), vec4<u32>(u_input.a, 1u, var_0.x, var_0.x)) << (vec4<u32>(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(46939u, var_0.x, var_0.x, 0u), vec4<u32>(var_0.x, 0u, 21894u, u_input.a))), ~(~1u), 1u) % vec4<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-112f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-247f)), -398f))))));
    let var_2 = 2147483647i;
    return 1450f;
}

fn func_1(arg_0: Struct_3) -> i32 {
    global0 = _wgslsmith_f_op_f32(-1054f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(796f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(409f + -186f) + 1014f))));
    global0 = _wgslsmith_f_op_f32(func_2());
    var var_0 = max(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -1i, _wgslsmith_mult_i32(-10302i, -15884i), -14552i, min(-2147483647i, 1i)), -abs(vec4<i32>(-18333i, -24597i, 47141i, 21950i)))), -17311i);
    let var_1 = _wgslsmith_f_op_f32(-174f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1278f))));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(f32(-1f) * -986f))));
    return -_wgslsmith_dot_vec3_i32(-vec3<i32>(-38410i, 32785i, 2147483647i), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -32705i, -17436i), vec3<i32>(2147483647i, -2537i, 2147483647i)), -3164i, _wgslsmith_sub_i32(-1i, 1i)) >> (~(~vec3<u32>(arg_0.a.x, 7635u, u_input.a)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(298f))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -708f);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_div_f32(-1800f, -1902f))))));
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(abs(53391i) >> (~u_input.a % 32u), max(func_1(Struct_3(vec4<u32>(21356u, 0u, u_input.a, u_input.a))), 1i)), 1i), -reverseBits(-1450i), -abs(-12254i), -(~2147483647i));
    let var_2 = var_1.zz;
    let x = u_input.a;
    s_output = StorageBuffer(-595f, vec3<u32>(67241u, ~_wgslsmith_mod_u32(u_input.a, abs(30918u)), _wgslsmith_mod_u32(u_input.a, 1u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(913f, 412f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -877f)), _wgslsmith_f_op_f32(-1422f - -1000f), -1565f));
}

