struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false, false, 8302i, vec4<i32>(-47143i, 24397i, 0i, 34945i)), Struct_1(true, false, -1i, vec4<i32>(1i, -1i, 20922i, 19103i)), Struct_1(false, false, 37964i, vec4<i32>(40597i, -33219i, 78122i, 1i)), Struct_1(true, true, 2147483647i, vec4<i32>(-21087i, 27036i, i32(-2147483648), 1i)), Struct_1(true, false, 0i, vec4<i32>(1i, -1i, i32(-2147483648), 1i)), Struct_1(true, true, 8427i, vec4<i32>(9511i, -57288i, 17199i, 11584i)), Struct_1(true, false, 0i, vec4<i32>(2147483647i, -1i, 42700i, -44749i)), Struct_1(false, true, 14279i, vec4<i32>(i32(-2147483648), 0i, -41040i, 41691i)), Struct_1(true, true, 0i, vec4<i32>(4784i, -1i, -45638i, 1i)), Struct_1(false, false, 0i, vec4<i32>(-36238i, -18244i, 0i, 0i)), Struct_1(false, false, 0i, vec4<i32>(1i, 1150i, 11382i, -81135i)));

var<private> global2: array<vec3<f32>, 6>;

var<private> global3: array<Struct_2, 11>;

var<private> global4: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(19029u, 6765u, 2337u, 12657u), vec4<u32>(4294967295u, 106545u, 60575u, 1u), vec4<u32>(4294967295u, 4294967295u, 32243u, 28919u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 21192i;
    global2 = array<vec3<f32>, 6>();
    global1 = array<Struct_1, 11>();
    global1 = array<Struct_1, 11>();
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(~global4[_wgslsmith_index_u32(u_input.a.x, 3u)], vec4<u32>(u_input.a.x, 40253u, 16700u, u_input.a.x)), ~1u, u_input.b.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(82691u, 49252u, 0u, 19284u), u_input.a) % 32u)), _wgslsmith_div_vec4_u32(vec4<u32>(~u_input.b.x, u_input.a.x, 4294967295u, 1u), vec4<u32>(u_input.a.x, ~u_input.a.x, u_input.b.x, 0u))) ^ select(u_input.a.x >> (82044u % 32u), 1u & u_input.b.x, true);
    var var_2 = 34253i;
    global2 = array<vec3<f32>, 6>();
    let var_3 = global3[_wgslsmith_index_u32(~1u, 11u)];
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.c, var_3.a.x);
}

