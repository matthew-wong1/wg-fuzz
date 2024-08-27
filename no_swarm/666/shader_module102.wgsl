struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
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

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 28>;

var<private> global2: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(-413f, -1347f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> i32 {
    global1 = array<Struct_1, 28>();
    global2 = array<vec2<f32>, 1>();
    let var_0 = vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(sign(1908f))) - _wgslsmith_f_op_f32(1f * 1082f)) > 137f);
    global1 = array<Struct_1, 28>();
    let var_1 = u_input.b.x;
    return select(global0.x, global0.x, any(!vec3<bool>(var_0.x, var_0.x | var_0.x, 2147483647i < global0.x)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = arg_0;
    let var_1 = var_0.a;
    var var_2 = vec3<bool>(-1156f <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1000f)))), 3450f)), arg_0.a, any(vec4<bool>(any(vec4<bool>(arg_0.a, true, true, false)), !(!var_0.a), true, arg_0.a)));
    var_0 = arg_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1680f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(164f + 1000f))), -1580f)));
    return 1i;
}

fn func_2() -> StorageBuffer {
    var var_0 = 578f;
    let var_1 = u_input.a < 0u;
    var var_2 = u_input.b.x;
    global0 = vec4<i32>(func_3(Struct_3(true, Struct_2(vec4<i32>(global0.x, global0.x, global0.x, global0.x), global0.x), select(21188u, 11737u, var_1))), ~(~0i), -5862i, -countOneBits(-31176i)) << (vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zw, vec2<u32>(0u, ~u_input.a)), ~(~u_input.b.x), 1u, 42991u) % vec4<u32>(32u));
    global2 = array<vec2<f32>, 1>();
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1011f, 447f)) - vec2<f32>(-1117f, -262f)), _wgslsmith_f_op_vec2_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(41723u, u_input.a, u_input.b.x), vec3<u32>(u_input.b.x, 4617u, u_input.b.x)), 1u)])), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-625f, -372f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-452f)))))));
    let x = u_input.a;
    s_output = func_2();
}

