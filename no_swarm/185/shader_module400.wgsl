struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<f32>(-176f, 1497f), 0i, vec4<bool>(true, true, true, true), true, vec3<i32>(2147483647i, 9524i, -1i)), vec4<bool>(false, true, true, true)), 11261u, -1393f);

var<private> global1: array<u32, 31>;

var<private> global2: array<u32, 26> = array<u32, 26>(37795u, 75u, 21513u, 11323u, 55317u, 4294967295u, 19222u, 33111u, 0u, 22249u, 4294967295u, 5970u, 112639u, 103497u, 101825u, 25869u, 4294967295u, 4294967295u, 9434u, 45144u, 0u, 34808u, 82571u, 79252u, 0u, 0u);

var<private> global3: Struct_3;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec4_u32(var_0, max(u_input.a, vec4<u32>(global2[_wgslsmith_index_u32(global0.b, 26u)], global0.b, var_0.x, var_0.x)))) ^ vec4<u32>(var_0.x, global0.b, abs(u_input.b.x), 1689u), abs(global0.b));
}

