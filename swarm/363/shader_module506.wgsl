struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: array<f32, 22> = array<f32, 22>(224f, 1253f, 1756f, 685f, 686f, 1009f, 294f, -992f, 895f, -1696f, 1000f, -1654f, -1930f, 1000f, -237f, 373f, 504f, 1340f, 1000f, -1013f, 137f, -1000f);

var<private> global1: array<Struct_4, 22>;

var<private> global2: Struct_4;

var<private> global3: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(vec3<i32>(-1i, 0i, 2147483647i), Struct_3(-1397f, vec3<u32>(1u, 0u, 4294967295u)), 0u, vec3<f32>(515f, -458f, 794f), 1u), Struct_4(vec3<i32>(34193i, 56248i, -34394i), Struct_3(-911f, vec3<u32>(22208u, 0u, 0u)), 18875u, vec3<f32>(1688f, -513f, 368f), 0u), Struct_4(vec3<i32>(-16691i, i32(-2147483648), 28350i), Struct_3(-2575f, vec3<u32>(4294967295u, 1u, 14409u)), 1u, vec3<f32>(1329f, -895f, 110f), 4294967295u), Struct_4(vec3<i32>(i32(-2147483648), 2147483647i, -27080i), Struct_3(1178f, vec3<u32>(20380u, 1u, 1u)), 4294967295u, vec3<f32>(112f, -1062f, -492f), 3836u), Struct_4(vec3<i32>(-11665i, 1i, 1i), Struct_3(988f, vec3<u32>(54153u, 11250u, 0u)), 1u, vec3<f32>(439f, 1521f, 729f), 4294967295u), Struct_4(vec3<i32>(1i, 2147483647i, 2147483647i), Struct_3(1047f, vec3<u32>(1u, 1u, 59748u)), 4644u, vec3<f32>(1223f, -503f, -1426f), 4294967295u), Struct_4(vec3<i32>(-44753i, 0i, -1936i), Struct_3(1000f, vec3<u32>(0u, 102778u, 12235u)), 29290u, vec3<f32>(1232f, -150f, 1233f), 37072u), Struct_4(vec3<i32>(49497i, 1i, -33427i), Struct_3(498f, vec3<u32>(4294967295u, 35085u, 83465u)), 1u, vec3<f32>(-133f, 859f, 720f), 62589u), Struct_4(vec3<i32>(3871i, 0i, -56456i), Struct_3(225f, vec3<u32>(4294967295u, 34286u, 1u)), 39932u, vec3<f32>(-2576f, -484f, 1017f), 5540u), Struct_4(vec3<i32>(-33591i, 1i, i32(-2147483648)), Struct_3(172f, vec3<u32>(1u, 1u, 4294967295u)), 4294967295u, vec3<f32>(-854f, 1433f, -490f), 1u), Struct_4(vec3<i32>(78439i, -42835i, -1i), Struct_3(1154f, vec3<u32>(0u, 46662u, 1u)), 4294967295u, vec3<f32>(1147f, -808f, -2349f), 137350u), Struct_4(vec3<i32>(-43415i, -38944i, 34951i), Struct_3(176f, vec3<u32>(30178u, 84643u, 0u)), 4294967295u, vec3<f32>(482f, -551f, 1698f), 32108u), Struct_4(vec3<i32>(i32(-2147483648), 4731i, 18890i), Struct_3(2126f, vec3<u32>(1u, 14966u, 4294967295u)), 0u, vec3<f32>(-1017f, 425f, -220f), 4294967295u), Struct_4(vec3<i32>(2679i, 21126i, -1i), Struct_3(-2005f, vec3<u32>(3880u, 40044u, 0u)), 42995u, vec3<f32>(1283f, 1124f, 350f), 0u), Struct_4(vec3<i32>(1i, 2018i, i32(-2147483648)), Struct_3(1000f, vec3<u32>(24605u, 59671u, 82174u)), 0u, vec3<f32>(-447f, 1000f, 1864f), 1u), Struct_4(vec3<i32>(-31699i, -91104i, -9151i), Struct_3(-971f, vec3<u32>(1036u, 4294967295u, 18940u)), 51151u, vec3<f32>(-146f, -673f, 337f), 19726u), Struct_4(vec3<i32>(i32(-2147483648), -5765i, 42731i), Struct_3(1139f, vec3<u32>(4294967295u, 19866u, 0u)), 6482u, vec3<f32>(1117f, -1898f, -1771f), 23317u), Struct_4(vec3<i32>(-5985i, 11673i, 0i), Struct_3(-414f, vec3<u32>(9702u, 4294967295u, 4257u)), 0u, vec3<f32>(-1961f, 1415f, 903f), 73476u), Struct_4(vec3<i32>(-1i, 0i, -1i), Struct_3(-710f, vec3<u32>(33919u, 16222u, 48208u)), 13446u, vec3<f32>(1173f, 828f, 1000f), 4294967295u), Struct_4(vec3<i32>(i32(-2147483648), 0i, 1i), Struct_3(486f, vec3<u32>(1u, 0u, 4036u)), 67152u, vec3<f32>(969f, 1000f, 270f), 14290u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), true));
    let var_1 = vec2<f32>(-984f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(9285u, 22u)]) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-2694f, global0[_wgslsmith_index_u32(global2.c, 22u)])))))));
    global3 = array<Struct_4, 20>();
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -720f) * _wgslsmith_div_f32(1882f, _wgslsmith_f_op_f32(-var_1.x))), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 7652u), abs(u_input.a)) >> ((u_input.a | ~(~vec3<u32>(global2.c, u_input.a.x, global2.e))) % vec3<u32>(32u)));
    let var_3 = global2.a.x;
    var var_4 = -1626i;
    var var_5 = var_2.b.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x)));
}

