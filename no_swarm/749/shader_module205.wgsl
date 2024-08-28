struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1899f;

var<private> global1: array<vec3<f32>, 32>;

var<private> global2: u32;

var<private> global3: u32;

var<private> global4: array<vec3<bool>, 6>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_3 {
    return Struct_3(8111u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    return 40291u;
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(-1634f);
    global3 = func_3(var_0) << (u_input.a % 32u);
    var var_1 = 32824u;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 32>();
    let var_0 = func_1(Struct_4(false), Struct_1(1f), Struct_2(_wgslsmith_div_i32(_wgslsmith_div_i32(~(-2147483647i), 1499i), min(-2147483647i, abs(2147483647i)))), ~(max(vec4<u32>(13156u, u_input.a, 0u, u_input.a), min(vec4<u32>(u_input.a, 39654u, 26667u, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a))) ^ ~min(vec4<u32>(u_input.a, 28766u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 7574u))));
    var var_1 = func_2(!select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true), u_input.a >> (~(~1u) % 32u));
    let var_2 = any(!(!vec4<bool>(true, true, true, any(vec2<bool>(false, true)))));
    var var_3 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 826f, var_1.a, var_1.a) * vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 2090f, 437f, var_1.a) + vec4<f32>(-546f, var_1.a, -1120f, -554f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_1.a, 697f)), _wgslsmith_div_f32(var_1.a, var_1.a), _wgslsmith_f_op_f32(var_1.a + 917f), var_1.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 444f, var_1.a, var_1.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1051f, var_1.a, var_1.a, var_1.a) - vec4<f32>(191f, 689f, 200f, var_1.a)))), false)), _wgslsmith_f_op_f32(-var_1.a), -(vec2<i32>(1i, select(23720i, 12748i, var_2)) ^ select(vec2<i32>(2147483647i, 0i), vec2<i32>(-12630i, -10464i), var_2)), ~0u, _wgslsmith_f_op_f32(abs(var_1.a)));
}

