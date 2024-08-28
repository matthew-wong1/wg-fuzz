struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

var<private> global1: array<f32, 30>;

var<private> global2: Struct_4;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4) -> u32 {
    var var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(308f + _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(61321u, 30u)]))) * 1000f) * -754f);
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(global2.b.x, 30u)], global1[_wgslsmith_index_u32(1922u, 30u)], 1364f)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-832f, global1[_wgslsmith_index_u32(u_input.b, 30u)], 1793f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(arg_1.b.x, 30u)], global1[_wgslsmith_index_u32(4513u, 30u)], global1[_wgslsmith_index_u32(25922u, 30u)]))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(391f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.b.x, 30u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.b.x, 30u)])) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(arg_1.b.x, 30u)], -472f, global1[_wgslsmith_index_u32(0u, 30u)]), vec3<f32>(2156f, -1607f, -129f))) - vec3<f32>(global1[_wgslsmith_index_u32(global2.b.x, 30u)], -963f, global1[_wgslsmith_index_u32(global2.b.x, 30u)]))))));
    let var_3 = Struct_2(arg_0.x == false, _wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, arg_1.b.x, u_input.b), vec3<u32>(arg_1.b.x, 1u, 76634u)), ~global2.b.x, global2.b.x, global2.b.x), ~(~countOneBits(vec4<u32>(463u, arg_1.b.x, 3697u, 15288u))), vec4<u32>(max(~119408u, arg_1.b.x >> (0u % 32u)), ~(~global2.b.x), _wgslsmith_dot_vec2_u32(firstTrailingBit(arg_1.b), ~u_input.a), u_input.b | ~50302u)), Struct_1((u_input.b >= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global2.b.x, global2.b.x, global2.b.x), vec4<u32>(global2.b.x, global2.b.x, global2.b.x, u_input.b))) & (261f != _wgslsmith_f_op_f32(-var_2.x))));
    let var_4 = all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_0.x, !arg_0.x, any(arg_0.zy)), vec4<bool>(true, arg_0.x, true, all(arg_0.yz))));
    return global2.b.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: i32) -> vec4<f32> {
    var var_0 = Struct_1((max(21780u, select(18312u, global2.b.x, true)) != u_input.b) & true);
    let var_1 = Struct_1(arg_2 == -_wgslsmith_mod_i32(1i, arg_1.x));
    global1 = array<f32, 30>();
    let var_2 = global0[_wgslsmith_index_u32(~abs(func_3(select(!vec3<bool>(var_0.a, var_1.a, var_1.a), vec3<bool>(var_0.a, var_1.a, false), select(vec3<bool>(true, false, var_1.a), vec3<bool>(true, true, false), var_0.a)), Struct_4(Struct_3(vec4<i32>(arg_1.x, arg_2, global2.a.a.x, 38018i)), vec2<u32>(1u, 4177u)))), 32u)];
    var var_3 = global2.a;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), arg_0.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.b.x, 30u)] + arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 30u)]) + -868f)));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = ~0u;
    var var_1 = max(-_wgslsmith_div_vec2_i32(u_input.c, select(abs(vec2<i32>(-2147483647i, u_input.c.x)), ~u_input.c, true)), ~(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, global2.a.a.x), _wgslsmith_sub_i32(arg_0, global2.a.a.x)) & global2.a.a.zw));
    var var_2 = -1495f;
    let var_3 = 29289i;
    var var_4 = _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(929f - global1[_wgslsmith_index_u32(1u, 30u)]), global1[_wgslsmith_index_u32(~59328u, 30u)], _wgslsmith_div_f32(1769f, 1650f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(964f, -1497f, 509f), vec3<f32>(-1711f, global1[_wgslsmith_index_u32(u_input.b, 30u)], 1969f))))), vec2<i32>(var_1.x, ~(-_wgslsmith_mod_i32(arg_0, var_3))), arg_0));
    return _wgslsmith_f_op_f32(round(var_4.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1[_wgslsmith_index_u32(137460u, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(global2.b.x, 30u)]))), vec3<f32>(global1[_wgslsmith_index_u32(54542u, 30u)], global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)]))) - vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -657f))), _wgslsmith_f_op_f32(func_1(-2986i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 30u)])))))));
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global1[_wgslsmith_index_u32(4294967295u, 30u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(countOneBits(~global2.b.x), 30u)]), _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-550f, -1059f, global1[_wgslsmith_index_u32(4294967295u, 30u)], -681f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(1u, 30u)], var_1.x, var_1.x, var_1.x), vec4<f32>(global1[_wgslsmith_index_u32(24509u, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)], 1000f, global1[_wgslsmith_index_u32(4294967295u, 30u)]), false)))))));
    var var_3 = Struct_2(!any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), _wgslsmith_clamp_vec4_u32(~select(min(vec4<u32>(4294967295u, 69891u, u_input.b, 46133u), vec4<u32>(global2.b.x, 54988u, global2.b.x, u_input.b)), vec4<u32>(u_input.b, global2.b.x, 0u, global2.b.x), vec4<bool>(false, false, true, true)), ~select(vec4<u32>(11754u, 39130u, global2.b.x, global2.b.x), vec4<u32>(63987u, u_input.b, u_input.a.x, global2.b.x) >> (vec4<u32>(0u, 39188u, 10394u, global2.b.x) % vec4<u32>(32u)), true), ~_wgslsmith_sub_vec4_u32(vec4<u32>(40411u, u_input.b, 4294967295u, u_input.a.x), vec4<u32>(59142u, 86358u, 4294967295u, 0u)) | countOneBits(vec4<u32>(358u, u_input.a.x, global2.b.x, 13066u))), Struct_1(true));
    var var_4 = !(!select(vec2<bool>(false || var_3.c.a, var_2.x == -1020f), !vec2<bool>(var_3.a, false), !vec2<bool>(false, var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 30u)])), -(global2.a.a.zzy >> (vec3<u32>(u_input.b, max(0u, u_input.a.x), firstLeadingBit(56668u)) % vec3<u32>(32u))));
}

