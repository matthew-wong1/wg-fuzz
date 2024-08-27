struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec2<bool>(true, false), Struct_1(-1769f, vec4<u32>(0u, 1u, 61943u, 91524u)), vec2<i32>(0i, 5182i), vec4<f32>(979f, -1243f, -992f, 1000f)), Struct_2(vec2<bool>(true, false), Struct_1(1439f, vec4<u32>(68554u, 76403u, 7731u, 1u)), vec2<i32>(4340i, i32(-2147483648)), vec4<f32>(186f, 1000f, -372f, -1931f)), Struct_2(vec2<bool>(false, true), Struct_1(-2587f, vec4<u32>(1u, 4294967295u, 10194u, 32072u)), vec2<i32>(-21003i, -3580i), vec4<f32>(-727f, 957f, 500f, 290f)), Struct_2(vec2<bool>(true, true), Struct_1(2213f, vec4<u32>(0u, 0u, 1u, 13361u)), vec2<i32>(19184i, i32(-2147483648)), vec4<f32>(-899f, -754f, 1000f, 760f)), Struct_2(vec2<bool>(true, true), Struct_1(-692f, vec4<u32>(4294967295u, 15889u, 63490u, 0u)), vec2<i32>(-1i, 0i), vec4<f32>(-174f, -275f, 954f, -993f)), Struct_2(vec2<bool>(false, true), Struct_1(-408f, vec4<u32>(0u, 1u, 22202u, 28799u)), vec2<i32>(2147483647i, -34602i), vec4<f32>(124f, 483f, 544f, -1904f)), Struct_2(vec2<bool>(true, true), Struct_1(-590f, vec4<u32>(1u, 4294967295u, 1u, 0u)), vec2<i32>(1i, 27396i), vec4<f32>(185f, 2477f, -404f, 1355f)), Struct_2(vec2<bool>(true, true), Struct_1(-2216f, vec4<u32>(4294967295u, 0u, 4294967295u, 914u)), vec2<i32>(-1i, 21520i), vec4<f32>(143f, 886f, -1102f, -2293f)), Struct_2(vec2<bool>(true, false), Struct_1(185f, vec4<u32>(35515u, 0u, 5587u, 0u)), vec2<i32>(18239i, 2147483647i), vec4<f32>(-1696f, 843f, -330f, -1233f)), Struct_2(vec2<bool>(true, false), Struct_1(430f, vec4<u32>(4294967295u, 50798u, 70599u, 48731u)), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<f32>(213f, -655f, -1880f, -854f)), Struct_2(vec2<bool>(false, true), Struct_1(-955f, vec4<u32>(0u, 4153u, 1039u, 1u)), vec2<i32>(0i, 7618i), vec4<f32>(539f, 245f, 231f, 383f)));

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec2<bool>(false, false), Struct_1(558f, vec4<u32>(53353u, 4206u, 1u, 70955u)), vec2<i32>(0i, 0i), vec4<f32>(-974f, -553f, 1132f, -396f)), Struct_2(vec2<bool>(false, false), Struct_1(-353f, vec4<u32>(23034u, 71921u, 0u, 0u)), vec2<i32>(1i, 19205i), vec4<f32>(686f, 471f, 431f, 198f)), Struct_2(vec2<bool>(false, false), Struct_1(-1449f, vec4<u32>(0u, 4145u, 2907u, 4294967295u)), vec2<i32>(1694i, -26368i), vec4<f32>(1000f, 2190f, 1336f, 1908f)), Struct_2(vec2<bool>(false, true), Struct_1(1835f, vec4<u32>(2076u, 50004u, 4294967295u, 17347u)), vec2<i32>(1i, i32(-2147483648)), vec4<f32>(-284f, -893f, 1247f, -299f)), Struct_2(vec2<bool>(true, true), Struct_1(1431f, vec4<u32>(4294967295u, 24435u, 4294967295u, 49881u)), vec2<i32>(-12200i, 1i), vec4<f32>(-1132f, -282f, 1000f, -1079f)), Struct_2(vec2<bool>(true, true), Struct_1(-120f, vec4<u32>(0u, 1u, 13808u, 4294967295u)), vec2<i32>(4808i, -1i), vec4<f32>(-1519f, 594f, -836f, 1078f)), Struct_2(vec2<bool>(true, true), Struct_1(-768f, vec4<u32>(4294967295u, 7974u, 0u, 51350u)), vec2<i32>(-27662i, -41569i), vec4<f32>(-182f, 299f, 915f, 670f)), Struct_2(vec2<bool>(false, false), Struct_1(171f, vec4<u32>(0u, 1u, 25836u, 4294967295u)), vec2<i32>(-1i, 49924i), vec4<f32>(-1388f, 787f, 1397f, 174f)), Struct_2(vec2<bool>(true, false), Struct_1(-1007f, vec4<u32>(0u, 4294967295u, 0u, 0u)), vec2<i32>(47518i, 2147483647i), vec4<f32>(1878f, 904f, -772f, -1439f)), Struct_2(vec2<bool>(true, true), Struct_1(667f, vec4<u32>(28999u, 0u, 0u, 49196u)), vec2<i32>(-4672i, -33802i), vec4<f32>(-1290f, 359f, 1689f, -334f)), Struct_2(vec2<bool>(false, false), Struct_1(-1360f, vec4<u32>(1u, 37357u, 1u, 41547u)), vec2<i32>(46442i, -51502i), vec4<f32>(764f, -1000f, -1000f, -2702f)), Struct_2(vec2<bool>(false, true), Struct_1(354f, vec4<u32>(1u, 20932u, 11085u, 4294967295u)), vec2<i32>(41215i, 22863i), vec4<f32>(119f, -113f, 1000f, -1008f)), Struct_2(vec2<bool>(true, true), Struct_1(-1635f, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)), vec2<i32>(0i, -6780i), vec4<f32>(-133f, 918f, -1477f, 708f)), Struct_2(vec2<bool>(false, false), Struct_1(200f, vec4<u32>(10673u, 12441u, 43498u, 49315u)), vec2<i32>(0i, -1i), vec4<f32>(410f, 1058f, 544f, -243f)), Struct_2(vec2<bool>(true, false), Struct_1(-1705f, vec4<u32>(55010u, 30935u, 40618u, 1u)), vec2<i32>(51138i, -29319i), vec4<f32>(371f, -433f, -140f, -444f)), Struct_2(vec2<bool>(false, true), Struct_1(784f, vec4<u32>(34743u, 0u, 1u, 0u)), vec2<i32>(-6036i, 2147483647i), vec4<f32>(-1539f, 679f, -410f, -1119f)), Struct_2(vec2<bool>(true, false), Struct_1(-475f, vec4<u32>(1u, 36725u, 67541u, 12084u)), vec2<i32>(i32(-2147483648), 1i), vec4<f32>(-1187f, -234f, 1182f, -548f)), Struct_2(vec2<bool>(false, true), Struct_1(-397f, vec4<u32>(59084u, 71412u, 6268u, 40787u)), vec2<i32>(63977i, 12116i), vec4<f32>(-1603f, 937f, -1058f, 1000f)), Struct_2(vec2<bool>(false, true), Struct_1(1508f, vec4<u32>(7056u, 7347u, 0u, 1u)), vec2<i32>(1i, -1i), vec4<f32>(-618f, 427f, -283f, -124f)), Struct_2(vec2<bool>(true, false), Struct_1(-1000f, vec4<u32>(65634u, 0u, 42128u, 48926u)), vec2<i32>(-2888i, -1567i), vec4<f32>(672f, -978f, 1907f, -475f)), Struct_2(vec2<bool>(false, true), Struct_1(973f, vec4<u32>(1u, 26497u, 1u, 3594u)), vec2<i32>(-1i, 1i), vec4<f32>(493f, 811f, -2125f, -419f)), Struct_2(vec2<bool>(true, false), Struct_1(-1000f, vec4<u32>(14710u, 83654u, 1u, 1u)), vec2<i32>(-46122i, 0i), vec4<f32>(-325f, -767f, -1283f, 1338f)), Struct_2(vec2<bool>(false, false), Struct_1(1676f, vec4<u32>(6749u, 40343u, 4294967295u, 0u)), vec2<i32>(0i, 1i), vec4<f32>(-496f, -467f, 449f, 824f)));

var<private> global2: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true));

var<private> global3: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(-33949i, 15413i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(-65629i, -1i, 80543i), vec3<i32>(-1i, -53159i, 0i), vec3<i32>(-16749i, 0i, 44216i), vec3<i32>(-49510i, i32(-2147483648), -12280i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b, ~(~51646u)), 23u)];
    var var_1 = 615f;
    var var_2 = Struct_2(var_0.a, var_0.b, var_0.c, var_0.d);
    global0 = array<Struct_2, 11>();
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_2.b.b.xxx, countOneBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.b.b.x, var_0.b.b.x, 1u), ~select(vec3<u32>(1u, var_0.b.b.x, 97869u), var_0.b.b.wxz, var_0.a.x)))), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-191f - 1000f) + 1039f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-237f + var_0.d.x), -1730f))), var_0.b.a), countOneBits(~(~var_2.b.b.yyy)), -970f);
}

