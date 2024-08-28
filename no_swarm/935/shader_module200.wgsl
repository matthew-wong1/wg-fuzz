struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = u_input.a;
    let var_2 = vec2<bool>(true, false);
    let var_3 = vec3<u32>(u_input.a, u_input.c.x << (u_input.a % 32u), u_input.a);
    var_1 = _wgslsmith_div_u32(var_3.x, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(10052u);
}

