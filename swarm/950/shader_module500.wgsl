struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 20>;

var<private> global2: array<bool, 24> = array<bool, 24>(true, false, true, true, false, true, false, false, true, true, true, true, false, true, false, false, true, false, false, true, false, true, true, false);

var<private> global3: u32;

var<private> global4: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!vec2<bool>(global2[_wgslsmith_index_u32(countOneBits(16676u), 24u)] & (global4.d.x <= -309f), global2[_wgslsmith_index_u32(~global4.c.x, 24u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2051f, _wgslsmith_div_f32(global4.b, _wgslsmith_f_op_f32(sign(global4.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1038f - global4.a) - -1098f), _wgslsmith_f_op_f32(-global4.a))), ~(-3315i), _wgslsmith_f_op_vec4_f32(-global4.d));
}

