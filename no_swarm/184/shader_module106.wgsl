struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), i32(-2147483648));

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global2: array<i32, 23>;

var<private> global3: vec2<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-743f, -1014f), vec2<f32>(-175f, -260f))))))), -497f);
}

