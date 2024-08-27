struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
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

var<private> global0: vec2<i32> = vec2<i32>(-8693i, 1i);

var<private> global1: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-593f, 1144f, 1461f, -479f), vec4<f32>(574f, -1337f, 1042f, -128f), vec4<f32>(1289f, 704f, -1630f, -1000f), vec4<f32>(114f, 512f, -1285f, 165f), vec4<f32>(-452f, 499f, -323f, 144f), vec4<f32>(-1017f, 241f, 409f, 1000f), vec4<f32>(-1129f, -1151f, -1189f, -145f), vec4<f32>(-898f, -1134f, 1176f, -1900f), vec4<f32>(441f, 935f, -768f, 878f), vec4<f32>(-1060f, 210f, 102f, -1995f), vec4<f32>(-952f, -1068f, -221f, 1053f), vec4<f32>(-924f, -993f, 1986f, -965f), vec4<f32>(153f, -453f, -235f, 1004f), vec4<f32>(-1323f, 1000f, -361f, 1401f), vec4<f32>(-1949f, 1016f, 906f, 161f), vec4<f32>(1019f, -426f, 947f, -742f), vec4<f32>(-369f, 519f, -1863f, -338f), vec4<f32>(-1019f, -149f, -546f, -1000f), vec4<f32>(1926f, 955f, 848f, 2561f), vec4<f32>(-349f, 1760f, -1000f, 125f), vec4<f32>(1503f, -349f, -791f, -1000f), vec4<f32>(-583f, -2044f, -227f, 1384f), vec4<f32>(-1103f, 872f, -528f, -1270f), vec4<f32>(-957f, -2066f, 127f, 619f), vec4<f32>(-945f, -1544f, 299f, 1160f), vec4<f32>(433f, -1074f, 1418f, -695f), vec4<f32>(-901f, 227f, -680f, -484f), vec4<f32>(-2073f, -675f, -832f, 942f), vec4<f32>(-1000f, 663f, 326f, 969f), vec4<f32>(1000f, -268f, 1090f, 1251f));

var<private> global2: array<vec2<i32>, 8>;

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(102447u, 0i, vec2<bool>(false, false)), Struct_1(19394u, 23899i, vec2<bool>(true, true)), Struct_1(0u, -45497i, vec2<bool>(false, false)), Struct_1(0u, 9701i, vec2<bool>(false, false)), Struct_1(1u, 0i, vec2<bool>(true, true)), Struct_1(4294967295u, 0i, vec2<bool>(false, false)), Struct_1(4294967295u, 1i, vec2<bool>(false, true)), Struct_1(77263u, 14762i, vec2<bool>(false, false)), Struct_1(64684u, 1i, vec2<bool>(true, true)), Struct_1(1u, 2147483647i, vec2<bool>(false, false)), Struct_1(4294967295u, -1i, vec2<bool>(true, true)), Struct_1(4294967295u, -1i, vec2<bool>(false, true)), Struct_1(27675u, -5303i, vec2<bool>(true, false)), Struct_1(1u, 2147483647i, vec2<bool>(true, false)), Struct_1(1u, -1i, vec2<bool>(false, false)), Struct_1(0u, 90675i, vec2<bool>(true, false)), Struct_1(0u, 2147483647i, vec2<bool>(true, true)), Struct_1(1969u, 2147483647i, vec2<bool>(true, false)), Struct_1(61958u, 2147483647i, vec2<bool>(true, false)), Struct_1(48249u, -20143i, vec2<bool>(true, true)), Struct_1(37260u, -19495i, vec2<bool>(true, true)), Struct_1(11328u, 1i, vec2<bool>(false, false)), Struct_1(1u, -1i, vec2<bool>(true, true)), Struct_1(0u, -1i, vec2<bool>(false, false)), Struct_1(1u, 1182i, vec2<bool>(true, true)), Struct_1(55048u, 28249i, vec2<bool>(true, false)), Struct_1(33928u, 37526i, vec2<bool>(false, true)));

var<private> global4: array<bool, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 27u)];
    global4 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(15845i);
}

