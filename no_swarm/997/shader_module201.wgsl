struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 14> = array<vec4<bool>, 14>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true));

var<private> global1: u32 = 16870u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1) -> vec2<i32> {
    global1 = 21906u;
    var var_0 = min(~arg_0.b.a, vec2<u32>(arg_0.b.a.x << (16252u % 32u), 0u << (arg_2.d % 32u)) | vec2<u32>(~(~arg_2.d), ~(arg_2.d << (19052u % 32u))));
    var_0 = vec2<u32>(arg_2.d, _wgslsmith_mod_u32(var_0.x, ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_0.a.zzx, vec3<u32>(arg_2.d, arg_2.d, arg_2.d)), _wgslsmith_mult_u32(arg_0.b.a.x, 20230u))));
    global0 = array<vec4<bool>, 14>();
    let var_1 = _wgslsmith_f_op_f32(round(arg_2.b));
    return firstTrailingBit(-(~u_input.a.ww));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> vec4<u32> {
    global1 = arg_0.x;
    let var_0 = u_input.a.x | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), min(func_3(Struct_3(arg_0, Struct_2(arg_0.wy)), arg_1, Struct_1(u_input.a.x, 501f, vec2<bool>(false, arg_1), 4294967295u, vec2<i32>(46308i, 35030i))), u_input.a.yz));
    let var_1 = 13808i;
    global0 = array<vec4<bool>, 14>();
    let var_2 = Struct_3(~vec4<u32>(max(4294967295u, reverseBits(1u)), arg_0.x, ~(~27051u), ~_wgslsmith_dot_vec3_u32(arg_0.wwx, arg_0.wxx)), Struct_2(arg_0.ww << (~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 15403u), arg_0.xx) % vec2<u32>(32u))));
    return firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(var_2.a.x, 4294967295u), max(~arg_0.x, _wgslsmith_dot_vec4_u32(~arg_0, abs(var_2.a))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, var_2.b.a.x) ^ ~4294967295u, _wgslsmith_sub_u32(countOneBits(1u), min(var_2.b.a.x, arg_0.x))), firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_0.yyw, var_2.a.xyw) << (firstLeadingBit(arg_0.x) % 32u))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec3<bool>) -> vec4<bool> {
    let var_0 = select(min(_wgslsmith_div_vec3_u32(arg_1.xyy, ~func_2(arg_1, false).wzz), arg_1.xxy), vec3<u32>(_wgslsmith_sub_u32(firstLeadingBit(~arg_1.x), arg_1.x >> (1225u % 32u)), arg_1.x, arg_1.x), false);
    var var_1 = select(u_input.a, _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-(u_input.a << (vec4<u32>(1u, arg_1.x, var_0.x, arg_1.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(-23832i, u_input.a.x, arg_0.x, 3183i), vec4<i32>(12533i, u_input.a.x, arg_0.x, 0i)) << (abs(arg_1) % vec4<u32>(32u))), abs(~vec4<i32>(0i, -2468i, u_input.a.x, -2147483647i) << (~vec4<u32>(var_0.x, var_0.x, 4294967295u, 1u) % vec4<u32>(32u)))), vec4<bool>(false, true, any(vec2<bool>(arg_2.x, false)), var_0.x == arg_1.x));
    global1 = _wgslsmith_div_u32(min(max(firstTrailingBit(43285u), _wgslsmith_sub_u32(arg_1.x | var_0.x, var_0.x)), 4294967295u), ~abs(~(arg_1.x ^ 13774u)));
    var var_2 = Struct_2(~vec2<u32>(~_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(8476u, var_0.x, 0u, 100187u)), ~(arg_1.x << (9578u % 32u))));
    var var_3 = Struct_2(var_2.a);
    return vec4<bool>(arg_2.x, false, !any(vec2<bool>(true, true)), !arg_2.x);
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-499f))))));
    let var_1 = select(vec4<bool>(!(0u != arg_0.a.x) || (319f <= _wgslsmith_f_op_f32(-1216f * var_0.x)), any(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), true, select(true, true, any(vec2<bool>(true, false)) & (0u >= arg_0.a.x))), func_4(abs(vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(1i, 45169i, -3010i), -6509i)), ~func_2(vec4<u32>(10073u, arg_0.a.x, arg_0.a.x, arg_0.a.x), true), vec3<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(true, false)) | any(vec3<bool>(true, false, false)), -1i > -u_input.a.x)), vec4<bool>(!((arg_0.a.x | 23975u) <= ~1u), any(vec3<bool>(true, true, true)), true, true));
    global1 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(1u, arg_0.a.x), func_2(_wgslsmith_add_vec4_u32(vec4<u32>(14616u, arg_0.a.x, 44012u, 6872u), vec4<u32>(4294967295u, 22669u, arg_0.a.x, arg_0.a.x)), true).x), arg_0.a.x), 56931u);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(select(-1685f, _wgslsmith_f_op_f32(f32(-1f) * -187f), var_1.x))), -1909f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -1350f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, -312f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-929f, var_0.x, var_0.x, 987f) + vec4<f32>(var_0.x, 114f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -673f, 1285f, var_0.x) - vec4<f32>(var_0.x, var_0.x, var_0.x, -126f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -958f), -1281f, var_0.x, -493f)));
    var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(-1256f)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(round(-273f))), -1762f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_2.x, 421f), var_0.x, -1000f, _wgslsmith_f_op_f32(var_2.x + var_0.x)))), var_2.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(978f)) + _wgslsmith_f_op_f32(-var_0.x)))));
    return select(arg_0.a.x, 1u, false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = reverseBits(~(1u << (func_1(Struct_2(vec2<u32>(9014u, 61559u))) % 32u))) << (func_1(Struct_2(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 26571u)), ~vec2<u32>(4294967295u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(9158u, 4294967295u))))) % 32u);
    let var_0 = _wgslsmith_sub_i32(~u_input.a.x, -2147483647i);
    let var_1 = Struct_3(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(43811u, 1u), 75077u), 0u, abs(~1u), 1u) << (abs(vec4<u32>(~13847u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 2331u)), ~29218u, 1u)) % vec4<u32>(32u)), Struct_2(vec2<u32>(~_wgslsmith_div_u32(0u, 4294967295u), 1u)));
    global1 = countOneBits(303u);
    let var_2 = countOneBits(select(_wgslsmith_mult_vec3_u32(countOneBits(~var_1.a.wzx), ~firstLeadingBit(vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x))), _wgslsmith_div_vec3_u32(var_1.a.zxw, ~vec3<u32>(var_1.b.a.x, var_1.b.a.x, 37736u)) >> (_wgslsmith_mod_vec3_u32(abs(var_1.a.zzy), ~vec3<u32>(var_1.a.x, var_1.b.a.x, 39712u)) % vec3<u32>(32u)), !all(vec3<bool>(true, true, true))));
    let var_3 = vec3<u32>(func_1(var_1.b), var_1.b.a.x, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-759f, 905f, 733f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-272f, 414f, 1202f), vec3<f32>(488f, 102f, 548f), vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(301f + -297f), _wgslsmith_f_op_f32(min(1669f, -642f)), -587f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-931f)) * -640f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -624f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-837f, -2193f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-794f, -637f, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(357f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1462f - 446f), _wgslsmith_f_op_f32(abs(932f))))), -abs(_wgslsmith_div_i32(firstTrailingBit(248i), u_input.a.x)), var_1.a);
}

