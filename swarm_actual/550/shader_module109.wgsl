struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(-1000f, 1044f, 909f, 302f), Struct_1(1897f, true, vec2<bool>(false, true), -1066f, vec2<u32>(80584u, 44918u)), vec3<i32>(-39856i, 25683i, 14443i), 6535i, vec3<i32>(-1135i, 1i, -11794i));

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(-354f, false, vec2<bool>(true, false), 664f, vec2<u32>(54637u, 9865u)), Struct_1(1203f, false, vec2<bool>(true, true), 1477f, vec2<u32>(1u, 1u)), Struct_1(-938f, true, vec2<bool>(true, false), -1000f, vec2<u32>(16015u, 4294967295u)), Struct_1(890f, true, vec2<bool>(true, false), 2230f, vec2<u32>(23622u, 51227u)), Struct_1(-678f, true, vec2<bool>(true, false), 1472f, vec2<u32>(4294967295u, 65961u)), Struct_1(1138f, false, vec2<bool>(true, false), -1216f, vec2<u32>(7339u, 0u)), Struct_1(1000f, false, vec2<bool>(true, true), 290f, vec2<u32>(39177u, 2632u)), Struct_1(-1535f, false, vec2<bool>(true, true), 814f, vec2<u32>(1u, 4294967295u)), Struct_1(1763f, false, vec2<bool>(true, false), -212f, vec2<u32>(22702u, 35851u)), Struct_1(1214f, true, vec2<bool>(false, false), -850f, vec2<u32>(115230u, 52785u)), Struct_1(827f, true, vec2<bool>(true, true), -1277f, vec2<u32>(0u, 75458u)), Struct_1(742f, false, vec2<bool>(true, true), -1273f, vec2<u32>(0u, 65078u)), Struct_1(819f, false, vec2<bool>(true, true), -1388f, vec2<u32>(4294967295u, 0u)), Struct_1(-770f, false, vec2<bool>(false, true), 1629f, vec2<u32>(8472u, 1u)), Struct_1(1000f, true, vec2<bool>(true, true), 755f, vec2<u32>(48966u, 1u)), Struct_1(356f, true, vec2<bool>(false, false), -1409f, vec2<u32>(1u, 8492u)));

var<private> global2: vec4<u32>;

var<private> global3: array<Struct_3, 28>;

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b.a;
    global1 = array<Struct_1, 16>();
    let var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.d, reverseBits(47781u));
}

