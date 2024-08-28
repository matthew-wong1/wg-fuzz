struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: bool = false;

var<private> global2: array<f32, 23>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: f32) -> vec3<u32> {
    return vec3<u32>(arg_0.x, arg_1.b, 0u);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: u32, arg_3: f32) -> f32 {
    let var_0 = arg_3;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(1741f - 1000f), abs(~1i));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3 + var_0))), _wgslsmith_f_op_f32(f32(-1f) * -1661f));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = ~_wgslsmith_add_vec3_u32(func_2(vec2<u32>(~arg_2, ~58236u), Struct_2(arg_0.d, _wgslsmith_add_u32(arg_0.b, 53374u), firstTrailingBit(u_input.b), true), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2[_wgslsmith_index_u32(arg_1, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1147f + 642f) * _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(70724u, 23u)]))), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, arg_2, arg_1), vec3<u32>(_wgslsmith_mult_u32(4294967295u, arg_0.b), ~arg_1, ~0u)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~arg_0.b, 23u)] + _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.a, 23u)]))) * global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(313u, arg_1), 0u), 23u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(626f, 1000f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -585f) - 956f);
    var var_1 = arg_0.a;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(func_3(!(arg_0.a | !arg_0.d), vec2<f32>(global2[_wgslsmith_index_u32(~arg_1, 23u)], 1950f), _wgslsmith_mult_u32(arg_2, u_input.a), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_1, 23u)] - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(55201u, 23u)] * -660f)))), _wgslsmith_clamp_u32(arg_1, _wgslsmith_add_u32(32367u, ~(~arg_1)), u_input.a));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(abs(4294967295u), 23u)]))), _wgslsmith_mod_i32(arg_0.c, 1i));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(483f));
    let var_1 = Struct_2(!(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a, 23u)], 554f)) >= _wgslsmith_f_op_f32(step(-779f, var_0))), _wgslsmith_dot_vec2_u32(vec2<u32>(~7599u, _wgslsmith_sub_u32(u_input.a, ~u_input.a)), ~(~select(vec2<u32>(8547u, 2802u), vec2<u32>(24025u, 135819u), vec2<bool>(global0.x, global0.x)))), -2147483647i, all(select(select(select(vec3<bool>(true, false, global0.x), vec3<bool>(false, global0.x, true), global0.x), vec3<bool>(true, true, true), vec3<bool>(global0.x, global0.x, global0.x)), !vec3<bool>(global0.x, global0.x, false), any(select(vec2<bool>(false, false), vec2<bool>(global0.x, false), vec2<bool>(global0.x, true))))));
    global2 = array<f32, 23>();
    let var_2 = func_1(Struct_2(var_1.d, 31679u, -2147483647i, any(select(vec3<bool>(true, true, true), vec3<bool>(global0.x, var_1.d, var_1.a), global0.x)) && true), u_input.a, 0u);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(39676u, 23u)], -529f)) * vec2<f32>(-161f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.b, 23u)]), -233f))) * vec2<f32>(_wgslsmith_div_f32(-768f, _wgslsmith_f_op_f32(f32(-1f) * -760f)), -1000f));
    global2 = array<f32, 23>();
    global0 = select(select(!select(!vec2<bool>(var_1.d, false), !vec2<bool>(var_1.a, false), select(vec2<bool>(var_1.a, false), vec2<bool>(global0.x, true), vec2<bool>(false, global0.x))), !(!(!vec2<bool>(var_1.a, var_1.a))), !select(select(vec2<bool>(var_1.a, false), vec2<bool>(false, false), vec2<bool>(false, global0.x)), select(vec2<bool>(global0.x, true), vec2<bool>(false, var_1.d), vec2<bool>(var_1.d, true)), vec2<bool>(true, false))), select(!select(vec2<bool>(var_1.d, true), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), global0.x), any(vec3<bool>(true, global0.x, false))), vec2<bool>((var_1.d & false) || var_1.d, global0.x), 4294967295u == firstTrailingBit(~var_2.b)), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(-(-42211i >> (u_input.a % 32u))), -2147483647i, -14492i << (_wgslsmith_sub_u32(abs(var_2.b), 1u) % 32u), var_1.c));
}

