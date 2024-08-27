struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(global1.x, true), global1.yx, global1.yz);
    let var_1 = -min(~61988i, _wgslsmith_add_i32(0i, _wgslsmith_clamp_i32(u_input.a.x, u_input.b, 0i)));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(467f, -1000f, 1185f))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1135f, -1045f, false)) * _wgslsmith_f_op_f32(min(1576f, -919f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-149f - 1669f), -222f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2367f - 258f) - _wgslsmith_f_op_f32(step(912f, 172f))))));
    var var_4 = 533f;
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

