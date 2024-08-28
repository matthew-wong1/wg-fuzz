struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: u32;

var<private> global1: i32 = -25389i;

var<private> global2: array<u32, 21> = array<u32, 21>(4294967295u, 4294967295u, 53457u, 4294967295u, 58450u, 1u, 4294967295u, 75975u, 47619u, 1u, 5948u, 0u, 82184u, 19100u, 11967u, 0u, 1u, 1u, 18393u, 4294967295u, 0u);

var<private> global3: vec4<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global3.xx, vec2<f32>(1078f, global3.x)))) - _wgslsmith_f_op_vec2_f32(trunc(global3.wy))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global3.yy, global3.zw)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.yw * global3.yy)))));
}

