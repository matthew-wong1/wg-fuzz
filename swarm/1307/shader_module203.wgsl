struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec4<f32>(-1635f, -1515f, 1920f, -545f), vec2<u32>(88370u, 1u)), Struct_3(vec4<f32>(923f, 1000f, -1719f, -2183f), vec2<u32>(4294967295u, 32010u)), Struct_3(vec4<f32>(656f, 563f, -247f, -733f), vec2<u32>(30790u, 60718u)), Struct_3(vec4<f32>(351f, 1069f, -318f, -550f), vec2<u32>(1u, 1u)), Struct_3(vec4<f32>(118f, 408f, -2684f, 1000f), vec2<u32>(1u, 4294967295u)), Struct_3(vec4<f32>(-1599f, -132f, 1000f, -1000f), vec2<u32>(1u, 1u)), Struct_3(vec4<f32>(-881f, -566f, 454f, -551f), vec2<u32>(1u, 4294967295u)), Struct_3(vec4<f32>(-176f, -296f, -190f, 137f), vec2<u32>(4294967295u, 4294967295u)), Struct_3(vec4<f32>(516f, 484f, 593f, 602f), vec2<u32>(94524u, 0u)), Struct_3(vec4<f32>(987f, 1679f, 958f, 1311f), vec2<u32>(26276u, 4294967295u)), Struct_3(vec4<f32>(-651f, -415f, 154f, -695f), vec2<u32>(1u, 8555u)), Struct_3(vec4<f32>(-561f, -1000f, 865f, -384f), vec2<u32>(1u, 4294967295u)), Struct_3(vec4<f32>(1459f, -1859f, -573f, -804f), vec2<u32>(1u, 7706u)), Struct_3(vec4<f32>(1445f, 836f, -915f, -116f), vec2<u32>(73591u, 35001u)), Struct_3(vec4<f32>(-1770f, 587f, -2160f, 1584f), vec2<u32>(15538u, 1842u)), Struct_3(vec4<f32>(1378f, 147f, 1000f, 1953f), vec2<u32>(4294967295u, 76731u)), Struct_3(vec4<f32>(1000f, 405f, -1454f, -640f), vec2<u32>(101406u, 67103u)));

var<private> global2: array<vec4<u32>, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -global0.d, ~u_input.a.x, 4294967295u);
}

