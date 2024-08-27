struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

var<private> global2: Struct_3;

var<private> global3: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(284f, Struct_1(-722f, -1567f), 933f, vec3<f32>(787f, -543f, 306f), Struct_1(335f, -998f)), Struct_2(-1332f, Struct_1(811f, 1361f), 1236f, vec3<f32>(-1000f, 320f, -1000f), Struct_1(-1615f, -1000f)), Struct_2(234f, Struct_1(-153f, 811f), -2592f, vec3<f32>(320f, 1029f, 1187f), Struct_1(1278f, 1169f)), Struct_2(-982f, Struct_1(-162f, -404f), -400f, vec3<f32>(404f, 831f, -524f), Struct_1(-832f, -1000f)), Struct_2(-1070f, Struct_1(442f, -795f), 228f, vec3<f32>(734f, 147f, -553f), Struct_1(-204f, 1543f)), Struct_2(-317f, Struct_1(582f, -1971f), -2466f, vec3<f32>(-264f, -1880f, 172f), Struct_1(-415f, -364f)), Struct_2(1000f, Struct_1(151f, -622f), -461f, vec3<f32>(-922f, -1112f, 553f), Struct_1(-1000f, 324f)), Struct_2(-1000f, Struct_1(1357f, 699f), -264f, vec3<f32>(-601f, -4293f, 945f), Struct_1(-1000f, -1794f)), Struct_2(1000f, Struct_1(-1613f, -443f), -1317f, vec3<f32>(976f, 1066f, 506f), Struct_1(1630f, 167f)), Struct_2(-1000f, Struct_1(-117f, -2436f), 680f, vec3<f32>(-1403f, -1507f, -515f), Struct_1(2592f, 380f)), Struct_2(-118f, Struct_1(1440f, -1990f), 408f, vec3<f32>(493f, 208f, -500f), Struct_1(414f, -189f)), Struct_2(-615f, Struct_1(-1638f, -268f), 472f, vec3<f32>(-234f, -205f, 535f), Struct_1(517f, 401f)), Struct_2(112f, Struct_1(620f, 241f), -1246f, vec3<f32>(1028f, -928f, -430f), Struct_1(937f, -457f)), Struct_2(-655f, Struct_1(569f, -523f), 739f, vec3<f32>(1000f, 747f, 200f), Struct_1(-804f, -1000f)), Struct_2(3765f, Struct_1(402f, 1016f), 1000f, vec3<f32>(1285f, 786f, 2223f), Struct_1(-124f, 919f)), Struct_2(-1000f, Struct_1(-494f, 1371f), 1418f, vec3<f32>(-339f, -331f, -1000f), Struct_1(-103f, 1044f)), Struct_2(-2010f, Struct_1(938f, -108f), 2247f, vec3<f32>(1466f, -1583f, -585f), Struct_1(1479f, 261f)), Struct_2(-194f, Struct_1(-917f, -863f), 629f, vec3<f32>(1728f, -1117f, -1000f), Struct_1(-129f, -306f)), Struct_2(-265f, Struct_1(1164f, -217f), -446f, vec3<f32>(164f, 1482f, 714f), Struct_1(1914f, -890f)), Struct_2(1000f, Struct_1(754f, -645f), 738f, vec3<f32>(-1026f, -1204f, 441f), Struct_1(-1652f, -728f)), Struct_2(162f, Struct_1(1000f, 1494f), 115f, vec3<f32>(718f, 566f, 365f), Struct_1(-117f, 1355f)), Struct_2(-2297f, Struct_1(1867f, -594f), -182f, vec3<f32>(-671f, -1000f, 1311f), Struct_1(208f, 2810f)), Struct_2(833f, Struct_1(-1356f, -1670f), 1349f, vec3<f32>(-213f, -1194f, -368f), Struct_1(-890f, -1328f)), Struct_2(129f, Struct_1(1000f, -266f), -933f, vec3<f32>(270f, 231f, 1033f), Struct_1(-268f, -2340f)), Struct_2(-539f, Struct_1(706f, 702f), -1216f, vec3<f32>(-1487f, -412f, 507f), Struct_1(779f, 1285f)));

var<private> global4: array<Struct_4, 9>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -abs(_wgslsmith_sub_i32(-global2.c, ~global2.c));
    global0 = u_input.b;
    global0 = firstTrailingBit(~(~global2.b));
    let var_1 = true;
    let var_2 = select(vec2<bool>(true, !(!var_1 | true)), vec2<bool>(true, global2.d.a <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.c * global2.d.a))), true);
    let var_3 = ~_wgslsmith_mod_i32(0i, ~14894i ^ _wgslsmith_add_i32(var_0, 1107i)) < _wgslsmith_sub_i32(reverseBits(_wgslsmith_mult_i32(var_0 >> (1u % 32u), global2.c)), global2.c);
    var var_4 = (~(~u_input.c | 0u) ^ (u_input.a.x | (9065u << (_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) % 32u)))) == ~_wgslsmith_sub_u32(firstTrailingBit(u_input.b), ~u_input.d ^ 12275u);
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.d.zz, 0u);
}

