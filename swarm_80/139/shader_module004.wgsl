struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(2147483647i, 44229i, ~firstTrailingBit(global0.x));
    let var_0 = -371f;
    let var_1 = Struct_2(-6194i, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 - -529f), _wgslsmith_f_op_f32(-152f * 612f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1224f, var_0) * vec2<f32>(1580f, var_0)))))), _wgslsmith_mod_u32(u_input.c, u_input.d.x));
    var var_2 = 0u & var_1.c;
    global0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(2005f, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-945f, var_0))), -145f));
}

