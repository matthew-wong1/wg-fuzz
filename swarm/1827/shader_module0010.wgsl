struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
    c: Struct_3,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: u32) -> bool {
    let var_0 = max(max(firstTrailingBit(u_input.e.x), ~67361u), min(~u_input.e.x, ~select(1u, 1322u, false)) ^ reverseBits(u_input.e.x));
    global0 = ~(~firstTrailingBit(abs(0u))) == abs(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(abs(u_input.d), ~vec2<u32>(arg_3, var_0)), u_input.e.xx | _wgslsmith_mod_vec2_u32(vec2<u32>(var_0, 4294967295u), u_input.d)));
    global0 = true;
    let var_1 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(all(vec4<bool>(false, true, false, true)), false, true)), vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), false)), any(vec3<bool>(true, false, true)) && true, any(vec3<bool>(false, true, true))), vec3<bool>(true, !(arg_2 > arg_2), true)), !vec3<bool>(true, true, any(vec3<bool>(true, true, true))), select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))), any(vec3<bool>(true, false, false)) || true));
    let var_2 = vec3<f32>(arg_2, 1386f, _wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1318f, _wgslsmith_f_op_f32(arg_0 * -798f))))));
    return !all(select(select(vec3<bool>(var_1.x, var_1.x, true), var_1, !var_1), vec3<bool>(true, true, true), _wgslsmith_mult_u32(40414u, 0u) != _wgslsmith_mult_u32(var_0, arg_3)));
}

fn func_2(arg_0: vec3<f32>) -> bool {
    var var_0 = 2147483647i;
    let var_1 = arg_0.x;
    var var_2 = 1u;
    var_0 = 19357i;
    return true | func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 1562f) - var_1)), -37158i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-789f))), (u_input.d.x << (_wgslsmith_clamp_u32(u_input.e.x, u_input.b, u_input.d.x) % 32u)) >> (~u_input.d.x % 32u));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a.x, 61482i), -min(u_input.a.wy, ~u_input.a.ww)), vec2<i32>(-1i, u_input.c));
    let var_1 = firstLeadingBit(countOneBits(vec4<i32>(u_input.a.x, -1i, (11803i << (u_input.b % 32u)) << (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u), u_input.a.x)));
    var_0 = ~select(u_input.c, -42679i, func_2(vec3<f32>(_wgslsmith_f_op_f32(1243f - -1000f), _wgslsmith_f_op_f32(min(405f, -1000f)), 279f)));
    var_0 = var_1.x;
    global0 = !(!(min(~0i, firstLeadingBit(-20423i)) == -abs(u_input.a.x)));
    return all(select(select(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), false), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.zw;
    global0 = any(vec4<bool>(all(vec4<bool>(false, true, func_1(), false)), all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true)), ~_wgslsmith_sub_u32(66284u, 0u) != ~(~u_input.d.x), 1f <= _wgslsmith_f_op_f32(ceil(-1097f))));
    let var_1 = Struct_1(vec4<i32>(~(-(~(-31638i))), abs(~45550i & var_0.x), -_wgslsmith_mod_i32(1i, -5488i), 0i), select(abs(min(vec3<u32>(u_input.d.x, 19270u, u_input.d.x), ~vec3<u32>(u_input.b, 48846u, 0u))), u_input.e, vec3<bool>(true, _wgslsmith_mod_u32(57610u, u_input.b) != max(u_input.d.x, u_input.e.x), all(vec4<bool>(true, true, true, true)))));
    global0 = any(select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), false), false), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), any(vec2<bool>(false, false))), vec2<bool>(func_1(), false), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, false), vec2<bool>(false, false))), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))));
    global0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1551f, 1581f, 152f, -2376f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-116f, -621f, -1348f, 877f), vec4<f32>(-1280f, -659f, -718f, -1946f), vec4<bool>(false, true, false, true))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1249f, 460f, -585f, 1303f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(747f, 350f, -420f, -684f))))), _wgslsmith_f_op_f32(sign(285f)) != _wgslsmith_f_op_f32(sign(-281f)))), -5978i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(425f, 729f) * vec2<f32>(568f, 1941f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -842f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1124f), _wgslsmith_f_op_f32(ceil(2211f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1682f + 1000f)))));
}

