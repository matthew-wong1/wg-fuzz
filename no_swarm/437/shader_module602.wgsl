// {"0:0":[148,182,140,86,57,120,226,72,106,74,253,49,94,139,15,228,128,66,41,102,52,239,98,92,186,188,228,51,130,28,25,68]}
// Seed: 14642760360027132594

struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<bool>(false, false), vec3<u32>(0u, 9043u, 1u)), Struct_1(vec2<bool>(true, false), vec3<u32>(33152u, 22332u, 0u)));

var<private> global1: array<f32, 28> = array<f32, 28>(-1384f, -439f, -1546f, 874f, 140f, 1000f, 1547f, -896f, 1842f, 443f, 1000f, 179f, -474f, -1176f, 1367f, 1138f, -293f, 1000f, -1733f, 118f, -875f, -196f, -209f, 704f, -201f, 1143f, 1000f, 144f);

var<private> global2: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(26431u, 1u, 62090u)), Struct_1(vec2<bool>(true, false), vec3<u32>(1u, 33984u, 4294967295u))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<u32>(8841u, 0u, 28414u)), Struct_1(vec2<bool>(false, true), vec3<u32>(15550u, 98278u, 4294967295u))), Struct_2(Struct_1(vec2<bool>(true, false), vec3<u32>(5420u, 4294967295u, 4294967295u)), Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 0u, 0u))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<u32>(4294967295u, 29528u, 0u)), Struct_1(vec2<bool>(false, true), vec3<u32>(45361u, 18628u, 0u))), Struct_2(Struct_1(vec2<bool>(true, false), vec3<u32>(0u, 60921u, 11434u)), Struct_1(vec2<bool>(true, false), vec3<u32>(0u, 1u, 4294967295u))), Struct_2(Struct_1(vec2<bool>(false, true), vec3<u32>(0u, 28996u, 0u)), Struct_1(vec2<bool>(false, true), vec3<u32>(0u, 1u, 4294967295u))), Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(vec2<bool>(true, false), vec3<u32>(4294967295u, 0u, 80527u))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<u32>(11631u, 18957u, 38546u)), Struct_1(vec2<bool>(false, false), vec3<u32>(1u, 36977u, 66283u))), Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(4294967295u, 23291u, 31402u)), Struct_1(vec2<bool>(false, true), vec3<u32>(46879u, 4294967295u, 0u))), Struct_2(Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 0u, 0u)), Struct_1(vec2<bool>(true, false), vec3<u32>(45509u, 1u, 21654u))), Struct_2(Struct_1(vec2<bool>(true, false), vec3<u32>(9519u, 33271u, 4294967295u)), Struct_1(vec2<bool>(true, false), vec3<u32>(26343u, 1u, 1u))), Struct_2(Struct_1(vec2<bool>(false, true), vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 20623u, 4294967295u))), Struct_2(Struct_1(vec2<bool>(false, true), vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec2<bool>(false, false), vec3<u32>(0u, 0u, 0u))), Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 0u, 1u)), Struct_1(vec2<bool>(true, false), vec3<u32>(13437u, 4294967295u, 4294967295u))));

var<private> global3: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-1273f, -1115f), vec2<f32>(1002f, 1759f), vec2<f32>(128f, 644f), vec2<f32>(237f, -291f), vec2<f32>(-962f, -988f), vec2<f32>(1792f, -1220f), vec2<f32>(-732f, -1107f), vec2<f32>(-1164f, 942f), vec2<f32>(519f, 273f), vec2<f32>(-586f, 343f), vec2<f32>(-477f, 1072f), vec2<f32>(957f, -871f), vec2<f32>(209f, 1331f), vec2<f32>(-1122f, -131f), vec2<f32>(414f, -703f), vec2<f32>(670f, -1000f), vec2<f32>(342f, 1381f), vec2<f32>(-695f, 1011f), vec2<f32>(199f, -393f));

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var_0 = -10960i;
    global3 = array<vec2<f32>, 19>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(2147483647i, -25913i, ~1i)) - u_input.a);
}

