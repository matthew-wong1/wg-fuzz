struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    global0 = array<i32, 23>();
    var var_0 = arg_1.d;
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    return _wgslsmith_f_op_f32(select(arg_1.a, arg_1.a, true));
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    var var_0 = ~(~(~(reverseBits(u_input.a.x) ^ min(4294967295u, u_input.a.x))));
    var var_1 = Struct_1(1705f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(true), Struct_2(-1460f, vec2<i32>(global0[_wgslsmith_index_u32(22203u, 23u)], 31879i), Struct_1(false), 390f)))) - 756f));
    return Struct_1(false);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(415f, 1961f)) + 1000f)) - arg_3.d));
    let var_2 = func_2();
    let var_3 = false;
    var var_4 = -(~abs(-7758i));
    return -791f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(u_input.a, global0[_wgslsmith_index_u32(0u, 23u)], Struct_2(1037f, vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), Struct_1(false), 163f), Struct_2(-1918f, vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(10209u, 23u)]), Struct_1(true), -1793f))), _wgslsmith_f_op_f32(-1101f * -400f), 976f, -1000f) - vec4<f32>(-1051f, -1433f, _wgslsmith_f_op_f32(f32(-1f) * -587f), _wgslsmith_f_op_f32(sign(-1134f))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1307f)) * _wgslsmith_div_f32(-1336f, _wgslsmith_div_f32(-228f, -212f))), 232f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1237f + -1868f)))), _wgslsmith_f_op_f32(378f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-478f, 835f)))));
    global0 = array<i32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) | u_input.a.yzz)));
}

