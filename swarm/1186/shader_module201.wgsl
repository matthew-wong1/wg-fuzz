struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: array<Struct_1, 26>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<u32>) -> vec3<bool> {
    let var_0 = vec2<bool>(any(arg_0.zw), !(!((true & arg_0.x) || (global0[_wgslsmith_index_u32(31893u, 7u)] >= global0[_wgslsmith_index_u32(53489u, 7u)]))));
    let var_1 = u_input.b.x >> (~firstLeadingBit(_wgslsmith_div_u32(~1u, ~0u)) % 32u);
    var var_2 = vec4<bool>(false, arg_0.x, _wgslsmith_f_op_f32(step(615f, _wgslsmith_f_op_f32(1391f - _wgslsmith_f_op_f32(f32(-1f) * -191f)))) < _wgslsmith_f_op_f32(-1455f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.a.x, 7u)])))), var_0.x);
    let var_3 = ~(vec4<u32>(u_input.a.x, abs(arg_1.x), 40977u, _wgslsmith_add_u32(~52594u, 1u)) << (~(~(~vec4<u32>(1u, 4294967295u, 0u, u_input.a.x))) % vec4<u32>(32u)));
    let var_4 = -1263f;
    return select(!(!vec3<bool>(arg_0.x, true, false)), arg_0.wxx, vec3<bool>(true, var_2.x, !var_2.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    var var_0 = Struct_1(true);
    var var_1 = ~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, ~(~u_input.a.x)), arg_1.x);
    var_0 = arg_2;
    let var_2 = arg_2;
    var_0 = arg_2;
    return !(global0[_wgslsmith_index_u32(0u, 7u)] > -662f);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(~0u, 7u)];
    global0 = array<f32, 7>();
    let var_1 = arg_1;
    let var_2 = !all(vec3<bool>(any(vec4<bool>(false, var_1.a, arg_1.a, true)) && any(vec3<bool>(true, arg_1.a, arg_1.a)), true, arg_0.a));
    var var_3 = any(select(select(select(select(vec2<bool>(arg_1.a, var_2), vec2<bool>(true, arg_0.a), vec2<bool>(true, var_2)), vec2<bool>(arg_0.a, var_1.a), !vec2<bool>(false, var_1.a)), vec2<bool>(true, !arg_0.a), var_1.a), vec2<bool>(func_4(select(vec3<bool>(arg_0.a, var_2, var_1.a), vec3<bool>(false, var_1.a, var_1.a), arg_1.a), u_input.a.xy, var_1, func_3(vec4<bool>(arg_1.a, true, var_2, false), vec4<u32>(3344u, 1u, u_input.a.x, 1u))), true & (arg_1.a & true)), select(vec2<bool>(true, !arg_0.a), !select(vec2<bool>(var_1.a, true), vec2<bool>(true, arg_1.a), vec2<bool>(false, true)), false)));
    return all(select(!select(vec2<bool>(true, true), !vec2<bool>(false, arg_0.a), true), vec2<bool>(true, true), vec2<bool>(true || arg_1.a, true)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    global1 = array<Struct_1, 26>();
    var var_0 = arg_3.x;
    let var_1 = select(!vec3<bool>((u_input.c.x == u_input.a.x) || (u_input.b.x >= -2147483647i), all(vec2<bool>(true, true)), func_2(Struct_1(true), global1[_wgslsmith_index_u32(~u_input.c.x, 26u)])), select(select(vec3<bool>(arg_2.a, false, arg_2.a & false), select(!vec3<bool>(false, arg_2.a, arg_2.a), !vec3<bool>(true, arg_0.a, arg_2.a), !vec3<bool>(arg_2.a, true, false)), true && arg_2.a), vec3<bool>(false, true, false), !(!vec3<bool>(true, false, arg_0.a))), arg_2.a || arg_2.a);
    var var_2 = vec3<bool>(func_2(Struct_1(any(vec3<bool>(true, var_1.x, arg_2.a))), Struct_1(!arg_2.a)), any(!(!vec3<bool>(arg_2.a, var_1.x, var_1.x))) && var_1.x, !any(!vec4<bool>(false, arg_2.a, arg_0.a, arg_2.a)) || false);
    var var_3 = arg_2;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec2<u32>(~func_1(Struct_1(true), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 54998u), Struct_1(true), vec4<i32>(-48626i, u_input.d, -1i, 63803i)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(2882u, u_input.c.x, 1235u) << (u_input.c % vec3<u32>(32u)))));
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 26u)];
    global0 = array<f32, 7>();
    var var_2 = Struct_1(select(!all(vec2<bool>(var_1.a, true)), !(true | all(vec2<bool>(var_1.a, true))), true));
    global0 = array<f32, 7>();
    var var_3 = global1[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(((u_input.c.x << (u_input.c.x % 32u)) << (~u_input.c.x % 32u)) & ~34375u, 4294967295u)), 26u)];
    var_2 = Struct_1(func_3(!(!select(vec4<bool>(false, var_1.a, var_1.a, false), vec4<bool>(var_1.a, false, var_2.a, var_3.a), false)), select(firstTrailingBit(~vec4<u32>(var_0.x, 25451u, 79492u, 0u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 18971u, 126258u)), vec4<bool>(var_1.a, any(vec4<bool>(var_1.a, var_2.a, var_1.a, true)), func_3(vec4<bool>(var_2.a, false, true, true), vec4<u32>(u_input.c.x, u_input.c.x, var_0.x, 4294967295u)).x, true))).x);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(var_0.x, 7u)], 167f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -562f), global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 7u)], global0[_wgslsmith_index_u32(u_input.c.x, 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(18647u, 7u)])) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.x, 7u)] - 313f)))));
}

