struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec4<bool>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_1, 1360f, arg_0))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_0, 989f, -811f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, arg_1, arg_1, -1007f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -522f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-876f - _wgslsmith_f_op_f32(max(arg_1, 408f)))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(max(arg_0, arg_0)), arg_1, arg_1, arg_0)))), vec4<u32>(49672u, abs(min(abs(42904u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 10875u, 32146u), vec3<u32>(8651u, 61139u, 3415u)))), ~(~4294967295u), abs(57089u)), 1276f);
    let var_1 = Struct_2(!vec4<bool>(any(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), true, all(!arg_2.wxz), all(!arg_2)));
    var var_2 = -23984i;
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_1, arg_1, _wgslsmith_f_op_f32(-arg_1)), var_0.a, _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x) >> (var_0.c % vec4<u32>(32u)), ~(vec4<u32>(41756u, 4582u, var_0.c.x, 9054u) | var_0.c)), _wgslsmith_f_op_f32(select(2545f, -421f, arg_2.x)));
    var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(974f, _wgslsmith_f_op_f32(ceil(-744f)), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(arg_1, var_0.d)) * _wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_3.b.x, var_3.d, 286f)), vec4<bool>(arg_2.x, false, false, var_1.a.x)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 * 1000f), arg_1)), _wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(-895f * var_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-328f * var_0.d))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_div_f32(130f, var_3.b.x) - var_0.a.x), -851f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d - arg_0) + _wgslsmith_f_op_f32(select(var_3.b.x, var_3.d, var_1.a.x))))), ~abs(var_3.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.a.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(871f - _wgslsmith_f_op_f32(-arg_0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x + 3255f)))));
    return ~1273u;
}

fn func_2() -> vec3<bool> {
    global0 = -1630f;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1098f);
    let var_0 = (vec4<u32>(~(~52575u), func_3(-271f, _wgslsmith_f_op_f32(1246f + -1000f), vec4<bool>(true, true, true, true)), min(_wgslsmith_add_u32(0u, 4294967295u), 1u), 1u) >> (~countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(41412u, 48921u, 4294967295u, 20511u), vec4<u32>(0u, 46982u, 4294967295u, 870u), vec4<u32>(22182u, 4294967295u, 0u, 3836u))) % vec4<u32>(32u))) & ~vec4<u32>(1u, 1u, 1u, 1u);
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-467f))), -588f, 211f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-604f, 1000f, true)) + -321f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-909f, 332f, -485f, 432f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-740f, -294f, -320f, 166f))), true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(596f, 1010f, 1000f, -2306f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2605f, 1834f, -1898f, 520f)))))), _wgslsmith_clamp_vec4_u32(~abs(~vec4<u32>(var_0.x, 0u, var_0.x, var_0.x)), _wgslsmith_mult_vec4_u32(var_0, firstLeadingBit(abs(var_0))), var_0), _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1256f)), _wgslsmith_f_op_f32(max(-717f, _wgslsmith_f_op_f32(f32(-1f) * -410f))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -401f)))), var_1.b.x, 1293f);
    return select(!vec3<bool>(all(vec4<bool>(true, true, true, true)), u_input.a.x < -67725i, true), vec3<bool>(!any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true)), false, true), select(vec3<bool>(true, false || all(vec2<bool>(true, false)), false), vec3<bool>(true, true, true), vec3<bool>(!select(false, false, false), u_input.a.x > -u_input.a.x, true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(446f + 1624f), 162f, true))))), -816f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1046f - -379f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(472f, 1000f, var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(490f, 1361f, -563f)), arg_2.a.xxx)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-652f, 200f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))), !arg_2.a.zzw)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -1775f)));
    var var_2 = abs(abs(~_wgslsmith_add_u32(select(1u, 1u, true), _wgslsmith_mod_u32(1u, 16722u))));
    let var_3 = ~firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -863f), 338f, true))));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> i32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1020f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-438f * -1032f))), arg_1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -875f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1841f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1696f))))));
    global0 = _wgslsmith_f_op_f32(func_4(vec4<bool>(any(vec3<bool>(!arg_1.x, false, arg_1.x || true)), false, !arg_1.x, any(!func_2())), (i32(-1i) * -arg_0) | arg_0, Struct_2(select(vec4<bool>(-48688i < u_input.a.x, false, true, arg_1.x), vec4<bool>(true, !arg_1.x, false || arg_1.x, true), !arg_1.x))));
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(877f + -731f) - _wgslsmith_div_f32(635f, 1000f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-621f)))), _wgslsmith_f_op_f32(abs(-366f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(635f))) * _wgslsmith_f_op_f32(func_4(select(vec4<bool>(true, true, false, arg_1.x), vec4<bool>(true, arg_1.x, false, true), vec4<bool>(arg_1.x, true, false, false)), ~(-1i), Struct_2(vec4<bool>(arg_1.x, false, false, arg_1.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1340f)), 318f), _wgslsmith_f_op_f32(f32(-1f) * -431f), _wgslsmith_div_f32(1115f, _wgslsmith_div_f32(-284f, 1028f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-550f))))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~min(max(vec4<u32>(43825u, 1u, 4294967295u, 1u), vec4<u32>(41121u, 0u, 0u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(func_3(-415f, 574f, vec4<bool>(arg_1.x, true, arg_1.x, true)), ~4294967295u, 1u, _wgslsmith_mod_u32(48213u, 17584u)) ^ _wgslsmith_mod_vec4_u32(~vec4<u32>(61861u, 4294967295u, 836u, 4294967295u), firstLeadingBit(vec4<u32>(6065u, 30556u, 2816u, 1u)))), -512f);
    let var_1 = ~abs(-u_input.a.x & _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a.x, arg_0), u_input.a.x << (106841u % 32u), 0i));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.d)));
    return _wgslsmith_add_i32(0i, _wgslsmith_div_i32(-34396i >> (var_0.c.x % 32u), -44395i)) | -38291i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(max(21093i, -55316i) > _wgslsmith_add_i32(func_1(_wgslsmith_div_i32(-16597i, u_input.a.x), vec2<bool>(false, false)), u_input.a.x), func_2().x != true);
    let x = u_input.a;
    s_output = StorageBuffer(1902f, _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~select(vec2<u32>(37442u, 20018u), vec2<u32>(1u, 4294967295u), var_0), vec2<u32>(firstLeadingBit(4294967295u), 74748u)), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(37322u, 1u)), vec2<u32>(1u, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(20158u, 92431u), vec2<u32>(40687u, 4294967295u), false)))), u_input.a.x, ~u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 781f, 1876f, 188f) + vec4<f32>(1147f, 677f, 2002f, -144f)) - vec4<f32>(1605f, 235f, 1455f, 1235f))))));
}

