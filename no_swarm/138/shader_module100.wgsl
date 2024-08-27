struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7>;

var<private> global1: array<f32, 23>;

var<private> global2: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(117990u, 36748u), vec2<u32>(17753u, 83675u), vec2<u32>(20872u, 1u), vec2<u32>(43411u, 1u), vec2<u32>(93767u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(13493u, 20628u), vec2<u32>(60224u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(65314u, 24743u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: u32) -> bool {
    var var_0 = -1116f;
    var var_1 = 160f;
    global1 = array<f32, 23>();
    var_1 = 508f;
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_0, arg_0), 10u)];
    return arg_0 >= 29934u;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = false;
    global2 = array<vec2<u32>, 10>();
    global2 = array<vec2<u32>, 10>();
    global0 = array<vec2<bool>, 7>();
    var var_1 = arg_0;
    return vec3<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(377f)))) != global1[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(u_input.a)), 23u)], select(arg_2.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 23u)]) <= -348f, _wgslsmith_div_f32(969f, global1[_wgslsmith_index_u32(1u, 23u)]) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 558f)) - _wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]))), !all(!vec2<bool>(arg_2.x, false)));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(vec4<bool>(func_2(13201u, vec3<i32>(_wgslsmith_sub_i32(28863i, 0i), _wgslsmith_sub_i32(27481i, -1i), firstLeadingBit(1i)), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 23u)] >= 306f, global1[_wgslsmith_index_u32(130u, 23u)] > 378f, true, true), 1u), any(!select(global0[_wgslsmith_index_u32(u_input.a, 7u)], vec2<bool>(false, true), true)), true, true));
    global2 = array<vec2<u32>, 10>();
    let var_1 = select(select(select(!vec3<bool>(var_0.a.x, var_0.a.x, false), var_0.a.xzz, select(func_3(Struct_2(Struct_1(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x))), global0[_wgslsmith_index_u32(48789u, 7u)], var_0.a), vec3<bool>(true, true, true), var_0.a.xzw)), select(!select(vec3<bool>(var_0.a.x, var_0.a.x, true), vec3<bool>(true, false, var_0.a.x), var_0.a.xyy), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 23u)] > -1000f, true & var_0.a.x), var_0.a.zzy), _wgslsmith_sub_u32(u_input.a, ~31776u) != min(u_input.a, ~19537u)), vec3<bool>(!all(var_0.a.xzz), func_3(Struct_2(Struct_1(vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x))), var_0.a.zw, vec4<bool>(true & var_0.a.x, any(vec2<bool>(var_0.a.x, false)), any(var_0.a), var_0.a.x)).x, var_0.a.x && var_0.a.x), var_0.a.zzw);
    let var_2 = Struct_1(var_0.a);
    global0 = array<vec2<bool>, 7>();
    return Struct_2(var_2);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = Struct_1(vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, !(!any(arg_0.a.a.zyw)), !(!arg_1.a.x)));
    let var_1 = vec3<i32>(1i, ~2147483647i, -1i << ((50817u >> (countOneBits(u_input.a) % 32u)) % 32u));
    global0 = array<vec2<bool>, 7>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 23u)], 1000f), vec2<f32>(881f, 807f)))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(414f, 1312f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(u_input.a, 23u)]))), vec2<f32>(-1590f, -2584f))))));
    global1 = array<f32, 23>();
    return _wgslsmith_f_op_vec2_f32(-var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 23>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 23u)];
    global1 = array<f32, 23>();
    var var_1 = all(vec2<bool>(true, all(vec2<bool>(true, any(vec4<bool>(false, false, false, false))))));
    global2 = array<vec2<u32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_1(), Struct_1(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), false))))), ~(-1i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(4294967295u, 23u)])) + global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(u_input.a, 10u)], vec2<u32>(1u, u_input.a)), 23u)]) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(u_input.a, u_input.a, 48480u)), 23u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 23u)] - 1f), _wgslsmith_f_op_f32(floor(182f)), 1864f), ~vec4<i32>(1i, 1i, 1i, 1i));
}

