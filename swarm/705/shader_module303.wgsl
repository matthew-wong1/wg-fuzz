struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(4294967295u, 4294967295u, 0u, 9971u), vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 111230u), vec4<u32>(48143u, 4294967295u, 1u, 4294967295u), vec4<u32>(4294967295u, 62991u, 0u, 73921u), vec4<u32>(42727u, 28445u, 25069u, 0u), vec4<u32>(6372u, 0u, 0u, 41091u), vec4<u32>(19167u, 1u, 4294967295u, 57943u), vec4<u32>(40381u, 0u, 4294967295u, 1u), vec4<u32>(30282u, 1u, 16039u, 4294967295u), vec4<u32>(65132u, 17036u, 4294967295u, 8754u), vec4<u32>(0u, 0u, 3149u, 41374u), vec4<u32>(39332u, 1u, 1u, 0u), vec4<u32>(0u, 29424u, 0u, 4294967295u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 14>();
    var var_0 = 0u << (_wgslsmith_add_u32(1u, ~u_input.a) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~(~25489u), ~u_input.a, u_input.a, select(0u, firstTrailingBit(1u), true)), 997f, ~(-1i));
}

