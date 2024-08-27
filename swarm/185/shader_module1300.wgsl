struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_2(false, true, Struct_1(4294967295u, -43391i, 21566u, vec2<u32>(0u, 4294967295u))), 45383u, 1u), Struct_3(Struct_2(false, false, Struct_1(26313u, -1i, 22600u, vec2<u32>(1u, 4294967295u))), 4294967295u, 11425u));

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(false, true, Struct_1(70243u, 1i, 0u, vec2<u32>(24747u, 4294967295u))), Struct_2(false, false, Struct_1(4294967295u, -1i, 19203u, vec2<u32>(0u, 0u))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 460f;
    global1 = array<Struct_2, 2>();
    var var_1 = vec4<i32>(u_input.a.x, u_input.a.x, 0i, -2147483647i);
    global1 = array<Struct_2, 2>();
    var var_2 = global0[_wgslsmith_index_u32(u_input.b >> (~(~(reverseBits(u_input.b) & 1u)) % 32u), 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<i32>(~(u_input.a.x & var_1.x), var_1.x)));
}

