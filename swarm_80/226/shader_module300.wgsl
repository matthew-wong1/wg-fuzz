struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec2<f32>(-856f, 125f), vec2<bool>(true, true)), Struct_1(vec2<f32>(-328f, 1000f), vec2<bool>(true, true)), Struct_1(vec2<f32>(933f, 970f), vec2<bool>(false, false)), -1769f);

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec2<f32>(-1219f, -1000f), vec2<bool>(false, true)), Struct_1(vec2<f32>(802f, 761f), vec2<bool>(true, true)), Struct_1(vec2<f32>(-525f, 466f), vec2<bool>(false, false)), 2266f), Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec2<f32>(576f, -175f), vec2<bool>(false, false)), Struct_1(vec2<f32>(-824f, -625f), vec2<bool>(false, true)), Struct_1(vec2<f32>(775f, -1751f), vec2<bool>(false, false)), -1608f), Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec2<f32>(649f, -625f), vec2<bool>(false, true)), Struct_1(vec2<f32>(-297f, -1000f), vec2<bool>(true, false)), Struct_1(vec2<f32>(1719f, -1000f), vec2<bool>(true, false)), 1461f), Struct_2(vec4<bool>(true, false, true, false), Struct_1(vec2<f32>(623f, 1103f), vec2<bool>(true, false)), Struct_1(vec2<f32>(-1255f, 260f), vec2<bool>(true, false)), Struct_1(vec2<f32>(-547f, 243f), vec2<bool>(true, false)), -860f), Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec2<f32>(1003f, 284f), vec2<bool>(true, false)), Struct_1(vec2<f32>(-1000f, -1000f), vec2<bool>(true, true)), Struct_1(vec2<f32>(466f, 738f), vec2<bool>(false, true)), -307f), Struct_2(vec4<bool>(true, false, false, false), Struct_1(vec2<f32>(-746f, -1031f), vec2<bool>(false, false)), Struct_1(vec2<f32>(940f, 2583f), vec2<bool>(true, false)), Struct_1(vec2<f32>(-491f, 868f), vec2<bool>(false, true)), -893f), Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec2<f32>(730f, -836f), vec2<bool>(true, false)), Struct_1(vec2<f32>(311f, -2843f), vec2<bool>(false, false)), Struct_1(vec2<f32>(-205f, -123f), vec2<bool>(true, false)), 2414f), Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec2<f32>(299f, -1117f), vec2<bool>(true, false)), Struct_1(vec2<f32>(-258f, 193f), vec2<bool>(true, false)), Struct_1(vec2<f32>(-1858f, 814f), vec2<bool>(false, false)), 1023f), Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec2<f32>(-247f, -434f), vec2<bool>(true, true)), Struct_1(vec2<f32>(-778f, 1273f), vec2<bool>(false, true)), Struct_1(vec2<f32>(473f, -1000f), vec2<bool>(false, true)), 1159f), Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec2<f32>(530f, 1938f), vec2<bool>(true, true)), Struct_1(vec2<f32>(-1118f, -1000f), vec2<bool>(true, true)), Struct_1(vec2<f32>(170f, 522f), vec2<bool>(true, false)), -288f));

var<private> global2: array<i32, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(u_input.a, 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(global0.d.a.x);
}

