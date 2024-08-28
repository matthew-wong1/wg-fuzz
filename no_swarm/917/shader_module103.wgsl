struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
    e: f32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~u_input.e.x), vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1997f + 356f)) - _wgslsmith_f_op_f32(f32(-1f) * -1326f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1742f + 250f)), 1f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1784f, 1000f, 1000f, -238f) - vec4<f32>(-223f, 420f, -1000f, 2389f))))), vec4<f32>(-1393f, 647f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(218f + -1027f)), _wgslsmith_f_op_f32(min(-638f, 1f))))), -15022i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1391f, _wgslsmith_f_op_f32(max(-915f, 1444f)))), _wgslsmith_f_op_f32(floor(1417f)))));
}

