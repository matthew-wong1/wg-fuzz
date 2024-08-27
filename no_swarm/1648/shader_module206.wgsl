struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
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

var<private> global0: array<bool, 27>;

var<private> global1: array<f32, 8>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(abs(select(~vec4<u32>(u_input.b, 1u, u_input.d.x, u_input.d.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 17220u), vec4<u32>(u_input.d.x, u_input.b, 34528u, u_input.b)), global0[_wgslsmith_index_u32(u_input.d.x, 27u)])), ~vec4<u32>(~u_input.b, u_input.d.x, max(u_input.d.x, u_input.a.x), 13840u)));
}

