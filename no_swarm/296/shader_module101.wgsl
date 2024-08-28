struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(69459u, 0u), vec2<u32>(13381u, 4294967295u), vec2<u32>(4294967295u, 13476u), vec2<u32>(6091u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 66886u), vec2<u32>(19389u, 13020u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 37646u), vec2<u32>(22980u, 1u), vec2<u32>(10233u, 4294967295u), vec2<u32>(30606u, 23880u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(1953u, 51459u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(10023u, 4294967295u), vec2<u32>(0u, 0u));

var<private> global2: array<bool, 20> = array<bool, 20>(false, false, true, true, true, false, true, true, false, true, true, false, false, false, true, false, true, true, true, false);

var<private> global3: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(0u, 0u, 1u), vec3<u32>(22088u, 0u, 0u), vec3<u32>(90242u, 45700u, 37621u), vec3<u32>(60070u, 4294967295u, 0u), vec3<u32>(18049u, 27474u, 0u), vec3<u32>(1u, 1u, 2091u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(42758u, 11039u, 4294967295u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(1u, 20681u, 31888u), vec3<u32>(0u, 64581u, 4294967295u), vec3<u32>(0u, 33098u, 51397u), vec3<u32>(27884u, 0u, 81194u), vec3<u32>(83424u, 37076u, 1116u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, 0u, 648u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(4294967295u, 8u)], ~u_input.c.x, -select(abs(vec4<i32>(u_input.a, u_input.b.x, u_input.a, -1i) | vec4<i32>(u_input.a, u_input.b.x, 81983i, u_input.a)), vec4<i32>(select(u_input.a, u_input.b.x, true), -84408i, max(u_input.a, -35763i), 1i), select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 20u)], global2[_wgslsmith_index_u32(u_input.c.x, 20u)], global2[_wgslsmith_index_u32(u_input.c.x, 20u)], true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 20u)], global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(29353u, 20u)]), vec4<bool>(global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(u_input.c.x, 20u)], false, global2[_wgslsmith_index_u32(u_input.c.x, 20u)])), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 20u)], global2[_wgslsmith_index_u32(u_input.c.x, 20u)], global2[_wgslsmith_index_u32(u_input.c.x, 20u)], global2[_wgslsmith_index_u32(14510u, 20u)]), true)));
}

