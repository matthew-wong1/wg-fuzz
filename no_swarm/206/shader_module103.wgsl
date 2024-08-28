struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(1u, 4294967295u), Struct_1(0u, 1u), Struct_1(50415u, 0u), Struct_1(100510u, 4294967295u), Struct_1(1u, 4294967295u), Struct_1(27589u, 78307u), Struct_1(4294967295u, 0u), Struct_1(36828u, 1u));

var<private> global1: vec3<u32> = vec3<u32>(0u, 0u, 0u);

var<private> global2: array<vec4<f32>, 27>;

var<private> global3: Struct_1 = Struct_1(110250u, 4294967295u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 27>();
    global2 = array<vec4<f32>, 27>();
    let var_0 = -28123i;
    global0 = array<Struct_1, 8>();
    global1 = vec3<u32>(u_input.a, global1.x, ~(~_wgslsmith_add_u32(global1.x, global3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

