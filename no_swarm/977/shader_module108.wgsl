struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 23>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 23>();
    global0 = array<Struct_5, 23>();
    let var_0 = Struct_3(-43587i, 0u, select(!vec4<bool>(any(vec3<bool>(false, false, true)), all(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, false)), any(vec3<bool>(true, false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.c > u_input.c), u_input.c <= (i32(-1i) * -1i)), vec4<bool>(true | all(vec3<bool>(false, false, true)), select(any(vec4<bool>(false, true, false, false)), true, true), true, true)), Struct_1(~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c) << (((vec4<u32>(u_input.a.x, u_input.a.x, 24428u, u_input.b.x) << (vec4<u32>(1u, 0u, 0u, 1u) % vec4<u32>(32u))) >> ((u_input.a << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(((vec3<u32>(102238u, 0u, 1924u) >> (u_input.a.www % vec3<u32>(32u))) << (min(vec3<u32>(var_0.b, 0u, u_input.a.x), vec3<u32>(6787u, var_0.b, 112009u)) % vec3<u32>(32u))) & u_input.a.ywy, ~u_input.a.zxy), ~_wgslsmith_add_vec3_u32(min(u_input.a.zyy, vec3<u32>(u_input.a.x, var_0.b, u_input.a.x)), min(vec3<u32>(u_input.b.x, 27232u, 9052u), vec3<u32>(u_input.b.x, var_0.b, 1u))) >> (~vec3<u32>(~var_0.b, firstTrailingBit(1u), 18138u) % vec3<u32>(32u))), 23u)];
    let var_2 = -1150f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, var_1.b.c);
}

