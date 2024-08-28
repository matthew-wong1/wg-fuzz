struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<Struct_1, 20>;

var<private> global2: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(1u, 5489u, 1u), vec3<u32>(73539u, 62220u, 4294967295u), vec3<u32>(3396u, 20508u, 4294967295u), vec3<u32>(0u, 6898u, 3064u), vec3<u32>(17070u, 8232u, 1u), vec3<u32>(31887u, 98071u, 0u), vec3<u32>(58656u, 4294967295u, 74025u), vec3<u32>(1u, 1u, 59387u), vec3<u32>(49003u, 0u, 58417u), vec3<u32>(58060u, 2772u, 40049u), vec3<u32>(0u, 0u, 0u), vec3<u32>(29141u, 4294967295u, 1u), vec3<u32>(50181u, 1u, 4294967295u), vec3<u32>(15293u, 1u, 64711u), vec3<u32>(50443u, 7955u, 0u), vec3<u32>(38772u, 10068u, 1u));

var<private> global3: f32 = -891f;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(firstTrailingBit(~vec3<i32>(u_input.b, u_input.b, u_input.b)) ^ firstTrailingBit(reverseBits(vec3<i32>(u_input.c, u_input.c, u_input.c)))), u_input.b, 237f);
}

