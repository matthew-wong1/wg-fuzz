struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(-532f, vec4<u32>(9442u, 46682u, 1u, 19415u), 117091u, vec4<i32>(-35195i, 68021i, -7060i, 1i), -364f), Struct_1(1254f, vec4<u32>(37444u, 24113u, 1u, 22065u), 1u, vec4<i32>(-1i, -50640i, 25586i, 0i), 673f), Struct_1(155f, vec4<u32>(59450u, 1597u, 5379u, 1019u), 0u, vec4<i32>(14595i, 51975i, i32(-2147483648), -5702i), -2260f), Struct_1(960f, vec4<u32>(0u, 10425u, 1u, 26925u), 33962u, vec4<i32>(-8329i, 19892i, -1i, 0i), -745f), Struct_1(-667f, vec4<u32>(0u, 4294967295u, 82603u, 4294967295u), 77751u, vec4<i32>(3563i, 1i, 17396i, 0i), 858f), Struct_1(1165f, vec4<u32>(65467u, 2017u, 4853u, 4294967295u), 4294967295u, vec4<i32>(-30744i, 31980i, 2147483647i, -39304i), 424f), Struct_1(414f, vec4<u32>(68167u, 1u, 90410u, 26093u), 43818u, vec4<i32>(47687i, -19861i, 2147483647i, -46263i), 505f), Struct_1(-101f, vec4<u32>(1u, 4454u, 4294967295u, 18387u), 1u, vec4<i32>(1i, 0i, -16554i, -32208i), 658f), Struct_1(-715f, vec4<u32>(40546u, 47587u, 77899u, 1u), 20741u, vec4<i32>(-8287i, 1i, 2147483647i, i32(-2147483648)), -715f), Struct_1(285f, vec4<u32>(0u, 19997u, 0u, 24551u), 4294967295u, vec4<i32>(-1i, 0i, 48400i, -1i), -1666f), Struct_1(1000f, vec4<u32>(4294967295u, 5285u, 4294967295u, 29782u), 1u, vec4<i32>(13062i, 0i, 1i, 1i), -405f), Struct_1(-956f, vec4<u32>(32064u, 26546u, 47841u, 16123u), 4294967295u, vec4<i32>(23067i, i32(-2147483648), -7445i, -1i), 543f), Struct_1(733f, vec4<u32>(1u, 0u, 39249u, 11338u), 1u, vec4<i32>(i32(-2147483648), -32552i, 41699i, -32249i), 117f), Struct_1(872f, vec4<u32>(4294967295u, 0u, 0u, 0u), 1u, vec4<i32>(25659i, 55593i, -4006i, 37762i), 2237f), Struct_1(-946f, vec4<u32>(0u, 47886u, 52613u, 0u), 14507u, vec4<i32>(-1i, 0i, 27160i, i32(-2147483648)), -1053f), Struct_1(-252f, vec4<u32>(4294967295u, 4294967295u, 19446u, 60066u), 58524u, vec4<i32>(-1i, 0i, 0i, -57115i), 660f));

var<private> global1: array<u32, 28>;

var<private> global2: bool;

var<private> global3: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global3 = -637f;
    global1 = array<u32, 28>();
    global3 = 1195f;
    global1 = array<u32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(_wgslsmith_sub_u32(0u, u_input.a) & _wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(u_input.b, 28u)]), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16251u, 28u)], 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 28u)], 28u)], 28u)], 46449u), vec3<u32>(4294967295u, 4294967295u, u_input.a))), global1[_wgslsmith_index_u32(4294967295u, 28u)]);
}

