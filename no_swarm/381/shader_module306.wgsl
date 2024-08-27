struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<i32>(0i, 1i, i32(-2147483648)), vec2<u32>(0u, 0u), 104915u), Struct_1(vec3<i32>(1i, -1i, -15498i), vec2<u32>(57815u, 87193u), 5054u));

var<private> global1: array<bool, 10> = array<bool, 10>(true, false, true, true, false, true, false, false, false, true);

var<private> global2: Struct_2;

var<private> global3: array<u32, 2> = array<u32, 2>(52315u, 3940u);

var<private> global4: array<bool, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>((global2.a.c | 4294967295u) >> (4294967295u % 32u), 1u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.c, 9358u, global0.b.c, 17093u), vec4<u32>(global2.a.c, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13688u, 2u)], 2u)], global0.a.c, 4294967295u))), abs(12312u)));
}

