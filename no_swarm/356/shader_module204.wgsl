struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: Struct_4,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(58560u, 4294967295u, 32215u);

var<private> global1: vec3<u32>;

var<private> global2: array<vec2<bool>, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_2) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, 1000f))), _wgslsmith_f_op_f32(round(1000f))), -1245f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-565f, -133f), _wgslsmith_f_op_f32(trunc(-975f))), -373f) * 1f));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> i32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-15659i, Struct_3(arg_0.wxw, u_input.b.x, true, Struct_2(Struct_1(global0.x, arg_0.x, u_input.b.x, 2147483647i), global1.x), -1i), vec4<i32>(-1i, u_input.b.x, 19098i, u_input.b.x) << (u_input.a % vec4<u32>(32u)), Struct_2(Struct_1(4294967295u, arg_0.x, 0i, u_input.b.x), u_input.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-883f - _wgslsmith_f_op_f32(floor(arg_1))))), 635f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1018i, Struct_3(vec3<i32>(u_input.b.x, -23899i, 0i), -2147483647i, false, Struct_2(Struct_1(u_input.a.x, u_input.b.x, arg_0.x, 0i), 4294967295u), 7618i), arg_0, Struct_2(Struct_1(0u, u_input.b.x, 0i, -2147483647i), 73152u)))) - _wgslsmith_div_f32(-951f, _wgslsmith_f_op_f32(200f - -750f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(-arg_1), false))), _wgslsmith_f_op_f32(-arg_1), 120f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_1.wyw);
    var var_3 = Struct_1(u_input.a.x, u_input.b.x, 0i, arg_0.x);
    var var_4 = u_input.a.x;
    return arg_0.x;
}

fn func_1(arg_0: f32) -> vec4<f32> {
    var var_0 = 4294967295u;
    var var_1 = _wgslsmith_mod_i32(min(func_2(max(vec4<i32>(u_input.b.x, -7085i, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, -16489i, 51922i, 2147483647i)), _wgslsmith_f_op_f32(arg_0 * 360f)), u_input.b.x) >> (4294967295u % 32u), ~u_input.b.x);
    var var_2 = u_input.a.x;
    let var_3 = u_input.a.wwx;
    var_1 = -6238i;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(654f, arg_0, -1095f, 358f), vec4<f32>(448f, -316f, -766f, arg_0))), vec4<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), arg_0, arg_0, _wgslsmith_f_op_f32(select(1494f, arg_0, true))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 1215f))))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(-697f)), 411f, arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1067f - -1049f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(-1508f)));
    global2 = array<vec2<bool>, 13>();
    global1 = ~min(countOneBits(u_input.a.xzz), u_input.a.wwz);
    global2 = array<vec2<bool>, 13>();
    var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(min(var_1.x, 404f)), 1f, _wgslsmith_f_op_f32(ceil(-1663f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(459f, var_1.x, var_1.x, 1192f) - vec4<f32>(var_1.x, 1398f, var_1.x, var_1.x))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -1000f, 640f, var_1.x), vec4<f32>(1529f, var_1.x, 729f, -1000f))))))));
    let var_2 = select(u_input.b.x, ~(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2691i, u_input.b.x) & u_input.b, _wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(2147483647i, -2147483647i, u_input.b.x), vec3<i32>(-9697i, u_input.b.x, u_input.b.x))) | abs(~u_input.b.x)), !(!(true | (var_1.x < var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_1.x, -476f, -107f), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1704f * var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.a.yww, vec3<u32>(u_input.a.x, global0.x, u_input.a.x)), ~_wgslsmith_mod_u32(92239u, 44355u)), vec2<u32>(_wgslsmith_mult_u32(238u & global0.x, 4294967295u >> (u_input.a.x % 32u)), _wgslsmith_mult_u32(firstLeadingBit(global1.x), 1u))), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(~min(global0.x, 4294967295u), select(4294967295u, ~23803u, select(false, true, true)), 1u, 4294967295u)));
}

