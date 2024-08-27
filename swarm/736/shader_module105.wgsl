struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(1i, 15448i, 1i), vec3<i32>(59965i, 0i, 1i), vec3<i32>(14532i, 1i, -23886i), vec3<i32>(-18833i, 0i, 21182i), vec3<i32>(1i, -19678i, 71384i), vec3<i32>(-71058i, -6123i, 19773i), vec3<i32>(2147483647i, 6276i, 8923i), vec3<i32>(i32(-2147483648), -14083i, 0i), vec3<i32>(-44858i, 42253i, -9867i));

var<private> global1: array<i32, 31> = array<i32, 31>(1012i, -22799i, 2147483647i, 19128i, -10189i, 18284i, 9175i, 2147483647i, -41380i, -1i, 12500i, 13797i, 2147483647i, i32(-2147483648), -31688i, -1i, 37544i, -14506i, -10332i, 78201i, i32(-2147483648), 57072i, -36308i, -1i, i32(-2147483648), 0i, 12110i, 42825i, 33080i, 28561i, -1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1) -> u32 {
    global1 = array<i32, 31>();
    var var_0 = !select(vec2<bool>((19100i | u_input.d.x) >= global1[_wgslsmith_index_u32(~arg_0.x, 31u)], true), !(!(!vec2<bool>(arg_2.a, arg_2.a))), !vec2<bool>(!arg_2.a, arg_2.a));
    return ~abs(29614u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 31>();
    let var_0 = -214f;
    var var_1 = u_input.e.yz;
    let var_2 = false;
    var var_3 = reverseBits(u_input.e);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(877f, var_0))))))), !(!(!vec3<bool>(var_2, true, true))), Struct_1(false), vec4<bool>(false, var_2, select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 6129u, 0u, 4294967295u), vec4<u32>(var_3.x, 31249u, var_1.x, 49965u)) > u_input.a.x, true, func_1(u_input.e, global1[_wgslsmith_index_u32(27126u, 31u)], Struct_1(var_2)) <= _wgslsmith_mult_u32(26357u, 1u)), any(vec2<bool>(!var_2, any(vec2<bool>(var_2, var_2))))), 71788u);
    let x = u_input.a;
    s_output = StorageBuffer(10257u);
}

