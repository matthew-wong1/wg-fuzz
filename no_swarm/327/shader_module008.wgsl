struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(51935i, -8744i, 0i, 31268i, -27431i, 28663i, i32(-2147483648), -1i, 21652i, i32(-2147483648), 12948i, i32(-2147483648), 10482i, -5259i, i32(-2147483648));

var<private> global1: array<bool, 29>;

var<private> global2: array<f32, 12> = array<f32, 12>(-444f, -1223f, 866f, -1511f, -1851f, 113f, 1000f, 858f, -590f, 1632f, -1491f, 166f);

var<private> global3: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(107f, 1029f, 976f, -541f), vec4<f32>(1376f, 1275f, 1310f, -142f), vec4<f32>(-1017f, -320f, 503f, -929f), vec4<f32>(564f, 257f, 778f, -1869f), vec4<f32>(-101f, 1066f, 570f, 1192f), vec4<f32>(-1254f, 390f, 1000f, -233f), vec4<f32>(1000f, -899f, 629f, 911f), vec4<f32>(133f, 1037f, 1056f, -178f), vec4<f32>(-471f, -229f, 1273f, 120f), vec4<f32>(187f, -1188f, -1106f, 1130f), vec4<f32>(1000f, -134f, 675f, 1269f), vec4<f32>(916f, 316f, -1242f, 211f), vec4<f32>(-427f, -1479f, 1280f, -1957f), vec4<f32>(161f, -261f, -268f, -101f), vec4<f32>(-1869f, -179f, -218f, -614f), vec4<f32>(204f, -157f, 258f, 1345f), vec4<f32>(1756f, -899f, -1000f, -1000f), vec4<f32>(-925f, -995f, 544f, -1000f), vec4<f32>(1267f, -401f, 617f, -1311f), vec4<f32>(-173f, -223f, -1504f, -1760f), vec4<f32>(426f, -1175f, 1751f, -1000f), vec4<f32>(-977f, 1000f, -1324f, -1459f), vec4<f32>(506f, 544f, 262f, 495f), vec4<f32>(-308f, 338f, -580f, -413f), vec4<f32>(-640f, -492f, 286f, -1756f), vec4<f32>(131f, 1253f, -491f, -1000f), vec4<f32>(-449f, -633f, 137f, -1000f), vec4<f32>(-1116f, 2038f, 458f, 375f), vec4<f32>(353f, -387f, 347f, 286f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 4294967295u), global1[_wgslsmith_index_u32(u_input.b, 29u)]))));
}

