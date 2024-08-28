struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-321f, -1235f, -226f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global0.x, -u_input.e.x);
    let var_1 = _wgslsmith_mod_u32(u_input.b.x, 4294967295u);
    let var_2 = Struct_1(false, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(767f, var_0.a, 547f), vec3<f32>(var_0.a, -277f, -1062f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1157f, 1799f) * vec3<f32>(-1442f, -797f, global0.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, var_0.a)))))))));
    var_0 = Struct_2(global0.x, 0i);
    var var_3 = u_input.e.wy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, select(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, var_3.x), u_input.e.xw), u_input.e.x), max(abs(var_3.x), u_input.e.x)), var_3.x, all(!vec4<bool>(false, var_2.a, true, false))), var_1, max(var_3.x, u_input.a));
}

