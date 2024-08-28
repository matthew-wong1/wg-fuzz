struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32;

var<private> global2: bool;

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(false, Struct_1(-567f, vec2<bool>(true, false), vec3<f32>(123f, 1168f, -278f), vec3<u32>(4294967295u, 1u, 4294967295u), 4294967295u), Struct_1(-650f, vec2<bool>(false, false), vec3<f32>(-349f, 409f, -313f), vec3<u32>(1u, 4294967295u, 48527u), 1475u)), Struct_2(false, Struct_1(453f, vec2<bool>(true, true), vec3<f32>(511f, -743f, 1200f), vec3<u32>(2269u, 12167u, 498u), 1u), Struct_1(232f, vec2<bool>(true, false), vec3<f32>(-1946f, -372f, -358f), vec3<u32>(8573u, 15404u, 533u), 108939u)), Struct_2(true, Struct_1(128f, vec2<bool>(true, true), vec3<f32>(1000f, 579f, -475f), vec3<u32>(51858u, 35615u, 4294967295u), 8541u), Struct_1(-1826f, vec2<bool>(false, true), vec3<f32>(1761f, 1057f, 2838f), vec3<u32>(4294967295u, 4294967295u, 0u), 1u)), Struct_2(false, Struct_1(-626f, vec2<bool>(false, true), vec3<f32>(-171f, -1245f, 1000f), vec3<u32>(48513u, 89962u, 4294967295u), 7056u), Struct_1(-2268f, vec2<bool>(false, false), vec3<f32>(-134f, 1480f, -499f), vec3<u32>(1u, 4294967295u, 23002u), 24748u)), Struct_2(false, Struct_1(148f, vec2<bool>(true, true), vec3<f32>(641f, 521f, 894f), vec3<u32>(4294967295u, 7791u, 1u), 4294967295u), Struct_1(-185f, vec2<bool>(false, true), vec3<f32>(876f, -1000f, -482f), vec3<u32>(1u, 19966u, 90233u), 1u)), Struct_2(false, Struct_1(-1885f, vec2<bool>(false, false), vec3<f32>(-170f, 2446f, -649f), vec3<u32>(1u, 1u, 79458u), 1u), Struct_1(-507f, vec2<bool>(false, true), vec3<f32>(-1196f, -967f, -1839f), vec3<u32>(0u, 17375u, 1u), 1u)), Struct_2(true, Struct_1(814f, vec2<bool>(false, false), vec3<f32>(-1881f, 135f, 432f), vec3<u32>(1u, 0u, 4294967295u), 5782u), Struct_1(-1150f, vec2<bool>(true, true), vec3<f32>(-361f, -1000f, 363f), vec3<u32>(13447u, 4294967295u, 1u), 26942u)), Struct_2(true, Struct_1(-199f, vec2<bool>(false, false), vec3<f32>(-105f, -179f, -1181f), vec3<u32>(4294967295u, 19801u, 331u), 1u), Struct_1(252f, vec2<bool>(false, true), vec3<f32>(1304f, -586f, 1544f), vec3<u32>(4294967295u, 67075u, 0u), 69101u)), Struct_2(true, Struct_1(-446f, vec2<bool>(true, false), vec3<f32>(-612f, -652f, -613f), vec3<u32>(4294967295u, 1u, 54869u), 0u), Struct_1(687f, vec2<bool>(true, true), vec3<f32>(1000f, 1293f, 1663f), vec3<u32>(0u, 55883u, 57697u), 32939u)), Struct_2(false, Struct_1(395f, vec2<bool>(true, true), vec3<f32>(279f, 898f, -100f), vec3<u32>(1u, 4294967295u, 0u), 1u), Struct_1(-898f, vec2<bool>(true, false), vec3<f32>(1247f, 368f, -2032f), vec3<u32>(0u, 46337u, 4294967295u), 16864u)), Struct_2(true, Struct_1(1334f, vec2<bool>(true, true), vec3<f32>(1000f, 581f, 497f), vec3<u32>(4294967295u, 4294967295u, 0u), 28630u), Struct_1(599f, vec2<bool>(false, false), vec3<f32>(342f, -138f, 534f), vec3<u32>(25776u, 1u, 4294967295u), 34580u)));

var<private> global4: array<bool, 10>;

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

