struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 18>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-576f, 197f))));
    var var_1 = Struct_1(!(!all(!vec4<bool>(true, arg_2.x, false, true))));
    var var_2 = _wgslsmith_f_op_f32(-170f + _wgslsmith_f_op_f32(max(-1000f, -1115f)));
    global0 = u_input.a.xz;
    let var_3 = true;
    return min(57290u, ~global0.x);
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_1(!(!select(true, true, select(false, false, false))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-981f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(156f, -699f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(187f * -1554f))))));
    global1 = array<Struct_1, 18>();
    var var_2 = 17737u;
    var var_3 = global1[_wgslsmith_index_u32(abs(global0.x), 18u)];
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(438f + -717f) * _wgslsmith_f_op_f32(f32(-1f) * -1829f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(376f, -745f))))))), _wgslsmith_f_op_f32(-301f * _wgslsmith_f_op_f32(ceil(-1164f))), _wgslsmith_f_op_f32(step(-507f, 500f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-441f)))))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()));
    let var_1 = arg_2;
    let var_2 = Struct_1(var_1.a);
    var var_3 = select(select(select(!(!vec3<bool>(arg_2.a, true, false)), select(!vec3<bool>(false, true, arg_2.a), select(vec3<bool>(arg_2.a, arg_2.a, arg_2.a), vec3<bool>(var_2.a, false, var_2.a), var_1.a), select(vec3<bool>(arg_2.a, var_1.a, true), vec3<bool>(arg_2.a, true, arg_2.a), var_2.a)), select(vec3<bool>(arg_2.a, false, false), select(vec3<bool>(var_1.a, arg_2.a, var_2.a), vec3<bool>(arg_2.a, arg_2.a, var_2.a), vec3<bool>(var_1.a, arg_2.a, false)), vec3<bool>(arg_2.a, true, false))), vec3<bool>(!var_1.a, false, all(select(vec4<bool>(false, arg_2.a, arg_2.a, var_1.a), vec4<bool>(true, arg_2.a, false, var_2.a), vec4<bool>(arg_2.a, true, var_1.a, true)))), vec3<bool>(_wgslsmith_f_op_f32(-arg_1) != arg_1, true, !all(vec4<bool>(true, arg_2.a, var_1.a, arg_2.a)))), !select(vec3<bool>(false, var_1.a, var_2.a), vec3<bool>(true, true, true), true), select(vec3<bool>(!(u_input.a.x >= 5436u), all(!vec4<bool>(true, var_2.a, arg_2.a, false)), all(select(vec2<bool>(false, var_1.a), vec2<bool>(var_1.a, false), vec2<bool>(arg_2.a, false)))), !select(vec3<bool>(var_1.a, var_2.a, true), select(vec3<bool>(false, true, false), vec3<bool>(false, var_2.a, false), vec3<bool>(true, var_2.a, var_1.a)), !vec3<bool>(true, var_1.a, true)), true));
    let var_4 = arg_2;
    return max(arg_0, -_wgslsmith_mod_i32(~firstLeadingBit(-25587i), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 18>();
    var var_0 = -_wgslsmith_mod_i32(-(firstLeadingBit(u_input.b) << (0u % 32u)), -firstLeadingBit(abs(u_input.b)));
    var_0 = _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-12454i, -2147483647i, 17899i), vec3<i32>(u_input.b, -2147483647i, u_input.b)), u_input.b), _wgslsmith_sub_i32(_wgslsmith_mod_i32(37114i, 2147483647i), -u_input.b) >> (11693u % 32u)), u_input.b);
    var_0 = ~u_input.b;
    let var_1 = true;
    global0 = ~_wgslsmith_add_vec2_u32(u_input.a.xz, u_input.a.yz);
    global0 = ~(~_wgslsmith_add_vec2_u32(~(~u_input.a.xx), vec2<u32>(global0.x, ~86857u)));
    let x = u_input.a;
    s_output = StorageBuffer(~((abs(4294967295u) & min(global0.x, global0.x)) >> (func_1(vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(1u, 18u)], !vec3<bool>(var_1, true, true)) % 32u)), reverseBits(u_input.a.x), ~abs(countOneBits(~4294967295u)), -1839i, ~func_2(u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -1622f), global1[_wgslsmith_index_u32(global0.x, 18u)]));
}

