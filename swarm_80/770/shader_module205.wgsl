struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(6336u, 59299u), vec2<u32>(71601u, 1u), vec2<f32>(423f, -1695f), vec4<f32>(385f, -2212f, -1281f, 315f));

var<private> global1: u32;

var<private> global2: array<bool, 31> = array<bool, 31>(false, false, true, true, true, true, true, true, true, false, true, false, true, false, true, true, true, true, false, false, false, false, true, true, true, true, true, false, true, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(922f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.c.x + global0.d.x)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - _wgslsmith_f_op_f32(1772f + global0.c.x))), _wgslsmith_f_op_f32(step(821f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(round(global0.c.x))))), global2[_wgslsmith_index_u32(global0.a.x, 31u)])));
}

