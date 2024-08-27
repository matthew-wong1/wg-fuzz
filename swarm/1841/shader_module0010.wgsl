struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(true, !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true)), ~(~(~vec3<u32>(0u, u_input.a, 0u))), vec2<i32>(3328i | firstTrailingBit(2147483647i), _wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 0i), ~vec2<i32>(53894i, -23781i)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1211f, -139f, -1881f), vec3<f32>(718f, -2155f, -419f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-919f, -1039f, -860f)), var_0.a.b.yww))))));
    let var_2 = var_0.a.b.www;
    let var_3 = var_0.a;
    var var_4 = var_3.d.x < var_3.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(select((reverseBits(var_3.c.x) & 30284u) ^ ~(~u_input.a), ~(~var_0.a.c.x), var_0.a.d.x > 1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * var_1.x), 371f), vec4<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x)), 203f, _wgslsmith_f_op_f32(min(863f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x)) * -1993f)), _wgslsmith_mult_u32(var_0.a.c.x, var_3.c.x));
}

