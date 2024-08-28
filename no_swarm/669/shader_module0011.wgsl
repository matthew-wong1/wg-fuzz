struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24>;

var<private> global1: array<vec4<i32>, 27>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_2.a);
    let var_1 = ~var_0.a.xz;
    global1 = array<vec4<i32>, 27>();
    let var_2 = _wgslsmith_f_op_f32(round(1327f));
    var var_3 = u_input.b.x;
    return var_1.x;
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-394f - -1951f))) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(400f, 584f)))))));
    var var_1 = Struct_4(arg_0.a);
    let var_2 = reverseBits(arg_0.a.a.zy);
    var var_3 = vec3<bool>(false, true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true))));
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -626f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1241f, _wgslsmith_f_op_f32(-1070f * -1969f))) + _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(max(750f, var_0)))))));
    return true;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(227f + arg_0.x), arg_0.x), 1000f, -1690f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.x, 567f)), _wgslsmith_f_op_f32(max(arg_0.x, -766f)), arg_0.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 1352f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1939f, 1696f, -888f))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -402f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, -1141f, 1114f), vec3<f32>(arg_0.x, arg_0.x, arg_0.x), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_0.x, arg_0.x) - vec3<f32>(arg_0.x, arg_0.x, arg_0.x))), true))), vec3<bool>(true, true, true)));
    global1 = array<vec4<i32>, 27>();
    global1 = array<vec4<i32>, 27>();
    var var_1 = max(vec4<u32>(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)), abs(countOneBits(~1252u)), _wgslsmith_clamp_u32(1u, 0u, func_2(~29582u, u_input.b.x, Struct_1(vec4<u32>(54277u, 1u, 4294967295u, 0u)))), 28559u), ~vec4<u32>(_wgslsmith_div_u32(~1u, firstTrailingBit(45912u)), ~1u, 52473u, select(9765u, 4294967295u, false) ^ _wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u)));
    global1 = array<vec4<i32>, 27>();
    return Struct_5(select(vec4<bool>(true, false, func_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 37332u, 42916u, 0u)), var_1.x)) | true, func_3(Struct_2(Struct_1(vec4<u32>(1u, 49766u, var_1.x, 4294967295u)), 1u))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false)), select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, false)), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false)), vec4<bool>(true, _wgslsmith_div_f32(arg_0.x, -491f) >= _wgslsmith_f_op_f32(f32(-1f) * -977f), false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(663f, 1392f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-291f, 2086f))))))), -20446i);
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(604f, -1756f)), -887f, !var_0.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(539f - -150f) * -1464f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * 1464f))));
    global1 = array<vec4<i32>, 27>();
    var var_2 = vec2<i32>(_wgslsmith_mod_i32(-u_input.a.x, -(i32(-1i) * -1i)), -11622i);
    let var_3 = 1553f;
    var var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -288f, 569f, var_1.x), vec4<f32>(var_3, var_3, var_1.x, var_1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-512f, 186f, var_1.x, 599f), vec4<f32>(var_3, -1273f, var_1.x, -483f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, -591f, 695f, 155f), vec4<f32>(-1223f, -2110f, -508f, var_1.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-541f - 2089f)), 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3, var_3))), var_1.x)), var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_4.x))))));
}

