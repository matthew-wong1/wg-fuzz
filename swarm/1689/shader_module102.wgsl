struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29>;

var<private> global1: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(29300u, 0u, 0u), vec3<u32>(22233u, 1u, 34774u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 46419u, 0u), vec3<u32>(47926u, 17590u, 72495u), vec3<u32>(5900u, 84137u, 11364u), vec3<u32>(13452u, 4294967295u, 4294967295u), vec3<u32>(53565u, 79480u, 33791u), vec3<u32>(42551u, 0u, 1u), vec3<u32>(69971u, 4294967295u, 49797u), vec3<u32>(8982u, 1u, 11570u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 32304u, 39965u), vec3<u32>(47341u, 293u, 4294967295u), vec3<u32>(2189u, 1u, 38314u), vec3<u32>(0u, 1u, 3317u), vec3<u32>(4294967295u, 0u, 33321u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 33322u, 15152u), vec3<u32>(1u, 16755u, 0u), vec3<u32>(96802u, 1u, 0u), vec3<u32>(1u, 59762u, 138347u));

var<private> global2: Struct_2;

var<private> global3: array<f32, 28>;

var<private> global4: array<Struct_4, 28>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(4148u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)]);
    let var_1 = -1352i;
    global4 = array<Struct_4, 28>();
    global4 = array<Struct_4, 28>();
    var_0 = ~_wgslsmith_sub_u32(~abs(61962u), 46151u);
    let x = u_input.a;
    s_output = StorageBuffer(global2.d.zz, 198f);
}

