struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(93494u, 0u), vec2<u32>(0u, 39227u), vec2<u32>(4294967295u, 50349u), vec2<u32>(40246u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(1u, 6913u), vec2<u32>(56968u, 28088u), vec2<u32>(36037u, 0u), vec2<u32>(20263u, 12273u), vec2<u32>(4294967295u, 56319u), vec2<u32>(4294967295u, 1u), vec2<u32>(30326u, 4294967295u), vec2<u32>(0u, 65354u), vec2<u32>(25465u, 74666u), vec2<u32>(1u, 2139u), vec2<u32>(22136u, 4294967295u), vec2<u32>(4597u, 17880u), vec2<u32>(34567u, 1u), vec2<u32>(13489u, 4294967295u), vec2<u32>(16088u, 0u), vec2<u32>(1u, 0u), vec2<u32>(28068u, 46160u), vec2<u32>(0u, 16632u), vec2<u32>(28926u, 1u), vec2<u32>(98642u, 0u), vec2<u32>(1u, 64354u), vec2<u32>(4389u, 1742u));

var<private> global3: array<Struct_2, 3>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~min(global0[_wgslsmith_index_u32(max(~u_input.a, 14925u), 12u)], ~(~1u)));
    let x = u_input.a;
    s_output = StorageBuffer(-1825i, u_input.b, var_0, u_input.a, u_input.b);
}

