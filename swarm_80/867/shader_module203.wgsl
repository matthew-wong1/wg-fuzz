struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(0u, 1u), vec2<u32>(11080u, 1581u), vec2<u32>(4294967295u, 62069u), vec2<u32>(10548u, 7814u), vec2<u32>(1u, 51376u), vec2<u32>(57752u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(34u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(3545u, 50029u), vec2<u32>(2664u, 96346u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 35637u), vec2<u32>(83749u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(21162u, 10838u), vec2<u32>(4294967295u, 0u));

var<private> global1: array<u32, 14> = array<u32, 14>(3753u, 0u, 51603u, 0u, 77063u, 1u, 22466u, 4294967295u, 13378u, 32800u, 0u, 1u, 4294967295u, 0u);

var<private> global2: bool;

var<private> global3: i32 = -38132i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: bool) -> vec3<f32> {
    let var_0 = ~arg_1.x;
    global0 = array<vec2<u32>, 18>();
    global1 = array<u32, 14>();
    var var_1 = firstTrailingBit(var_0);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1122f, -1000f, arg_0) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(790f, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(513f, -1000f, arg_0) * vec3<f32>(arg_0, arg_0, 1272f)) - vec3<f32>(arg_0, -607f, arg_0))))), arg_0);
    return var_2.a;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(890f)))))));
    global0 = array<vec2<u32>, 18>();
    let var_1 = countOneBits(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, arg_1), ~20653i), 2147483647i)) << (global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(91360u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(52453u, 14u)], 19921u) & vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], global1[_wgslsmith_index_u32(37518u, 14u)]), vec3<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7702u, 14u)], 14u)])), 14u)]), 14u)], 18u)] % vec2<u32>(32u));
    var var_2 = i32(-1i) * -2147483647i;
    global0 = array<vec2<u32>, 18>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(799f, var_0, var_0))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-197f, -980f, var_0)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-814f, var_0, -742f)), _wgslsmith_f_op_vec3_f32(func_2(-1673f, min(vec4<i32>(var_1.x, arg_1, var_1.x, -1i), vec4<i32>(-1i, 68960i, 2147483647i, u_input.c)), !arg_2.x)), any(vec2<bool>(arg_2.x, true)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, -1927f, arg_0)))))));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = -275f;
    var var_1 = select(select(vec4<bool>(true, arg_0, true, all(vec2<bool>(true, true))), select(select(vec4<bool>(arg_0, true, true, true), select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(true, false, arg_0, true), arg_0), select(vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(true, true, arg_0, false), vec4<bool>(false, false, false, arg_0))), select(!vec4<bool>(arg_0, false, true, true), !vec4<bool>(arg_0, arg_0, arg_0, false), select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0))), select(!vec4<bool>(false, true, arg_0, arg_0), !vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false))), true & any(vec3<bool>(arg_0, arg_0, true))), vec4<bool>(true, true, all(!vec2<bool>(arg_0, false)), !arg_0), !any(vec3<bool>(arg_0, any(vec4<bool>(false, arg_0, arg_0, false)), !arg_0)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_2.a, vec3<f32>(_wgslsmith_div_f32(arg_3, arg_2.a.x), -1454f, -648f), var_1.xyx))));
    var_0 = _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-343f, _wgslsmith_f_op_f32(f32(-1f) * -1515f))))));
    var var_3 = arg_2;
    return ~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(190u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 15510u, 4294967295u))), 14u)], 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = array<vec2<u32>, 18>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(1000f, u_input.a, vec2<bool>(true, true))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-745f, _wgslsmith_f_op_f32(f32(-1f) * -1155f), 1297f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -1346f, -639f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1146f, -1460f, -713f))), vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(-742f - -780f));
    var var_2 = vec3<i32>(-18666i, _wgslsmith_clamp_i32(u_input.b, 47783i, u_input.c), _wgslsmith_add_i32(_wgslsmith_sub_i32(-1861i, u_input.b) ^ _wgslsmith_div_i32(abs(-2147483647i), -u_input.a), 12449i));
    var var_3 = var_1;
    global3 = -(~var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_3.a), firstTrailingBit(_wgslsmith_add_vec3_u32(select(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42676u, 14u)], 14u)], 14861u, global1[_wgslsmith_index_u32(4294967295u, 14u)]), vec3<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)]), true) | _wgslsmith_sub_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 14u)], 14u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 14u)], 14u)]), vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(448u, 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 0u)), (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], 14u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7263u, 14u)], 14u)], 14u)]) << (vec3<u32>(31091u, 0u, 56716u) % vec3<u32>(32u))) << (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], 0u, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_div_u32(29444u, func_3(u_input.b >= 0i, ~(-vec4<i32>(var_2.x, var_2.x, 54831i, u_input.b)), var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(787f - var_3.a.x), -1289f))));
}

