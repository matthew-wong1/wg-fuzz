struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 3074u;

var<private> global1: u32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> f32 {
    var var_0 = vec3<i32>(87945i, arg_0.a.d, -1i);
    global0 = arg_0.a.a;
    var_0 = u_input.a.zzx;
    return _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-1f));
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> u32 {
    global1 = 0u;
    let var_0 = countOneBits(_wgslsmith_clamp_i32(-60768i << (arg_1.c.x % 32u), _wgslsmith_clamp_i32(~select(u_input.a.x, 57347i, arg_1.b), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-26629i, -2104i, 1i, u_input.a.x)), vec4<i32>(arg_1.a.a.a.c.x, u_input.a.x, -2147483647i, arg_1.a.a.a.d)), 1i), firstLeadingBit(-(~(-1i)))));
    global1 = ~_wgslsmith_dot_vec2_u32(max(firstTrailingBit(arg_1.c), arg_1.c), ~arg_1.c) ^ firstLeadingBit(~(~arg_1.a.a.a.a) ^ ~0u);
    global1 = _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1.c.x, arg_1.c.x), _wgslsmith_add_u32(1u, 58339u));
    var var_1 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0));
    return firstTrailingBit(~(~24662u | arg_1.a.a.a.a));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>) -> f32 {
    global1 = _wgslsmith_dot_vec3_u32(vec3<u32>(32700u, 0u, 0u << (arg_0.x % 32u)), vec3<u32>(~arg_0.x, arg_0.x << (~firstTrailingBit(4294967295u) % 32u), _wgslsmith_mod_u32(arg_0.x, max(_wgslsmith_add_u32(60409u, 0u), abs(0u)))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-510f - -602f)))) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1794f)))), _wgslsmith_f_op_f32(-915f + -767f)));
    var_0 = arg_1.x;
    let var_1 = 0u;
    let var_2 = func_4(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(-2521f, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(0u, vec4<bool>(true, arg_1.x, true, true), vec2<i32>(u_input.a.x, 0i), u_input.a.x)), 1161f))), _wgslsmith_f_op_f32(max(481f, _wgslsmith_f_op_f32(ceil(1394f))))))), Struct_4(Struct_3(Struct_2(Struct_1(var_1, vec4<bool>(arg_1.x, false, true, arg_1.x), vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.x))), false, _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1, var_1) >> (arg_0.xy % vec2<u32>(32u)), vec2<u32>(~var_1, var_1), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 26149u), vec2<u32>(2983u, var_1)) ^ ~arg_0.xz)));
    return -626f;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: bool, arg_3: bool) -> Struct_3 {
    let var_0 = ~_wgslsmith_div_vec2_u32(~(~arg_0.yz), vec2<u32>(4294967295u, 6303u));
    global0 = ~(func_4(_wgslsmith_f_op_f32(arg_1.x * 828f), Struct_4(Struct_3(Struct_2(Struct_1(var_0.x, vec4<bool>(arg_3, true, false, true), vec2<i32>(1i, u_input.a.x), u_input.a.x))), arg_2, _wgslsmith_mod_vec2_u32(var_0, vec2<u32>(var_0.x, arg_0.x)))) | 4294967295u);
    var var_1 = min(_wgslsmith_div_vec4_u32(min(~(~vec4<u32>(arg_0.x, var_0.x, var_0.x, arg_0.x)), vec4<u32>(_wgslsmith_div_u32(var_0.x, 1u), ~116498u, firstLeadingBit(arg_0.x), 0u >> (arg_0.x % 32u))), max(min(vec4<u32>(16058u, arg_0.x, 1u, 36657u), vec4<u32>(var_0.x, arg_0.x, 26107u, var_0.x)) & (vec4<u32>(4294967295u, var_0.x, 4294967295u, 28777u) >> (vec4<u32>(0u, arg_0.x, arg_0.x, 26825u) % vec4<u32>(32u))), abs(abs(vec4<u32>(arg_0.x, 0u, var_0.x, 14138u))))), vec4<u32>(var_0.x, _wgslsmith_dot_vec3_u32(firstTrailingBit(~arg_0), vec3<u32>(max(arg_0.x, arg_0.x), _wgslsmith_mod_u32(21697u, 36471u), ~4294967295u)), ~select(~15416u, ~1u, arg_2), ~arg_0.x));
    var var_2 = Struct_3(Struct_2(Struct_1(max(reverseBits(0u), 61698u), !vec4<bool>(true, false, arg_2, false), u_input.a.wx, 1i)));
    let var_3 = -(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-35061i, 5264i), 0i), -2147483647i));
    return Struct_3(var_2.a);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    let var_0 = u_input.a.x;
    let var_1 = func_5(_wgslsmith_mult_vec3_u32(abs(select(vec3<u32>(1u, 25286u, 4294967295u), select(vec3<u32>(70251u, 1u, 103868u), vec3<u32>(4294967295u, 96119u, 1u), vec3<bool>(arg_2, arg_1.x, false)), select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(false, false, false), vec3<bool>(arg_2, arg_2, arg_1.x)))), select(select(vec3<u32>(49493u, 28601u, 1u), vec3<u32>(4294967295u, 0u, 1u), true), ~(~vec3<u32>(1u, 52231u, 1u)), !select(vec3<bool>(arg_1.x, false, arg_2), vec3<bool>(false, arg_1.x, true), vec3<bool>(arg_2, false, arg_2)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<u32>(4294967295u, 0u, 6042u, 52690u), arg_1)) - 1209f)), 410f, -1217f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1171f)))), !arg_2, all(arg_1));
    var var_2 = func_5(vec3<u32>(0u, var_1.a.a.a, var_1.a.a.a) >> (min(vec3<u32>(var_1.a.a.a, ~31278u, 1u), vec3<u32>(0u, 0u, 3483u)) % vec3<u32>(32u)), vec4<f32>(-173f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-2725f, -966f, arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(580f - -187f))), 1f), true, true).a;
    var_2 = Struct_2(func_5(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(var_1.a.a.a, 1u), _wgslsmith_clamp_u32(var_2.a.a, var_2.a.a, 616u), var_1.a.a.a), _wgslsmith_mod_vec3_u32(vec3<u32>(55734u, var_1.a.a.a, var_1.a.a.a), countOneBits(vec3<u32>(1u, var_2.a.a, 60923u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -333f), _wgslsmith_f_op_f32(f32(-1f) * -738f), _wgslsmith_f_op_f32(f32(-1f) * -1335f), -969f) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-787f, 1000f, -313f, -1000f)), vec4<f32>(673f, -222f, 624f, 1756f)))), all(var_2.a.b.yxx), false).a.a);
    return select(~_wgslsmith_mult_u32(var_1.a.a.a, firstLeadingBit(91610u)) ^ var_2.a.a, ~select(_wgslsmith_div_u32(var_1.a.a.a, var_1.a.a.a), ~var_1.a.a.a, !arg_2) | ~(~var_1.a.a.a | 1u), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 4294967295u;
    var var_0 = vec2<u32>(~func_1(~vec2<i32>(-2147483647i, 14901i), vec2<bool>(true, true), any(vec3<bool>(true, false, true))), _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(36318u, 0u, 4294967295u, 2030u), vec4<u32>(70160u, 1u, 1u, 4294967295u)), _wgslsmith_add_u32(1u, 0u))) << (countOneBits(vec2<u32>(reverseBits(func_1(vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(false, false), false)), _wgslsmith_div_u32(1u, 64112u))) % vec2<u32>(32u));
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(896f + 1062f), -879f)))), -1416f, !(!select(false, all(vec4<bool>(true, true, false, false)), true))));
    var var_3 = all(!func_5(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.x, 37146u, 76982u), vec3<u32>(56473u, var_0.x, var_0.x) ^ vec3<u32>(0u, var_0.x, 1457u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(805f, -231f, -281f, 1717f)) * vec4<f32>(-1937f, 486f, 1888f, 1000f)), true, all(vec3<bool>(false, false, true))).a.a.b.xw);
    let x = u_input.a;
    s_output = StorageBuffer(~max(~var_0.x, 1u) << (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(23308u, var_0.x, 24032u) | vec3<u32>(9984u, 0u, var_0.x), vec3<u32>(var_0.x, var_0.x, 15499u) ^ vec3<u32>(23366u, 68734u, 4294967295u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(1u, var_0.x, 41285u))) % 32u), ~firstLeadingBit(-2147483647i));
}

