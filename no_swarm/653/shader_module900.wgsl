struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
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

var<private> global0: bool;

var<private> global1: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2754f * 1188f)), 1f)));
    var var_1 = ~u_input.c.x;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    var_1 = ~(~4294967295u);
    global1 = 0i;
    let var_3 = select(~(-vec2<i32>(~(-82691i), 47042i)), -(u_input.b.yz << (vec2<u32>(0u, ~u_input.c.x) % vec2<u32>(32u))), vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-373f, var_0.x)))), -1261f))));
}

