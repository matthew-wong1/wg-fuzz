struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 30>;

var<private> global2: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    global0 = true;
    var var_0 = all(!select(select(!vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), true)), select(vec2<bool>(arg_0, true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), true), arg_0), arg_0));
    var var_1 = arg_1;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.a.x, 606f, -1526f))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.x, 277f, 166f), vec3<f32>(1000f, -1831f, arg_1.a.x))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.a.x * var_1.a.x))), -184f, arg_1.a.x, _wgslsmith_f_op_f32(arg_1.a.x * var_1.a.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(3256f, -250f, arg_1.a.x, arg_1.a.x)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-355f, arg_1.a.x, 1047f, -196f)))))), select(select(vec4<bool>(arg_0, arg_0, true, arg_0 || arg_0), vec4<bool>(arg_0, all(vec2<bool>(true, true)), !arg_0, true), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0, false, arg_0, false), select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(false, false, arg_0, false)))), select(vec4<bool>(!arg_0, var_1.a.x <= arg_1.a.x, true, arg_0), select(vec4<bool>(arg_0, true, false, false), vec4<bool>(true, false, false, arg_0), vec4<bool>(false, arg_0, false, arg_0)), vec4<bool>(true, true, true, true)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4184u, 0u), vec3<u32>(2612u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17738u, 30u)], 30u)], 30u)], 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], 30u)])), 30u)], 30u)] < 0u));
    global1 = array<u32, 30>();
    return !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1285f))) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a.x + arg_1.a.x)))));
}

fn func_2() -> f32 {
    let var_0 = 37591u;
    var var_1 = Struct_3(_wgslsmith_dot_vec4_u32(~(~(vec4<u32>(global1[_wgslsmith_index_u32(28928u, 30u)], 1u, global1[_wgslsmith_index_u32(var_0, 30u)], 0u) | vec4<u32>(global1[_wgslsmith_index_u32(0u, 30u)], var_0, 4294967295u, 1725u))), ~((vec4<u32>(global1[_wgslsmith_index_u32(83143u, 30u)], 24465u, 4294967295u, var_0) >> (vec4<u32>(var_0, global1[_wgslsmith_index_u32(94073u, 30u)], 58775u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39437u, 30u)], 30u)]) % vec4<u32>(32u))) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 30u)], 30u)], 30u)], var_0, 0u) % vec4<u32>(32u)))), select(_wgslsmith_div_vec2_u32(firstLeadingBit(abs(vec2<u32>(4294967295u, 59152u))), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(var_0, 75345u)), _wgslsmith_div_vec2_u32(vec2<u32>(18812u, global1[_wgslsmith_index_u32(var_0, 30u)]), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(90893u, 30u)])))), select(vec2<u32>(~var_0, firstTrailingBit(var_0)), max(vec2<u32>(1u, global1[_wgslsmith_index_u32(var_0, 30u)]) >> (vec2<u32>(var_0, 4294967295u) % vec2<u32>(32u)), vec2<u32>(4294967295u, 4294967295u)), select(func_3(false, Struct_1(vec2<f32>(-1851f, -290f), u_input.a)), true, true)), vec2<bool>(false, true != any(vec2<bool>(false, true)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1173f) * _wgslsmith_f_op_f32(f32(-1f) * -1357f)) + _wgslsmith_f_op_f32(f32(-1f) * -1375f)), _wgslsmith_f_op_f32(-326f + _wgslsmith_f_op_f32(f32(-1f) * -1276f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(948f + -1028f) * _wgslsmith_f_op_f32(f32(-1f) * -388f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1435f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1626f)), _wgslsmith_f_op_f32(f32(-1f) * -260f), true))), 329f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(200f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2601f - 1184f)))));
    let var_3 = ~vec2<i32>(_wgslsmith_clamp_i32(u_input.a, max(u_input.a, min(u_input.a, u_input.a)), _wgslsmith_div_i32(u_input.a | 42524i, -1i)), u_input.a);
    global2 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>) -> i32 {
    let var_0 = vec3<bool>(arg_1.x, arg_0.x, true);
    let var_1 = vec4<i32>(u_input.a >> (global1[_wgslsmith_index_u32(firstLeadingBit(reverseBits(18574u)), 30u)] % 32u), min(u_input.a | (i32(-1i) * -4718i), countOneBits(-46280i)), u_input.a << (abs(~firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 30u)])) % 32u), 30380i);
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(4294967295u, 30u)], vec2<u32>(1u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(17658u, max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)])), 30u)], 30u)], 30u)]));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(938f, -1660f) - vec2<f32>(513f, -391f))), vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-284f - 1540f)), 1u <= var_2.b.x)) + vec2<f32>(-538f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1290f), _wgslsmith_f_op_f32(796f - -1507f)))), var_1.x);
    var var_4 = var_3;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-545f, -163f))))) + _wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_f32(-807f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -371f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-578f, -956f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(607f, -1901f)) + _wgslsmith_f_op_f32(-830f - -1368f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(834f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1071f, -730f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-441f - _wgslsmith_f_op_f32(f32(-1f) * -1095f)))));
    let var_1 = vec3<bool>(false, true, !(!any(vec3<bool>(true, true, true))));
    global0 = all(vec2<bool>(all(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), var_1.x));
    global1 = array<u32, 30>();
    var var_2 = vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(5271u, 30u)], global1[_wgslsmith_index_u32(33093u, 30u)], 1u, 19561u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)], 30u)], 30u)], 0u, 67179u, 0u) << (vec4<u32>(4294967295u, 42102u, 0u, 1602u) % vec4<u32>(32u))), vec4<u32>(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 30u)], 30u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26464u, 30u)], 30u)], ~global1[_wgslsmith_index_u32(0u, 30u)], _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(90113u, 30u)], 30u)], 4294967295u))), 30u)] & (global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(9078u, 30u)] << (73920u % 32u)), 30u)] ^ _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 0u), _wgslsmith_mod_u32(9969u, global1[_wgslsmith_index_u32(10247u, 30u)]))), global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, 1u), 30u)]), 30u)], reverseBits(1u));
    var var_3 = u_input.a;
    var var_4 = var_2.wx;
    var var_5 = _wgslsmith_clamp_i32(~16760i, 1i ^ reverseBits(_wgslsmith_mult_i32(reverseBits(u_input.a), i32(-1i) * -7966i)), ~(~func_1(vec2<bool>(var_1.x, true), var_1.xz)));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(1u, 30u)] >> (38172u % 32u), ~_wgslsmith_div_vec2_i32(-(vec2<i32>(u_input.a, u_input.a) | vec2<i32>(2340i, -1i)), -vec2<i32>(7190i, 33232i) & vec2<i32>(0i, u_input.a)));
}

