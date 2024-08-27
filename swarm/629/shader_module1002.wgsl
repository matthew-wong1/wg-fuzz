struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -495f;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: u32;

var<private> global3: array<Struct_2, 23>;

var<private> global4: array<vec3<f32>, 25>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    global0 = -1463f;
    var var_0 = arg_3;
    var var_1 = -265f;
    var var_2 = global3[_wgslsmith_index_u32(1u, 23u)];
    var var_3 = global3[_wgslsmith_index_u32(36723u, 23u)];
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(1057f, -582f, var_0.e)), -915f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1344f, 270f) * vec2<f32>(785f, -802f))))));
}

fn func_2() -> bool {
    let var_0 = global3[_wgslsmith_index_u32(abs(45164u), 23u)];
    let var_1 = false;
    global4 = array<vec3<f32>, 25>();
    let var_2 = 1i;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_3(abs(vec2<u32>(var_0.a.x, var_0.a.x)), var_0.a.ywy >> (var_0.a.xxz % vec3<u32>(32u)), -31272i, Struct_1(var_2, vec2<u32>(u_input.b, var_0.a.x), var_0.a, vec2<u32>(var_0.a.x, 31666u), global1.x)))))));
    return global1.x;
}

fn func_4(arg_0: bool, arg_1: bool) -> vec3<u32> {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 22948u) & vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(32575u, 4294967295u, u_input.b)), ~(~vec3<u32>(u_input.b, u_input.b, u_input.b)), firstTrailingBit(vec3<u32>(4294967295u, u_input.b, 18669u)) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 0u, 1u), vec3<u32>(u_input.b, u_input.b, u_input.b)) % vec3<u32>(32u)))), vec3<u32>(select(_wgslsmith_clamp_u32(~1u, reverseBits(u_input.b), 1u), 1u, !arg_1), ~4294967295u, 15339u ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(5680u, u_input.b), vec2<u32>(u_input.b, u_input.b)))), 23u)];
    var var_1 = Struct_2(var_0.a);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))) - -1608f), 235f, true)));
    global3 = array<Struct_2, 23>();
    global2 = var_0.a.x;
    return ~(~(vec3<u32>(~var_0.a.x, _wgslsmith_sub_u32(var_0.a.x, u_input.b), 23514u) >> (~var_1.a.wxy % vec3<u32>(32u))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> u32 {
    global3 = array<Struct_2, 23>();
    let var_0 = select(arg_1.a.zwx, func_4(arg_2, func_2()), vec3<bool>(false, global1.x, true));
    let var_1 = ~vec3<i32>(62435i, arg_3, ~arg_3);
    var var_2 = vec4<u32>(countOneBits(var_0.x), 53525u, _wgslsmith_mult_u32(0u, func_4(true && all(global1.zz), !(global1.x == arg_2)).x), 167222u);
    let var_3 = ~select(func_4(arg_0.x <= _wgslsmith_f_op_f32(f32(-1f) * -1313f), true), ~(~var_0), !select(!vec3<bool>(arg_2, true, true), select(vec3<bool>(true, global1.x, arg_2), vec3<bool>(arg_2, global1.x, arg_2), vec3<bool>(false, true, global1.x)), !vec3<bool>(global1.x, arg_2, true)));
    return 18094u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-314f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -622f) * 1894f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1376f), -595f), -578f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-309f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1218f, -895f) - vec2<f32>(1160f, -258f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1853f), _wgslsmith_f_op_f32(109f * -865f)))));
    let var_1 = Struct_1(_wgslsmith_sub_i32(1i, 0i), ~_wgslsmith_clamp_vec2_u32(~max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(u_input.b, ~0u), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(692u, 1u)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(47494u, ~u_input.b, ~35992u, func_1(vec4<f32>(var_0.x, 811f, var_0.x, -657f), global3[_wgslsmith_index_u32(0u, 23u)], global1.x, -2147483647i)) >> (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), max(vec4<u32>(4294967295u, u_input.b, 27756u, 54393u), vec4<u32>(15234u, 1u, u_input.b, u_input.b))) % vec4<u32>(32u)), vec4<u32>(3438u, 1u, 4294967295u, _wgslsmith_add_u32(abs(u_input.b), u_input.b)), vec4<u32>(~_wgslsmith_div_u32(0u, 26193u), 45885u, u_input.b, ~(~7556u))), firstLeadingBit(~vec2<u32>(47329u, u_input.b) >> (_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(u_input.b, u_input.b)), vec2<u32>(0u, 42107u)) % vec2<u32>(32u))), global1.x);
    global1 = !(!vec3<bool>(all(select(vec2<bool>(false, global1.x), vec2<bool>(true, true), global1.yy)), any(select(vec3<bool>(false, global1.x, false), vec3<bool>(global1.x, false, false), false)), global1.x));
    let var_2 = abs(-vec3<i32>(26508i, var_1.a, -36435i));
    var var_3 = vec4<bool>(select(global1.x, all(!select(global1.xx, vec2<bool>(global1.x, global1.x), true)), false), select(true, any(vec4<bool>(var_1.a > 7170i, all(vec4<bool>(true, false, false, false)), all(vec4<bool>(global1.x, true, true, global1.x)), any(vec4<bool>(global1.x, false, true, var_1.e)))), var_1.e), var_1.e, true);
    var var_4 = _wgslsmith_f_op_f32(1213f - var_0.x);
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-3006f, var_0.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -360f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, 285f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(566f, 1069f), vec2<f32>(190f, var_0.x), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1495f, var_0.x) - vec2<f32>(609f, var_0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(-(i32(-1i) * -24437i)), 1i, -1i, var_2.x), vec3<i32>(~abs(var_2.x) << (var_1.c.x % 32u), -var_1.a, -(~select(-1i, var_2.x, var_1.e))), func_4(true, any(var_3.xyx)).x);
}

