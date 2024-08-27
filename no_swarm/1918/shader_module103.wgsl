struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec4<f32> {
    global0 = array<vec4<u32>, 10>();
    global0 = array<vec4<u32>, 10>();
    var var_0 = arg_1.a;
    var var_1 = Struct_3(arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1748f, arg_1.c, _wgslsmith_f_op_f32(-arg_1.c), arg_1.d.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_2, vec4<f32>(arg_1.d.x, arg_0.x, arg_1.c, arg_0.x))) * _wgslsmith_div_vec4_f32(arg_1.d, arg_1.d)))), vec2<bool>(true, arg_1.a));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-299f))) + 926f))));
    return _wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(355f, -1908f, -689f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.d.x)) - _wgslsmith_f_op_f32(var_1.a.d.x * arg_2.x))), var_1.b)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_3(Struct_1(any(vec4<bool>(!arg_2.x, true, true & arg_3.c.x, true)), 0i, arg_3.b.x, _wgslsmith_f_op_vec4_f32(step(arg_3.b, _wgslsmith_f_op_vec4_f32(func_3(arg_3.a.d.zyy, Struct_1(arg_3.c.x, 2147483647i, -1177f, arg_1.b.d, 23799u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -112f, arg_1.b.d.x, arg_0), arg_1.b.d, arg_3.a.a)))))), ~(_wgslsmith_clamp_u32(arg_1.a.e, 8292u, 4294967295u) >> (0u % 32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.a.c), 292f)), -2557f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))))), !arg_3.c);
    global0 = array<vec4<u32>, 10>();
    global0 = array<vec4<u32>, 10>();
    global0 = array<vec4<u32>, 10>();
    var var_1 = ~(~(~max(50731u, countOneBits(arg_1.a.e))));
    return 4294967295u;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> bool {
    var var_0 = vec3<u32>(1u, max(15934u, firstLeadingBit(firstLeadingBit(~arg_1.a.e))), arg_1.a.e);
    var var_1 = _wgslsmith_clamp_i32(-(i32(-1i) * -arg_0.x), _wgslsmith_sub_i32(-(~(-arg_1.a.b)), _wgslsmith_dot_vec3_i32(arg_0.wwz, vec3<i32>(_wgslsmith_sub_i32(1i, 88633i), arg_3, abs(arg_0.x)))), -arg_0.x);
    let var_2 = !(!vec4<bool>(true, func_2(arg_1.b.x, Struct_2(arg_1.a, Struct_1(arg_2, 255i, arg_1.a.d.x, vec4<f32>(arg_1.a.c, 792f, 542f, arg_1.b.x), 4294967295u), arg_1.c.x, arg_1.b.xyz), vec2<bool>(arg_2, arg_1.a.a), arg_1) > u_input.a.x, all(vec3<bool>(true, true, arg_1.c.x)) == select(arg_1.a.a, true, arg_1.c.x), arg_2));
    var var_3 = abs(countOneBits(~(~vec3<u32>(68512u, 37108u, var_0.x))));
    global0 = array<vec4<u32>, 10>();
    return !arg_2;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(arg_0.b, _wgslsmith_f_op_vec4_f32(arg_0.b.d - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-574f * -1122f), -1361f, _wgslsmith_f_op_f32(min(-946f, arg_0.b.d.x)), _wgslsmith_f_op_f32(step(arg_0.b.d.x, arg_0.a.d.x)))))), !vec2<bool>(!arg_0.a.a, arg_0.a.a));
    global0 = array<vec4<u32>, 10>();
    let var_1 = Struct_2(arg_0.b, arg_0.b, false, _wgslsmith_f_op_vec3_f32(-var_0.b.zwy));
    global0 = array<vec4<u32>, 10>();
    var var_2 = min(1i, u_input.d);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(Struct_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec2_i32(u_input.b.yy, vec2<i32>(-2147483647i, u_input.b.x)) | 0i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1041f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1778f, -390f, -116f, 493f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(142f, -915f, 1456f, 722f) + vec4<f32>(453f, 643f, -1000f, 425f))), u_input.c), Struct_1(any(vec2<bool>(true, true)), u_input.b.x & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(28190i, 1i)), 1201f, vec4<f32>(1f, 1f, 1f, 1f), 16547u), true & (any(vec4<bool>(true, false, false, false)) | func_1(vec4<i32>(u_input.d, 13002i, 1i, u_input.b.x), Struct_3(Struct_1(true, 0i, 133f, vec4<f32>(-1683f, 569f, -1249f, -1100f), u_input.a.x), vec4<f32>(-549f, -178f, -1253f, 1649f), vec2<bool>(true, true)), true, -2256i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-813f * 2357f), _wgslsmith_f_op_f32(f32(-1f) * -1053f), 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-122f, -771f, 1795f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1288f, -793f, -568f) + vec3<f32>(-636f, -170f, 486f))))));
    var var_1 = select(!select(select(select(vec3<bool>(var_0.a, false, true), vec3<bool>(var_0.a, true, var_0.a), false), select(vec3<bool>(true, true, var_0.a), vec3<bool>(true, var_0.a, var_0.a), var_0.a), var_0.e >= var_0.e), vec3<bool>(var_0.a, 338u > u_input.c, true), !any(vec4<bool>(var_0.a, var_0.a, var_0.a, false))), vec3<bool>(select(true, true, var_0.a), !var_0.a, var_0.a), var_0.a);
    var_1 = vec3<bool>(var_1.x, true, all(select(vec2<bool>(false, var_1.x), !select(var_1.yz, vec2<bool>(var_1.x, var_0.a), vec2<bool>(true, false)), var_0.a)));
    var_1 = vec3<bool>(all(select(var_1.yy, select(select(vec2<bool>(false, false), var_1.zx, false), var_1.xz, !var_1.x), all(vec3<bool>(var_0.a, true, var_0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-747f, var_0.d.x) + -1640f) + _wgslsmith_f_op_f32(abs(-400f))) >= _wgslsmith_f_op_f32(223f * _wgslsmith_f_op_f32(-var_0.c)), var_0.a);
    let var_2 = vec4<bool>(false, var_1.x, var_0.a, var_0.a);
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.e, ~countOneBits(u_input.a.x)), _wgslsmith_div_vec2_u32(u_input.a, u_input.a)), ~u_input.b, 41403u);
}

