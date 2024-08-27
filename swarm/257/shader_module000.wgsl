struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(0i, 1i, 2147483647i, 0i), vec2<bool>(false, true), vec4<u32>(79615u, 28910u, 21183u, 72726u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: u32) -> StorageBuffer {
    return StorageBuffer(~(-1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), -1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1688f, -374f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!(!all(select(vec4<bool>(false, true, false, global1.b.x), vec4<bool>(true, true, global1.b.x, global0.a), true))));
    let x = u_input.a;
    s_output = func_1(u_input.b);
}

