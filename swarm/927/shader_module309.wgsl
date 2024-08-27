struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(true, true, false, false, false, false, false);

var<private> global1: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(431f, -1813f, 807f), vec3<f32>(1631f, -618f, -840f), vec3<f32>(-1169f, -1541f, 193f), vec3<f32>(-899f, -1000f, -323f), vec3<f32>(1367f, -262f, 1085f), vec3<f32>(-158f, -414f, -976f), vec3<f32>(1264f, -1341f, 380f), vec3<f32>(1835f, 284f, -611f), vec3<f32>(-2156f, -577f, 184f), vec3<f32>(-130f, 1117f, -834f), vec3<f32>(-1846f, 662f, 825f), vec3<f32>(753f, 742f, -1000f), vec3<f32>(221f, 762f, -1014f), vec3<f32>(-319f, -344f, 297f), vec3<f32>(1404f, -536f, -1858f), vec3<f32>(-783f, 820f, 1000f), vec3<f32>(-581f, -215f, 1517f), vec3<f32>(-2142f, -149f, 402f), vec3<f32>(595f, -241f, -1531f), vec3<f32>(1000f, -163f, 152f), vec3<f32>(-183f, 677f, 690f), vec3<f32>(2268f, -763f, -1504f), vec3<f32>(-1000f, 1337f, 1000f), vec3<f32>(191f, -467f, 644f), vec3<f32>(1909f, 1000f, -150f), vec3<f32>(-810f, -233f, 748f), vec3<f32>(-1516f, 156f, 136f));

var<private> global2: Struct_3;

var<private> global3: u32;

var<private> global4: Struct_3 = Struct_3(Struct_2(Struct_1(vec3<u32>(1u, 94792u, 4294967295u), 14215u), Struct_1(vec3<u32>(64991u, 21565u, 4294967295u), 0u), 4294967295u, -1i, Struct_1(vec3<u32>(1u, 1846u, 30117u), 49020u)), 7161u, -1292f, Struct_1(vec3<u32>(4294967295u, 3989u, 0u), 74280u), 0u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-1i >> (~_wgslsmith_dot_vec2_u32(min(global2.a.e.a.zy, global2.a.e.a.zz), vec2<u32>(global4.a.e.a.x, u_input.b)) % 32u));
}

