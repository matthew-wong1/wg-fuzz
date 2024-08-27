struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec2_i32(abs(firstTrailingBit(_wgslsmith_div_vec2_i32(u_input.a, ~u_input.b.yx))), u_input.b.yx);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1145f * 361f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0)));
    var_1 = true;
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    return vec4<bool>(var_0 < 62774i, true, all(select(vec4<bool>(true, true, arg_0 > 481f, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(false, all(vec3<bool>(true, false, true)), true, true))), any(vec3<bool>(true, true, true)) != (!(1i > var_0) || !all(vec3<bool>(false, false, true))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    global0 = array<Struct_2, 25>();
    return Struct_1(true);
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = arg_0.a.yx;
    global0 = array<Struct_2, 25>();
    var var_1 = vec2<u32>(87075u, _wgslsmith_dot_vec4_u32(arg_0.a, ~((arg_0.a | arg_0.a) ^ vec4<u32>(arg_0.a.x, var_0.x, 0u, 1u))));
    var_1 = arg_0.a.zx;
    var_1 = firstLeadingBit(vec2<u32>(4294967295u, select(114023u, 1u >> (_wgslsmith_sub_u32(60631u, var_0.x) % 32u), select(0u, var_1.x, false) < 1u)));
    return all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), all(vec4<bool>(true, true, true, true))), vec2<bool>(true, true), !func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), ~arg_0.a.ww).zw));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(76454u, 11037u), ~26996u, 1u << (0u % 32u)), ~(~vec3<u32>(10504u, 0u, 4294967295u))), 1u), 4294967295u), 25u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1861f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2863f)) - _wgslsmith_div_f32(arg_0.x, 1548f)) - 887f), arg_0.x, 572f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, _wgslsmith_div_f32(152f, var_0.b), _wgslsmith_f_op_f32(round(732f)), _wgslsmith_f_op_f32(763f - arg_0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b) - vec4<f32>(arg_0.x, arg_0.x, 1711f, var_0.b)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-185f, var_0.b, -915f, var_0.b)))))));
    let var_2 = var_0.a.wxx;
    let var_3 = global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(~var_0.a, ~(~(vec4<u32>(var_2.x, 43414u, 28992u, 1u) ^ vec4<u32>(var_0.a.x, 1u, 4294967295u, var_2.x))))), 25u)];
    global0 = array<Struct_2, 25>();
    return Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_0.x)), arg_0.x)), -1518f, -2271f) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x))), var_3.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-417f, -1000f))))), Struct_2((var_3.a & firstLeadingBit(vec4<u32>(var_0.a.x, 21321u, 59673u, 4294967295u))) >> (~var_0.a % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.b)) - -926f)), arg_2, false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.www) + vec3<f32>(var_3.b, var_0.b, -274f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_1.wyz), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-301f, 1625f, -1967f), vec3<f32>(-137f, -832f, var_3.b), !vec3<bool>(arg_2.a, arg_2.a, false)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 25>();
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1157f))), -2904f)), func_2(select(vec4<bool>(true, true, true, true), select(func_1(-780f, vec2<u32>(0u, 14032u)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), false), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), func_1(-1408f, vec2<u32>(66444u, 4294967295u))))), func_2(!vec4<bool>(func_3(Struct_2(vec4<u32>(92993u, 0u, 50698u, 16258u), 1751f)), true, true, true)));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-243f, var_0.b.b, var_0.a.x, var_0.b.b))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(var_0.e.x * 1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x)))), 2525f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1641f, -1186f, var_0.b.b, 521f) - vec4<f32>(754f, var_0.e.x, var_0.a.x, var_0.b.b)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.x, -267f, var_0.a.x, 1000f)))))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(476f, var_0.e.x)), 1268f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x * var_0.b.b)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.e.x, -728f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(210f, -1275f, var_0.c.a)))) * 1670f));
    let var_3 = firstTrailingBit(~firstTrailingBit(u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_clamp_u32(4294967295u, abs(var_0.b.a.x), _wgslsmith_clamp_u32(43157u, 6139u, var_0.b.a.x))) & var_0.b.a.x, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1435f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1832f, -1176f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_0.a.x) + _wgslsmith_f_op_f32(-847f + 1953f)), var_2.x))));
}

