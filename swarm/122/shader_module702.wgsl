struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(973f, 683f) * vec2<f32>(-998f, 419f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1975f, 225f))))), vec2<f32>(1f, 1f), !(_wgslsmith_clamp_u32(u_input.d, 42469u, 96200u) >= 0u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(941f, _wgslsmith_f_op_f32(f32(-1f) * -728f)))));
    return StorageBuffer(-1000f, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-282f, -125f, _wgslsmith_f_op_f32(-480f - -542f), var_0.x) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, -477f, var_0.x, var_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = -2147483647i;
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(ceil(1000f))));
    let x = u_input.a;
    s_output = func_1();
}

