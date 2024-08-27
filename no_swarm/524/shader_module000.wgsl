struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(0i, 44422i, 2147483647i);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    let var_0 = ~abs(abs(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 29082u, 1u), vec3<u32>(u_input.b, u_input.d, 1u), vec3<u32>(u_input.d, 0u, u_input.e)))));
    global0 = array<i32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xx);
}

