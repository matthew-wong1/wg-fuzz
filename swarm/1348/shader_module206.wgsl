struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(0u, 11118u), true, i32(-2147483648), vec4<f32>(438f, 346f, 104f, 1308f));

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<u32>(35940u, 17977u), true, 2147483647i, vec4<f32>(-291f, 380f, 995f, -822f)), Struct_1(vec2<u32>(0u, 28851u), true, 1i, vec4<f32>(749f, 798f, -733f, 709f)), Struct_1(vec2<u32>(2150u, 8504u), true, 23074i, vec4<f32>(-257f, -518f, 199f, 479f)), Struct_1(vec2<u32>(11998u, 55239u), true, i32(-2147483648), vec4<f32>(657f, 409f, 185f, -1247f)), Struct_1(vec2<u32>(4731u, 19922u), true, -6946i, vec4<f32>(1040f, 1521f, 1549f, 1000f)), Struct_1(vec2<u32>(4294967295u, 4294967295u), false, 14087i, vec4<f32>(773f, 138f, -1511f, 1000f)), Struct_1(vec2<u32>(1u, 0u), true, 47271i, vec4<f32>(1475f, -1665f, 236f, 364f)), Struct_1(vec2<u32>(28299u, 51471u), false, -1i, vec4<f32>(-473f, 1217f, -1179f, -971f)), Struct_1(vec2<u32>(35243u, 46120u), true, i32(-2147483648), vec4<f32>(511f, 1000f, -2156f, 1954f)), Struct_1(vec2<u32>(48749u, 0u), true, 0i, vec4<f32>(1584f, -111f, 147f, -1011f)), Struct_1(vec2<u32>(101248u, 67637u), false, 19503i, vec4<f32>(-1031f, -702f, 355f, -104f)), Struct_1(vec2<u32>(4294967295u, 4294967295u), false, 16626i, vec4<f32>(-1000f, -497f, 1148f, 1127f)), Struct_1(vec2<u32>(4294967295u, 0u), true, -46736i, vec4<f32>(-593f, 1000f, 634f, -1827f)), Struct_1(vec2<u32>(12871u, 54655u), false, 1i, vec4<f32>(-137f, -386f, 2434f, 1179f)), Struct_1(vec2<u32>(67015u, 18097u), true, -9153i, vec4<f32>(-824f, 388f, -941f, -1133f)), Struct_1(vec2<u32>(6552u, 1u), false, i32(-2147483648), vec4<f32>(396f, -168f, 488f, 958f)), Struct_1(vec2<u32>(1u, 4294967295u), false, 1i, vec4<f32>(-819f, 1469f, 797f, -410f)), Struct_1(vec2<u32>(46279u, 1u), false, -4060i, vec4<f32>(-565f, -303f, -690f, 133f)), Struct_1(vec2<u32>(1u, 0u), false, 19705i, vec4<f32>(922f, 452f, 888f, 494f)), Struct_1(vec2<u32>(40154u, 9104u), true, 26324i, vec4<f32>(-794f, 349f, -692f, 995f)), Struct_1(vec2<u32>(18438u, 62013u), true, -1i, vec4<f32>(-580f, -783f, -452f, 1337f)), Struct_1(vec2<u32>(1u, 16211u), true, i32(-2147483648), vec4<f32>(-546f, 143f, 1667f, -331f)), Struct_1(vec2<u32>(26395u, 46048u), true, 1i, vec4<f32>(1426f, 296f, 379f, 728f)), Struct_1(vec2<u32>(20046u, 0u), false, -1i, vec4<f32>(-735f, 170f, -1284f, 1073f)), Struct_1(vec2<u32>(0u, 12761u), true, 1i, vec4<f32>(-1359f, -443f, 1260f, 827f)), Struct_1(vec2<u32>(4294967295u, 0u), true, 0i, vec4<f32>(-871f, 1000f, 700f, -1059f)), Struct_1(vec2<u32>(1u, 20388u), true, 5468i, vec4<f32>(-437f, 992f, 634f, 426f)), Struct_1(vec2<u32>(0u, 97335u), true, 33520i, vec4<f32>(832f, -1014f, 637f, -790f)), Struct_1(vec2<u32>(30129u, 1u), true, 2147483647i, vec4<f32>(1466f, 267f, 274f, 946f)), Struct_1(vec2<u32>(1u, 1u), true, 2147483647i, vec4<f32>(-939f, 123f, 341f, 524f)), Struct_1(vec2<u32>(17138u, 53776u), true, -24273i, vec4<f32>(1330f, -206f, 1000f, -825f)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1230f, 0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-835f, -289f) + vec2<f32>(global0.d.x, global0.d.x)) * vec2<f32>(global0.d.x, -1660f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(140f, global0.d.x) * global0.d.ww)))), _wgslsmith_f_op_f32(105f * global0.d.x), _wgslsmith_f_op_f32(-global0.d.x));
}

