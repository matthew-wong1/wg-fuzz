struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(12722u, 1006u, 1u, 1u, 1u, 0u, 61214u, 59726u, 1u, 36364u, 4444u, 11609u, 0u, 4294967295u, 14813u, 18633u, 38625u, 10261u, 1u, 17514u, 0u);

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<f32>(-1168f, -892f, 1394f), i32(-2147483648), vec2<bool>(true, false)), Struct_1(vec3<f32>(-2443f, -135f, -248f), 1i, vec2<bool>(false, true)), Struct_1(vec3<f32>(-772f, -662f, -937f), 1i, vec2<bool>(true, true)), Struct_1(vec3<f32>(277f, -1400f, -149f), -1i, vec2<bool>(true, false)), Struct_1(vec3<f32>(224f, -513f, 1133f), 2147483647i, vec2<bool>(false, false)), Struct_1(vec3<f32>(356f, 1476f, 354f), -1i, vec2<bool>(true, true)), Struct_1(vec3<f32>(2363f, 2028f, 1013f), 1i, vec2<bool>(true, true)), Struct_1(vec3<f32>(385f, -395f, -1173f), -19409i, vec2<bool>(true, false)), Struct_1(vec3<f32>(-578f, -356f, -879f), i32(-2147483648), vec2<bool>(true, true)), Struct_1(vec3<f32>(1385f, 227f, 133f), 2147483647i, vec2<bool>(true, false)), Struct_1(vec3<f32>(376f, 550f, 641f), 46456i, vec2<bool>(true, true)), Struct_1(vec3<f32>(765f, 695f, 1087f), 2147483647i, vec2<bool>(false, false)), Struct_1(vec3<f32>(789f, -1798f, 227f), 1i, vec2<bool>(false, false)), Struct_1(vec3<f32>(-1339f, 2696f, 810f), -1i, vec2<bool>(false, true)), Struct_1(vec3<f32>(-2023f, 1138f, 791f), 2147483647i, vec2<bool>(true, true)), Struct_1(vec3<f32>(-241f, -300f, 814f), 1i, vec2<bool>(true, false)), Struct_1(vec3<f32>(-116f, -2231f, -1300f), -1i, vec2<bool>(false, true)), Struct_1(vec3<f32>(-988f, -939f, -1128f), 37463i, vec2<bool>(true, false)), Struct_1(vec3<f32>(-359f, 218f, -585f), 2147483647i, vec2<bool>(true, true)), Struct_1(vec3<f32>(1969f, -1000f, 1031f), 1i, vec2<bool>(false, false)), Struct_1(vec3<f32>(205f, -141f, -1219f), 10412i, vec2<bool>(false, false)), Struct_1(vec3<f32>(210f, 1068f, 283f), 0i, vec2<bool>(true, false)), Struct_1(vec3<f32>(-1420f, -1816f, -522f), -80169i, vec2<bool>(false, false)), Struct_1(vec3<f32>(504f, -1145f, 628f), -48498i, vec2<bool>(false, false)), Struct_1(vec3<f32>(-281f, 1000f, -697f), 1i, vec2<bool>(true, true)), Struct_1(vec3<f32>(-1123f, -1199f, -1006f), 45330i, vec2<bool>(true, false)), Struct_1(vec3<f32>(-347f, 516f, -301f), -40781i, vec2<bool>(false, false)), Struct_1(vec3<f32>(-1433f, -1109f, 208f), -35581i, vec2<bool>(true, false)), Struct_1(vec3<f32>(-439f, -949f, -867f), 15736i, vec2<bool>(false, true)), Struct_1(vec3<f32>(1000f, -1025f, -300f), 15314i, vec2<bool>(true, false)), Struct_1(vec3<f32>(-290f, -103f, 483f), -40056i, vec2<bool>(false, false)));

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(2128f, vec3<bool>(false, true, false), Struct_1(vec3<f32>(135f, 1109f, 2085f), 0i, vec2<bool>(false, false)), vec4<u32>(28353u, 4294967295u, 8283u, 23657u)), Struct_2(1000f, vec3<bool>(true, true, false), Struct_1(vec3<f32>(379f, 1038f, -175f), 2147483647i, vec2<bool>(false, true)), vec4<u32>(14917u, 17363u, 77386u, 10468u)), Struct_2(982f, vec3<bool>(true, false, false), Struct_1(vec3<f32>(-1500f, 482f, -445f), -54082i, vec2<bool>(false, true)), vec4<u32>(2289u, 4294967295u, 106181u, 57320u)), Struct_2(-622f, vec3<bool>(false, false, true), Struct_1(vec3<f32>(639f, -1006f, 1000f), i32(-2147483648), vec2<bool>(true, true)), vec4<u32>(38684u, 4294967295u, 25812u, 1u)), Struct_2(-1000f, vec3<bool>(true, true, false), Struct_1(vec3<f32>(513f, -255f, -859f), -1i, vec2<bool>(true, true)), vec4<u32>(0u, 1u, 1u, 1u)));

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(1035f, vec3<bool>(true, false, false), Struct_1(vec3<f32>(-137f, -1004f, -512f), 0i, vec2<bool>(false, true)), vec4<u32>(49585u, 5764u, 33763u, 1u)), Struct_2(-1984f, vec3<bool>(false, false, false), Struct_1(vec3<f32>(977f, -859f, -122f), -1i, vec2<bool>(true, true)), vec4<u32>(1u, 20295u, 0u, 0u)), Struct_2(-1025f, vec3<bool>(false, false, false), Struct_1(vec3<f32>(1000f, -533f, 2101f), 2147483647i, vec2<bool>(true, true)), vec4<u32>(4294967295u, 35575u, 1u, 1u)), Struct_2(433f, vec3<bool>(false, true, false), Struct_1(vec3<f32>(-386f, 504f, -234f), 2147483647i, vec2<bool>(true, true)), vec4<u32>(16223u, 0u, 1u, 18303u)), Struct_2(-500f, vec3<bool>(true, false, false), Struct_1(vec3<f32>(-1281f, -1234f, 550f), -1464i, vec2<bool>(false, true)), vec4<u32>(0u, 33578u, 22334u, 4294967295u)), Struct_2(219f, vec3<bool>(true, false, true), Struct_1(vec3<f32>(345f, 396f, 1178f), -1i, vec2<bool>(true, true)), vec4<u32>(0u, 1u, 4294967295u, 0u)), Struct_2(-989f, vec3<bool>(true, true, true), Struct_1(vec3<f32>(-142f, -1744f, 401f), 18272i, vec2<bool>(false, true)), vec4<u32>(4294967295u, 4294967295u, 0u, 79816u)), Struct_2(-612f, vec3<bool>(false, false, true), Struct_1(vec3<f32>(-206f, -1151f, 1000f), 0i, vec2<bool>(true, false)), vec4<u32>(4294967295u, 0u, 52898u, 89577u)), Struct_2(-110f, vec3<bool>(true, false, true), Struct_1(vec3<f32>(1000f, -149f, 640f), 0i, vec2<bool>(false, false)), vec4<u32>(83410u, 12781u, 119079u, 0u)), Struct_2(-631f, vec3<bool>(false, true, true), Struct_1(vec3<f32>(-1102f, 2578f, 314f), 29351i, vec2<bool>(true, true)), vec4<u32>(0u, 1u, 0u, 0u)), Struct_2(-371f, vec3<bool>(false, true, true), Struct_1(vec3<f32>(-1000f, -1000f, 773f), i32(-2147483648), vec2<bool>(true, true)), vec4<u32>(8568u, 44402u, 4294967295u, 4294967295u)), Struct_2(961f, vec3<bool>(true, true, false), Struct_1(vec3<f32>(-265f, -373f, -239f), -2993i, vec2<bool>(true, true)), vec4<u32>(0u, 20238u, 20463u, 4294967295u)), Struct_2(-2296f, vec3<bool>(true, false, false), Struct_1(vec3<f32>(1935f, -1944f, 1913f), 46081i, vec2<bool>(true, true)), vec4<u32>(16089u, 8591u, 4294967295u, 3306u)), Struct_2(616f, vec3<bool>(true, false, false), Struct_1(vec3<f32>(318f, -817f, 253f), -33493i, vec2<bool>(true, true)), vec4<u32>(12655u, 4294967295u, 91520u, 104911u)), Struct_2(1118f, vec3<bool>(true, true, true), Struct_1(vec3<f32>(-395f, 498f, -1000f), 1i, vec2<bool>(true, false)), vec4<u32>(0u, 3107u, 19936u, 74469u)), Struct_2(-2486f, vec3<bool>(true, false, true), Struct_1(vec3<f32>(-793f, 1917f, -1000f), 0i, vec2<bool>(true, true)), vec4<u32>(22858u, 0u, 54027u, 0u)), Struct_2(-197f, vec3<bool>(true, false, true), Struct_1(vec3<f32>(-2459f, -1193f, 1361f), 28711i, vec2<bool>(false, false)), vec4<u32>(6729u, 1u, 0u, 79957u)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 31>();
    let var_0 = firstTrailingBit(vec3<i32>(firstLeadingBit(29700i), -1200i, select(1i, max(2147483647i, firstTrailingBit(45628i)), false)));
    global2 = array<Struct_2, 5>();
    var var_1 = select(vec3<bool>(true, !select(false, true, any(vec3<bool>(true, false, true))), true), !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))), select(vec3<bool>(true, all(vec2<bool>(false, true)), all(vec2<bool>(true, true))), !vec3<bool>(true, select(false, false, false), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, -vec3<i32>(min(abs(var_0.x), var_0.x), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(9915i, -2288i, -8512i), var_0)), -2147483647i), var_0.x);
}

