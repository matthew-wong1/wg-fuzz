struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
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

var<private> global0: array<vec2<bool>, 22>;

var<private> global1: array<f32, 21>;

var<private> global2: array<f32, 30>;

var<private> global3: array<vec4<bool>, 3>;

var<private> global4: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = ~vec2<u32>(4294967295u, u_input.b.x);
    let var_1 = all(!global3[_wgslsmith_index_u32(~(~4294967295u), 3u)]);
    global2 = array<f32, 30>();
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1787f, 500f)))))) * _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 30u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(69852u, 21u)] - 304f), _wgslsmith_f_op_f32(f32(-1f) * -705f), true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(17751u, 21u)]) + 257f))));
    return (abs(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x)), max(vec4<u32>(75737u, 1u, 4294967295u, 0u), u_input.b))) ^ 0u) & 129430u;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    global0 = array<vec2<bool>, 22>();
    let var_1 = -(0i | u_input.a);
    let var_2 = arg_0;
    let var_3 = !(!(!vec3<bool>(any(vec3<bool>(false, false, arg_1.x)), false, !arg_1.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -380f))), global2[_wgslsmith_index_u32(u_input.b.x, 30u)]), _wgslsmith_f_op_f32(min(1864f, _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(7628u, u_input.b.x), 21u)], -882f)))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> StorageBuffer {
    global0 = array<vec2<bool>, 22>();
    global2 = array<f32, 30>();
    global3 = array<vec4<bool>, 3>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), vec2<bool>(arg_1, arg_1), Struct_1(1368f))), _wgslsmith_f_op_f32(797f - 1000f)) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~10164u, 21u)] * _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(19555u, 30u)])))), global2[_wgslsmith_index_u32(11545u, 30u)], _wgslsmith_f_op_f32(3086f * -788f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(79109u, 30u)])))))));
    let var_1 = ~(-12574i);
    return StorageBuffer(vec4<i32>(2147483647i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, 30275i, u_input.a) >> (u_input.b % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(25820i, -2147483647i, u_input.a, 4404i))), ~_wgslsmith_mod_i32(var_1, -2147483647i)) << (~vec4<u32>(_wgslsmith_dot_vec3_u32(arg_0.xwy, vec3<u32>(arg_0.x, 24016u, 1u)), u_input.b.x, ~u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 10287u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    global1 = array<f32, 21>();
    let var_1 = u_input.a;
    global4 = array<vec3<bool>, 31>();
    var var_2 = ~(~(-1i)) << (reverseBits(var_0) % 32u);
    let x = u_input.a;
    s_output = func_2(vec4<u32>(~_wgslsmith_add_u32(_wgslsmith_mod_u32(var_0, var_0), var_0), 47903u, ~4294967295u, func_1(Struct_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 21u)] + global2[_wgslsmith_index_u32(1u, 30u)])))), false);
}

