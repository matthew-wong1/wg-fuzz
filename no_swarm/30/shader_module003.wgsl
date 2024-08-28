struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(false, false, false);

var<private> global1: u32 = 0u;

var<private> global2: array<Struct_1, 11>;

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(40297u, 46271u, 0i, vec3<bool>(true, true, false)), Struct_1(54395u, 49146u, -1i, vec3<bool>(true, false, true)), Struct_1(0u, 1u, i32(-2147483648), vec3<bool>(false, true, true)), Struct_1(4294967295u, 8623u, -27512i, vec3<bool>(false, true, false)));

var<private> global4: array<Struct_1, 5>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    let var_0 = global2[_wgslsmith_index_u32(countOneBits(1542u), 11u)];
    let var_1 = false;
    global2 = array<Struct_1, 11>();
    return !select(arg_1.d, vec3<bool>(true, true, any(!vec4<bool>(false, var_0.d.x, true, arg_1.d.x))), false);
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> u32 {
    global0 = array<bool, 3>();
    let var_0 = -31524i;
    global0 = array<bool, 3>();
    var var_1 = Struct_1(~1u, 1u, 2147483647i, vec3<bool>(~49555i == _wgslsmith_clamp_i32(24267i, 0i, -2147483647i), all(vec4<bool>(true, any(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 3u)], arg_1.x)), all(arg_1), arg_1.x)), !all(vec3<bool>(arg_1.x, false, false))));
    let var_2 = firstLeadingBit(~_wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.b, arg_0), var_1.a));
    return var_1.a >> (var_2 % 32u);
}

fn func_2(arg_0: i32, arg_1: f32) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.b, 4u)];
    global0 = array<bool, 3>();
    let var_1 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(var_0.a, 0u), func_3(u_input.b, var_0.d.yy) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.a), vec2<u32>(4294967295u, 83303u)) % 32u), 0u), ~countOneBits(~vec3<u32>(16850u, 4294967295u, u_input.b))), u_input.b, arg_0 & (i32(-1i) * -(var_0.c | -11106i)), var_0.d);
    global3 = array<Struct_1, 4>();
    var var_2 = _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))))));
    return 34453u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(true, any(func_1(33118u, global3[_wgslsmith_index_u32(26063u, 4u)], false)), !all(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)]))), vec3<bool>(true, !(!global0[_wgslsmith_index_u32(0u, 3u)]), true), global0[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(u_input.b) & _wgslsmith_add_u32(0u, u_input.b)), 3u)]);
    let var_1 = select(vec3<bool>(true, var_0.x, false), select(select(!select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, false, false), false), var_0, !(!var_0.x)), var_0, global0[_wgslsmith_index_u32(65846u, 3u)] && true), func_1(~_wgslsmith_mod_u32(1u, 1u), Struct_1(reverseBits(0u), _wgslsmith_div_u32(func_2(u_input.a.x, -1251f), u_input.b), max(-4776i ^ u_input.a.x, 1i), vec3<bool>(!var_0.x, var_0.x, true)), global0[_wgslsmith_index_u32(17618u, 3u)]).x);
    global0 = array<bool, 3>();
    var var_2 = Struct_1(u_input.b, firstTrailingBit(~1u), -2147483647i, select(var_0, !select(var_1, select(var_1, var_1, global0[_wgslsmith_index_u32(12735u, 3u)]), var_0.x && global0[_wgslsmith_index_u32(12250u, 3u)]), !var_0.x));
    global0 = array<bool, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1033f)))), -1i);
}

