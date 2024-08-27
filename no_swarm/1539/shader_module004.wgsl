struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<bool> {
    var var_0 = u_input.a;
    var var_1 = select(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, any(vec4<bool>(false, false, true, true)))), !vec3<bool>(any(global0[_wgslsmith_index_u32(1u, 6u)]), false, false), select(vec3<bool>(false, true, true), vec3<bool>((u_input.b.x | 1i) != ~u_input.b.x, true, true), vec3<bool>(all(vec2<bool>(true, false)), !all(global0[_wgslsmith_index_u32(4294967295u, 6u)]), any(select(vec4<bool>(true, true, true, false), global0[_wgslsmith_index_u32(u_input.a, 6u)], false)))));
    let var_2 = all(!select(select(select(var_1.xx, var_1.yx, false), select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_1.x), var_1.zy), true), !var_1.zy, !vec2<bool>(var_1.x, false)));
    let var_3 = Struct_1(vec2<bool>(any(vec3<bool>(all(vec3<bool>(var_1.x, false, false)), true, any(var_1.yz))), all(!(!vec2<bool>(var_2, var_2)))));
    var var_4 = Struct_1(select(var_3.a, vec2<bool>(true, true), select(firstTrailingBit(1u), ~5126u, true) >= ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 27570u), vec2<u32>(16586u, u_input.a))));
    return vec4<bool>(false, var_2, all(vec3<bool>(var_1.x, false, true != any(vec3<bool>(var_1.x, var_3.a.x, var_2)))), !any(select(vec2<bool>(var_1.x, true), var_4.a, select(vec2<bool>(var_1.x, true), var_4.a, true))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: bool) -> bool {
    global0 = array<vec4<bool>, 6>();
    let var_0 = Struct_2(true, Struct_1(vec2<bool>(arg_2, arg_2)), ~(_wgslsmith_sub_u32(1u, 0u) << (~u_input.a % 32u)) ^ ~22969u);
    var var_1 = any(func_3());
    global0 = array<vec4<bool>, 6>();
    let var_2 = Struct_2(arg_2, Struct_1(var_0.b.a), _wgslsmith_mod_u32(var_0.c, 47313u));
    return select(!(false && (-u_input.b.x <= -25268i)), var_0.a, var_2.b.a.x);
}

fn func_1() -> f32 {
    var var_0 = Struct_1(!select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), true), vec2<bool>(func_2(951f, 5041i, false), true), any(vec2<bool>(true, true))));
    let var_1 = Struct_1(vec2<bool>(false, var_0.a.x));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1084f + -947f)))))));
    var var_3 = (~vec2<u32>(1u, 1u) | select(abs(vec2<u32>(93749u, 36080u) | vec2<u32>(u_input.a, 17655u)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 0u)), vec2<u32>(u_input.a, u_input.a)), any(var_0.a))) & vec2<u32>(abs(0u), ~(~4294967295u));
    let var_4 = Struct_2(true, Struct_1(!(!vec2<bool>(false, var_1.a.x))), u_input.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -398f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(597f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -891f), _wgslsmith_f_op_f32(max(-567f, _wgslsmith_f_op_f32(139f + -217f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(!global0[_wgslsmith_index_u32(4294967295u, 6u)], vec4<bool>(false, true, true, any(vec2<bool>(true, true))), all(!select(vec2<bool>(true, true), vec2<bool>(false, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~select(firstTrailingBit(vec2<u32>(u_input.a, 7736u)), vec2<u32>(0u, 25795u), true)), ~vec4<i32>(u_input.b.x, _wgslsmith_mod_i32(-1i, 17758i), _wgslsmith_dot_vec2_i32(u_input.b.yx | u_input.b.zy, _wgslsmith_div_vec2_i32(u_input.b.yx, u_input.b.zx)), u_input.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(623f - -209f) + _wgslsmith_f_op_f32(1305f * -1488f)), _wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(639f, -1423f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-782f, 785f)))));
}

