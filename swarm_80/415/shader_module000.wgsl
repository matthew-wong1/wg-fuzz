struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<u32, 19> = array<u32, 19>(4294967295u, 42261u, 0u, 4294967295u, 1u, 0u, 72077u, 4294967295u, 0u, 28277u, 4294967295u, 4294967295u, 1u, 46350u, 0u, 0u, 39923u, 4294967295u, 11359u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    return StorageBuffer(firstLeadingBit(~u_input.b), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))));
}

