struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: bool,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<vec4<i32>, 12>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec4<u32> {
    global0 = array<vec4<i32>, 12>();
    var var_0 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(11660u, 4294967295u, 40594u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 4294967295u, 0u)) % vec3<u32>(32u)), abs(~vec3<u32>(u_input.a, 42474u, 34562u))), reverseBits(1u)), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, ~4294967295u, _wgslsmith_div_u32(u_input.a, 0u)), abs(vec3<u32>(4294967295u, u_input.a, u_input.a))), u_input.a & u_input.a), reverseBits(4294967295u));
    global0 = array<vec4<i32>, 12>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(184f)) - -326f) + 1f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2095f * 218f), _wgslsmith_f_op_f32(sign(-992f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(986f, -1009f, true)) + _wgslsmith_f_op_f32(f32(-1f) * -220f))) + _wgslsmith_f_op_f32(f32(-1f) * -1920f)));
    let var_2 = global0[_wgslsmith_index_u32(~25160u, 12u)];
    return _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(select(3418u, 4698u, true), 53597u, _wgslsmith_mult_u32(0u, 0u), ~u_input.a)) | vec4<u32>(var_0.x, var_0.x, _wgslsmith_mod_u32(var_0.x, var_0.x) | min(var_0.x, u_input.a), select(max(0u, 1u), 3418u, select(true, true, false))), select(reverseBits(~vec4<u32>(u_input.a, u_input.a, u_input.a, 81406u) << (~vec4<u32>(0u, var_0.x, u_input.a, var_0.x) % vec4<u32>(32u))), vec4<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(49234u, 52967u, 70121u, 1u)), vec4<u32>(var_0.x, var_0.x, 67097u, 1154u) & vec4<u32>(14010u, u_input.a, var_0.x, 0u)), var_0.x, ~abs(1u)), !vec4<bool>(true, all(vec2<bool>(true, false)), false, all(vec3<bool>(false, false, false)))));
}

fn func_2(arg_0: u32) -> vec2<f32> {
    global0 = array<vec4<i32>, 12>();
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, ~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(79565u, u_input.a))), _wgslsmith_clamp_u32(u_input.a, 12867u, ~0u)), ~(func_3() >> ((~vec4<u32>(17829u, arg_0, 4294967295u, arg_0) | _wgslsmith_add_vec4_u32(vec4<u32>(31611u, u_input.a, 7002u, arg_0), vec4<u32>(1u, 51513u, u_input.a, arg_0))) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1644f, 2334f) - vec2<f32>(-820f, 635f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1473f, -692f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1460f), 488f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-382f)), -453f))));
    let var_2 = Struct_5(Struct_3(var_0.x, Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(u_input.b, 10393i, -1i, 1i), -2147483647i == u_input.b, vec2<i32>(-1i, -24977i) ^ vec2<i32>(u_input.b, 1i), 4977i ^ u_input.b), vec3<bool>(true, all(vec4<bool>(true, false, true, true)), true), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -796f), -213f, 1587f), Struct_1(vec2<bool>(true, false), vec4<i32>(1i, u_input.b, u_input.b, -16219i), true, firstLeadingBit(vec2<i32>(u_input.b, -2147483647i)), ~7296i), vec2<bool>(true, true))), ~vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a, 4294967295u, 1u), _wgslsmith_mod_u32(1u, u_input.a)), abs(1u), _wgslsmith_mult_u32(4294967295u, ~u_input.a), 4294967295u));
    var var_3 = Struct_3(_wgslsmith_dot_vec3_u32(var_0.xxx | vec3<u32>(~38458u, 96668u, ~5202u), var_2.b.wyw), var_2.a.b);
    return _wgslsmith_f_op_vec2_f32(var_1 + vec2<f32>(_wgslsmith_f_op_f32(round(var_1.x)), var_3.b.c.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-563f, 2159f), vec2<f32>(1662f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1166f, -176f)), arg_0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1993f, 1000f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(func_2(~(~u_input.a) | ~u_input.a));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(254f, var_0.x) * vec2<f32>(-685f, var_0.x)))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2269f, var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-193f, var_0.x))) - _wgslsmith_f_op_vec2_f32(func_2(u_input.a)))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -657f) + vec2<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), var_0.x)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(-1118f, var_0.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-439f, -1430f))) * vec2<f32>(-1109f, 218f)), vec2<f32>(_wgslsmith_f_op_f32(ceil(1201f)), -1851f)))));
    return vec2<i32>(_wgslsmith_add_i32(40167i, _wgslsmith_dot_vec3_i32(vec3<i32>(8143i, u_input.b, _wgslsmith_div_i32(-2147483647i, -34128i)), select(-vec3<i32>(0i, -2147483647i, -31573i), vec3<i32>(28803i, u_input.b, 1i), !arg_0.x))), select(firstLeadingBit(firstLeadingBit(-2147483647i)), u_input.b, any(select(!vec3<bool>(false, false, arg_0.x), vec3<bool>(true, arg_0.x, true), !arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(81412u, u_input.a), vec2<u32>(27655u, 8884u))) | ~select(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(21524u, u_input.a), select(vec2<bool>(false, true), vec2<bool>(false, false), false)));
    global0 = array<vec4<i32>, 12>();
    global0 = array<vec4<i32>, 12>();
    let var_1 = select(vec2<u32>(41322u, abs(_wgslsmith_sub_u32(1u << (1u % 32u), var_0.x))), ~var_0, vec2<bool>(true, !(_wgslsmith_sub_i32(27068i, 55730i) != u_input.b)));
    var var_2 = _wgslsmith_mod_vec2_i32(~(~(vec2<i32>(-1i) * -vec2<i32>(u_input.b, -12829i))), -(vec2<i32>(-1i) * -func_1(vec2<bool>(false, false), 0u)));
    var var_3 = Struct_1(vec2<bool>((select(true, true, true) & true) != all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))), true), abs(-vec4<i32>(var_2.x, -11455i, countOneBits(u_input.b), var_2.x)), true, vec2<i32>(-1i) * -(~abs(vec2<i32>(-76482i, -1406i))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2787f)) * _wgslsmith_f_op_f32(round(-163f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -738f) - _wgslsmith_div_f32(513f, 969f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-271f, 1126f) + _wgslsmith_f_op_f32(step(1095f, 761f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-280f, -2043f))) - 1f)));
}

