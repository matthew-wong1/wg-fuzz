struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<Struct_1, 3>;

var<private> global1: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(29356i, -17953i, 2147483647i), vec3<i32>(0i, 13467i, 1i), vec3<i32>(2147483647i, -24535i, 43011i), vec3<i32>(-1i, -25423i, -35469i), vec3<i32>(-39888i, -59050i, 1i), vec3<i32>(1i, 23336i, 5825i), vec3<i32>(-31396i, -72689i, 0i), vec3<i32>(10475i, -1i, 6427i), vec3<i32>(1i, 44530i, -38968i), vec3<i32>(-1i, 1i, -19793i), vec3<i32>(5565i, -1i, -2087i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(-52734i, i32(-2147483648), 16680i), vec3<i32>(2147483647i, -16527i, -31690i), vec3<i32>(1i, 1i, 40049i), vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec3<i32>(-400i, 987i, 2147483647i), vec3<i32>(-37259i, 1360i, -1i), vec3<i32>(0i, 1i, 1i), vec3<i32>(-10138i, 28494i, 14816i), vec3<i32>(-1i, 29615i, 1i), vec3<i32>(-31797i, 2147483647i, 1i), vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<i32>(-1i, -3396i, 0i), vec3<i32>(27961i, 30802i, -1i), vec3<i32>(27557i, -37337i, 8772i));

var<private> global2: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> vec2<u32> {
    global0 = array<Struct_1, 3>();
    let var_0 = ~(1i & u_input.a.x) <= u_input.a.x;
    let var_1 = ~abs(-u_input.a.yx);
    let var_2 = Struct_1(vec4<bool>(true, u_input.a.x >= -_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(arg_0.x, 26u)], global1[_wgslsmith_index_u32(arg_1, 26u)]), !(!(!global2.a.x)), var_0));
    global1 = array<vec3<i32>, 26>();
    return arg_0.zz;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>) -> StorageBuffer {
    var var_0 = Struct_1(!(!(!vec4<bool>(false, true, true, global2.a.x))));
    global0 = array<Struct_1, 3>();
    let var_1 = -990f;
    let var_2 = arg_0.x;
    var var_3 = Struct_1(select(vec4<bool>((arg_0.x ^ 4294967295u) == _wgslsmith_add_u32(arg_1.x, 1u), !var_0.a.x, _wgslsmith_f_op_f32(1408f - var_1) < _wgslsmith_f_op_f32(exp2(var_1)), true), global2.a, !(!(arg_0.x > 38590u))));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1224f - _wgslsmith_f_op_f32(var_1 + 780f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 3>();
    var var_0 = !(!select(vec4<bool>(false, global2.a.x & false, select(false, global2.a.x, global2.a.x), global2.a.x), !select(global2.a, vec4<bool>(true, true, true, global2.a.x), global2.a.x), select(vec4<bool>(global2.a.x, global2.a.x, true, global2.a.x), !global2.a, any(vec4<bool>(false, true, false, true)))));
    let var_1 = Struct_1(vec4<bool>(global2.a.x, all(var_0.ywz), false, var_0.x));
    global0 = array<Struct_1, 3>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1845f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_f32(-1823f * 1728f), -397f);
    let x = u_input.a;
    s_output = func_2(~vec2<u32>(14465u, 33497u), reverseBits(func_1(min(vec3<u32>(1u, 1u, 1u), vec3<u32>(4507u, 1441u, 0u)), 1u, Struct_1(vec4<bool>(global2.a.x, var_0.x, false, global2.a.x)))));
}

