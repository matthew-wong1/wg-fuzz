struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(65822u);

var<private> global1: array<bool, 4>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-719f * _wgslsmith_f_op_f32(floor(1671f))) - 164f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(504f + 448f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(312f, 561f, false)))))));
    global0 = arg_1;
    let var_1 = select(select(select(!(!vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(u_input.c.x, 4u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 4u)], false, global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(arg_1.a, 4u)]), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 4u)], true), true), var_0.x <= var_0.x), select(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 4u)], false, global1[_wgslsmith_index_u32(arg_0.x, 4u)], true), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(1u, 4u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.a, 4u)], global1[_wgslsmith_index_u32(40560u, 4u)], global1[_wgslsmith_index_u32(40454u, 4u)], global1[_wgslsmith_index_u32(15141u, 4u)]), global1[_wgslsmith_index_u32(arg_2.x, 4u)]), vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(4294967295u, 4u)]))), vec4<bool>(true, false, global1[_wgslsmith_index_u32(firstLeadingBit(arg_2.x), 4u)], any(vec2<bool>(true, true))), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 4u)], u_input.d.x <= -1i, all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(u_input.e.x, 4u)], global1[_wgslsmith_index_u32(0u, 4u)], true)))), !vec4<bool>(~u_input.b <= u_input.b, true, true, 4294967295u >= max(u_input.a, 0u)), true);
    let var_2 = Struct_1(_wgslsmith_mult_u32(~(~arg_2.x), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, u_input.a), abs(u_input.c.yxy)), _wgslsmith_sub_u32(arg_1.a, max(50426u, 10457u)))));
    global0 = Struct_1(abs(var_2.a));
    return arg_1.a ^ 1u;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(66619u);
    global1 = array<bool, 4>();
    let var_1 = Struct_1(4294967295u);
    global1 = array<bool, 4>();
    var var_2 = Struct_1(~(4294967295u >> (func_3(u_input.e, var_1, ~u_input.c.wx) % 32u)));
    return Struct_1(_wgslsmith_div_u32(u_input.c.x, 118363u));
}

fn func_1() -> StorageBuffer {
    let var_0 = vec2<u32>(~global0.a, ~1u);
    let var_1 = func_2(u_input.a);
    global1 = array<bool, 4>();
    global0 = Struct_1(u_input.c.x);
    let var_2 = 535f;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2, var_2))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(2006f, -2608f) - vec2<f32>(1277f, var_2)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(all(select(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(global0.a, 4u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), !vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(global0.a, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.e.x, 4u)], global1[_wgslsmith_index_u32(15885u, 4u)])), select(select(vec4<bool>(global1[_wgslsmith_index_u32(15387u, 4u)], false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(5548u, 4u)], true, global1[_wgslsmith_index_u32(u_input.e.x, 4u)], true), global1[_wgslsmith_index_u32(u_input.a, 4u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 4u)], false, global1[_wgslsmith_index_u32(110707u, 4u)]), true), select(vec4<bool>(false, global1[_wgslsmith_index_u32(3739u, 4u)], true, global1[_wgslsmith_index_u32(global0.a, 4u)]), vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(global0.a, 4u)]), select(vec4<bool>(false, global1[_wgslsmith_index_u32(1616u, 4u)], false, false), vec4<bool>(false, global1[_wgslsmith_index_u32(46411u, 4u)], true, global1[_wgslsmith_index_u32(7249u, 4u)]), false)))), any(vec4<bool>(global1[_wgslsmith_index_u32(min(_wgslsmith_add_u32(global0.a, global0.a), ~22201u), 4u)], true, global1[_wgslsmith_index_u32(29415u, 4u)], all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 4u)], true, false, global1[_wgslsmith_index_u32(global0.a, 4u)])))));
    let var_1 = u_input.c.wxy;
    var_0 = select(vec2<bool>(!var_0.x, true & (true | var_0.x)), !(!(!vec2<bool>(global1[_wgslsmith_index_u32(105570u, 4u)], var_0.x))), vec2<bool>(true, all(!vec4<bool>(var_0.x, false, var_0.x, true))));
    var var_2 = vec2<u32>(1u, global0.a);
    global0 = Struct_1(var_1.x);
    let x = u_input.a;
    s_output = func_1();
}

