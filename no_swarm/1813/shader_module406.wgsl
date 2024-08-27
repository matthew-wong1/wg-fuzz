struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    global0 = array<i32, 6>();
    global1 = array<Struct_1, 30>();
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    global1 = array<Struct_1, 30>();
    return ~_wgslsmith_mod_vec4_u32(u_input.a, ~abs(u_input.a));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_1) -> vec4<u32> {
    global0 = array<i32, 6>();
    let var_0 = arg_2;
    global0 = array<i32, 6>();
    return u_input.a;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: bool) -> Struct_1 {
    global0 = array<i32, 6>();
    let var_0 = min(vec4<i32>(1i, 1i, 2147483647i, 2147483647i >> (1u % 32u)), (reverseBits(vec4<i32>(-2147483647i, -2147483647i, 0i, global0[_wgslsmith_index_u32(1u, 6u)])) >> (func_2(global1[_wgslsmith_index_u32(arg_1.x, 30u)]) % vec4<u32>(32u))) << (func_3(global0[_wgslsmith_index_u32(63577u, 6u)], ~u_input.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) + vec3<f32>(arg_0, arg_0, 2120f)), global1[_wgslsmith_index_u32(4294967295u, 30u)]) % vec4<u32>(32u))) | vec4<i32>(1i, 1i, -abs(93080i >> (u_input.b % 32u)), 1i);
    global1 = array<Struct_1, 30>();
    var var_1 = arg_0;
    var var_2 = arg_2;
    return Struct_1(select(vec2<bool>(arg_2, !select(arg_2, false, false)), select(!(!vec2<bool>(arg_2, false)), vec2<bool>(true, true), !select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), arg_2)), select(select(select(vec2<bool>(arg_2, false), vec2<bool>(true, arg_2), arg_2), select(vec2<bool>(arg_2, false), vec2<bool>(true, false), vec2<bool>(true, false)), true), select(!vec2<bool>(false, arg_2), !vec2<bool>(arg_2, arg_2), true), !arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 30>();
    var var_0 = ~vec2<u32>(4294967295u, ~u_input.e);
    global1 = array<Struct_1, 30>();
    let var_1 = func_1(428f, vec4<u32>(u_input.a.x, var_0.x, 0u, _wgslsmith_mod_u32(u_input.b, _wgslsmith_div_u32(u_input.a.x, 30744u))), true);
    var var_2 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1269f - -513f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(676f - -242f))))), vec4<u32>(18726u, ~_wgslsmith_div_u32(9190u, min(u_input.d, 4294967295u)), _wgslsmith_mult_u32(~1u, var_0.x), var_0.x), var_1.a.x);
    global0 = array<i32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1388f - _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(1528f, -759f))) - -1205f));
}

