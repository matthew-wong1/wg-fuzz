struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 31204u;

var<private> global1: i32;

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(true, vec4<bool>(false, false, true, false), vec2<i32>(35654i, -28640i), vec3<bool>(false, true, false), vec2<f32>(-524f, -1328f)), Struct_1(true, vec4<bool>(false, true, false, false), vec2<i32>(2147483647i, -41797i), vec3<bool>(true, true, false), vec2<f32>(-863f, 615f)), vec4<u32>(1u, 10477u, 40138u, 4294967295u), Struct_1(true, vec4<bool>(true, false, true, true), vec2<i32>(65032i, i32(-2147483648)), vec3<bool>(false, false, true), vec2<f32>(-383f, -856f))), Struct_2(vec2<u32>(8114u, 12440u), Struct_1(false, vec4<bool>(false, true, true, false), vec2<i32>(0i, i32(-2147483648)), vec3<bool>(true, true, false), vec2<f32>(532f, 1000f)), Struct_1(true, vec4<bool>(false, false, true, true), vec2<i32>(22140i, -1i), vec3<bool>(false, false, true), vec2<f32>(1952f, -1460f)), vec4<u32>(4294967295u, 35806u, 4450u, 1u), Struct_1(true, vec4<bool>(false, true, false, true), vec2<i32>(1i, -25272i), vec3<bool>(true, true, false), vec2<f32>(709f, 186f))), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(false, vec4<bool>(false, true, false, true), vec2<i32>(i32(-2147483648), 1i), vec3<bool>(true, false, false), vec2<f32>(-499f, 1682f)), Struct_1(false, vec4<bool>(true, false, false, false), vec2<i32>(1i, 20293i), vec3<bool>(false, true, false), vec2<f32>(1350f, 1479f)), vec4<u32>(10685u, 4294967295u, 4294967295u, 1u), Struct_1(false, vec4<bool>(true, false, false, false), vec2<i32>(i32(-2147483648), 0i), vec3<bool>(false, true, false), vec2<f32>(181f, -1868f))), Struct_2(vec2<u32>(15169u, 1u), Struct_1(true, vec4<bool>(false, true, true, false), vec2<i32>(2147483647i, 1i), vec3<bool>(false, false, false), vec2<f32>(-508f, 1037f)), Struct_1(true, vec4<bool>(false, false, true, false), vec2<i32>(0i, 0i), vec3<bool>(true, true, false), vec2<f32>(-713f, -576f)), vec4<u32>(34627u, 4294967295u, 1u, 82425u), Struct_1(true, vec4<bool>(false, false, false, true), vec2<i32>(-1i, 15282i), vec3<bool>(false, true, false), vec2<f32>(-227f, 190f))), Struct_2(vec2<u32>(38654u, 10647u), Struct_1(false, vec4<bool>(false, true, false, false), vec2<i32>(-1i, 2147483647i), vec3<bool>(true, false, true), vec2<f32>(-1211f, 238f)), Struct_1(true, vec4<bool>(false, true, true, true), vec2<i32>(54317i, 11835i), vec3<bool>(true, false, false), vec2<f32>(1000f, -1000f)), vec4<u32>(4294967295u, 87665u, 0u, 39285u), Struct_1(true, vec4<bool>(true, false, true, false), vec2<i32>(-16261i, 9722i), vec3<bool>(true, true, false), vec2<f32>(860f, 768f))), Struct_2(vec2<u32>(4294967295u, 19342u), Struct_1(false, vec4<bool>(true, true, true, true), vec2<i32>(i32(-2147483648), 40672i), vec3<bool>(true, true, true), vec2<f32>(-930f, -897f)), Struct_1(true, vec4<bool>(false, true, false, true), vec2<i32>(i32(-2147483648), 2147483647i), vec3<bool>(true, false, false), vec2<f32>(484f, -1000f)), vec4<u32>(0u, 0u, 50715u, 28003u), Struct_1(true, vec4<bool>(true, true, true, true), vec2<i32>(9864i, 0i), vec3<bool>(false, true, false), vec2<f32>(-481f, -701f))), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(true, vec4<bool>(false, false, true, true), vec2<i32>(6305i, -33255i), vec3<bool>(true, true, false), vec2<f32>(-456f, -2464f)), Struct_1(false, vec4<bool>(false, true, false, true), vec2<i32>(-5018i, 2147483647i), vec3<bool>(false, false, false), vec2<f32>(-587f, 1547f)), vec4<u32>(1u, 0u, 605u, 4294967295u), Struct_1(true, vec4<bool>(true, false, true, true), vec2<i32>(-17500i, 15301i), vec3<bool>(true, false, true), vec2<f32>(-1000f, 146f))), Struct_2(vec2<u32>(0u, 0u), Struct_1(false, vec4<bool>(true, true, true, true), vec2<i32>(57913i, i32(-2147483648)), vec3<bool>(true, false, true), vec2<f32>(1503f, -983f)), Struct_1(true, vec4<bool>(true, true, true, false), vec2<i32>(-9023i, 28971i), vec3<bool>(true, true, true), vec2<f32>(-1154f, 619f)), vec4<u32>(1u, 64649u, 1u, 4294967295u), Struct_1(false, vec4<bool>(false, false, false, true), vec2<i32>(-2595i, 1i), vec3<bool>(false, true, false), vec2<f32>(2610f, -1335f))), Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(true, vec4<bool>(true, true, false, true), vec2<i32>(11414i, -43354i), vec3<bool>(true, false, false), vec2<f32>(-1185f, 603f)), Struct_1(false, vec4<bool>(true, true, true, false), vec2<i32>(6086i, 1i), vec3<bool>(false, false, false), vec2<f32>(337f, -857f)), vec4<u32>(0u, 82996u, 4294967295u, 0u), Struct_1(true, vec4<bool>(false, false, false, true), vec2<i32>(31226i, 18780i), vec3<bool>(true, true, false), vec2<f32>(-1885f, -1000f))), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(true, vec4<bool>(true, false, true, false), vec2<i32>(4140i, -37353i), vec3<bool>(false, false, true), vec2<f32>(644f, -800f)), Struct_1(false, vec4<bool>(true, true, true, false), vec2<i32>(4274i, 50621i), vec3<bool>(true, true, false), vec2<f32>(1824f, 146f)), vec4<u32>(1u, 31153u, 0u, 98u), Struct_1(true, vec4<bool>(true, false, true, true), vec2<i32>(15435i, 1i), vec3<bool>(false, false, false), vec2<f32>(674f, 242f))), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(true, vec4<bool>(false, true, false, true), vec2<i32>(-2025i, -21219i), vec3<bool>(true, false, true), vec2<f32>(-1150f, -602f)), Struct_1(true, vec4<bool>(true, false, true, true), vec2<i32>(1i, 1i), vec3<bool>(false, true, false), vec2<f32>(-1390f, 684f)), vec4<u32>(0u, 0u, 48048u, 1u), Struct_1(true, vec4<bool>(false, false, true, true), vec2<i32>(i32(-2147483648), 6213i), vec3<bool>(true, true, true), vec2<f32>(660f, -1378f))), Struct_2(vec2<u32>(86703u, 44316u), Struct_1(true, vec4<bool>(true, true, false, true), vec2<i32>(2147483647i, i32(-2147483648)), vec3<bool>(true, false, true), vec2<f32>(393f, 590f)), Struct_1(true, vec4<bool>(true, false, false, true), vec2<i32>(1i, 1i), vec3<bool>(true, false, true), vec2<f32>(1006f, 2987f)), vec4<u32>(50238u, 75967u, 4294967295u, 0u), Struct_1(true, vec4<bool>(true, true, true, true), vec2<i32>(41132i, -16049i), vec3<bool>(false, true, false), vec2<f32>(-1282f, 233f))), Struct_2(vec2<u32>(0u, 1u), Struct_1(true, vec4<bool>(true, true, false, false), vec2<i32>(1i, 2147483647i), vec3<bool>(false, false, false), vec2<f32>(269f, 265f)), Struct_1(true, vec4<bool>(false, false, true, true), vec2<i32>(1i, -34868i), vec3<bool>(false, true, false), vec2<f32>(186f, 614f)), vec4<u32>(0u, 36587u, 1u, 1u), Struct_1(true, vec4<bool>(true, true, false, false), vec2<i32>(2147483647i, 48541i), vec3<bool>(false, false, false), vec2<f32>(-424f, 230f))), Struct_2(vec2<u32>(58042u, 0u), Struct_1(false, vec4<bool>(true, true, false, false), vec2<i32>(-22428i, -1i), vec3<bool>(true, true, true), vec2<f32>(-607f, 1000f)), Struct_1(false, vec4<bool>(false, true, true, true), vec2<i32>(0i, -1i), vec3<bool>(true, false, true), vec2<f32>(1288f, -1943f)), vec4<u32>(84726u, 4294967295u, 4294967295u, 4294967295u), Struct_1(true, vec4<bool>(false, false, true, false), vec2<i32>(-35743i, -1i), vec3<bool>(false, true, false), vec2<f32>(-916f, -1000f))), Struct_2(vec2<u32>(15213u, 19475u), Struct_1(false, vec4<bool>(false, false, false, false), vec2<i32>(21655i, 1i), vec3<bool>(true, false, true), vec2<f32>(-1000f, 675f)), Struct_1(true, vec4<bool>(false, true, false, false), vec2<i32>(-22086i, -66690i), vec3<bool>(true, false, true), vec2<f32>(1211f, 1321f)), vec4<u32>(4294967295u, 73239u, 4294967295u, 1u), Struct_1(true, vec4<bool>(false, true, true, false), vec2<i32>(0i, 0i), vec3<bool>(true, false, true), vec2<f32>(-798f, 180f))));

var<private> global3: array<f32, 25> = array<f32, 25>(-1544f, -1195f, 170f, -1579f, -212f, 231f, 129f, 555f, -121f, 383f, 296f, -1508f, 675f, 515f, -1144f, 187f, -1000f, -574f, 1463f, 1000f, 337f, 1444f, 322f, 1641f, -956f);

var<private> global4: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = 11146u;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(var_0), max(4294967295u, 0u)), 25u)] * -1308f), -961f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(firstLeadingBit(12910u), 25u)] * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_0, 25u)] - 2167f)), -388f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -567f) + global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 4294967295u), 25u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(79433u, 25u)])))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3[_wgslsmith_index_u32(var_0, 25u)], global3[_wgslsmith_index_u32(u_input.a, 25u)], 1079f, -346f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-793f, 1000f, global3[_wgslsmith_index_u32(var_0, 25u)], 161f)), vec4<f32>(-200f, 1695f, global3[_wgslsmith_index_u32(u_input.a, 25u)], global3[_wgslsmith_index_u32(var_0, 25u)]), select(false, true, false))))));
    global0 = _wgslsmith_add_u32(~1404u, _wgslsmith_mult_u32(~(~1u >> (firstTrailingBit(0u) % 32u)), firstLeadingBit(u_input.a)));
    let var_2 = 1f;
    var var_3 = vec2<f32>(-330f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2))));
    return all(!vec3<bool>(any(vec3<bool>(true, true, true)) & true, true, !all(vec2<bool>(true, false))));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(any(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.d, 25u)] <= global3[_wgslsmith_index_u32(11436u, 25u)], true, false)) & (~select(-1i, -51762i, false) != _wgslsmith_sub_i32(~(-2147483647i), _wgslsmith_sub_i32(-2147483647i, u_input.b.x))), !vec4<bool>(true, all(vec2<bool>(false, true)), false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), false))), u_input.b.zx, select(!vec3<bool>(true, func_3(), true), vec3<bool>(true, false, false), vec3<bool>(!(u_input.b.x <= u_input.b.x), ~u_input.c >= _wgslsmith_div_i32(u_input.c, -2147483647i), all(vec2<bool>(true, true)))), vec2<f32>(global3[_wgslsmith_index_u32(u_input.a, 25u)], -867f));
    global2 = array<Struct_2, 15>();
    var var_1 = Struct_1(true, vec4<bool>(select(any(vec3<bool>(var_0.b.x, var_0.a, true)), ~4294967295u == ~u_input.a, false), var_0.b.x, !any(select(var_0.b.yyw, vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(var_0.a, var_0.a, false))), false), ~(~max(vec2<i32>(1i, 27664i), var_0.c)) >> (~(~(~vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u)), !vec3<bool>(false, any(select(var_0.b, vec4<bool>(var_0.d.x, false, false, false), var_0.d.x)), true), var_0.e);
    let var_2 = vec3<bool>(false, !(true | (u_input.d <= (48182u ^ u_input.a))), var_0.d.x);
    var var_3 = var_0;
    return 1i;
}

fn func_1() -> Struct_3 {
    global3 = array<f32, 25>();
    let var_0 = abs(~(~select(vec3<u32>(38837u, u_input.d, u_input.a) << (vec3<u32>(u_input.a, 21899u, u_input.a) % vec3<u32>(32u)), max(vec3<u32>(u_input.d, u_input.a, 4294967295u), vec3<u32>(u_input.d, u_input.a, 0u)), any(vec4<bool>(true, true, true, false)))));
    var var_1 = _wgslsmith_mult_i32(func_2(), reverseBits(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -1i), u_input.b), vec4<i32>(-2147483647i, u_input.c, -19837i, -2147483647i)))));
    var var_2 = Struct_3(Struct_1(true, !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true))), select(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.c, 0i), vec2<i32>(u_input.b.x, 1i)), reverseBits(vec2<i32>(-16336i, u_input.c)), true), select(vec3<bool>(true, any(vec3<bool>(true, false, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1381f - global3[_wgslsmith_index_u32(0u, 25u)]), _wgslsmith_f_op_f32(f32(-1f) * -1091f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-524f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.x, 25u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(var_0.x, 25u)])))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(55963u, 4294967295u, 1u, 0u)), ~vec4<u32>(var_0.x, var_0.x, 103302u, 12883u)), 25u)]) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(var_0.x, 25u)], global3[_wgslsmith_index_u32(0u, 25u)]) * vec2<f32>(global3[_wgslsmith_index_u32(var_0.x, 25u)], global3[_wgslsmith_index_u32(56404u, 25u)]))))))), var_0.x, _wgslsmith_f_op_f32(875f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(u_input.a >> (96147u % 32u), 25u)], _wgslsmith_f_op_f32(floor(-720f)), true))))));
    let var_3 = !var_2.a.d.x;
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3062f)) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.e))), !(!var_2.a.b), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(40515i, var_2.a.c.x)), vec2<i32>(var_2.a.c.x, 1i)), select(var_2.a.d, var_2.a.d, all(vec2<bool>(true, true))), var_2.c), global3[_wgslsmith_index_u32(1u >> (((firstLeadingBit(4977u) << ((var_2.d & u_input.a) % 32u)) | _wgslsmith_clamp_u32(~u_input.a, 1u, var_2.d)) % 32u), 25u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(11981u, ~var_2.d), 25u)]) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.b + var_2.a.e.x), -1531f))), var_2.d, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-104f - global3[_wgslsmith_index_u32(~26217u, 25u)]), 278f), 615f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    global2 = array<Struct_2, 15>();
    let var_1 = max(var_0, _wgslsmith_div_i32(i32(-1i) * -u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, var_0), u_input.b.xy) >> (~u_input.d % 32u))) >> (_wgslsmith_clamp_u32(~_wgslsmith_div_u32(67810u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(78882u, u_input.a))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), reverseBits(vec2<u32>(2591u, 136u))), min(vec2<u32>(u_input.a, 42057u), ~vec2<u32>(u_input.d, u_input.d))), 1u) % 32u);
    global1 = 0i;
    let var_2 = func_1();
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d, 26052u, var_2.d, var_2.d), vec4<u32>(var_2.d, 30089u, 1u, var_2.d)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 19401u, 4294967295u, 0u), vec4<u32>(u_input.a, 4294967295u, var_2.d, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, var_2.d, 4294967295u, u_input.a), vec4<u32>(4294967295u, 1u, var_2.d, u_input.d), vec4<u32>(39793u, u_input.d, 4294967295u, var_2.d)), ~vec4<u32>(u_input.d, 35519u, 0u, 4294967295u))), ~reverseBits(~var_2.d)), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(~vec2<u32>(u_input.a, 35881u)), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(59818u, 1u), vec2<u32>(47467u, 58049u), true), select(vec2<u32>(16623u, var_2.d), vec2<u32>(var_2.d, 4294967295u), true), reverseBits(vec2<u32>(u_input.a, var_2.d)))), abs(vec2<u32>(4294967295u, var_2.d) << (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u))) >> (vec2<u32>(reverseBits(var_2.d), u_input.d) % vec2<u32>(32u)))), 15u)];
    global2 = array<Struct_2, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(firstTrailingBit(-u_input.b) << (vec4<u32>(_wgslsmith_mod_u32(u_input.d, var_3.a.x), var_2.d, ~1u, ~0u) % vec4<u32>(32u)), vec4<i32>(func_2(), var_0, reverseBits(1i) & var_1, var_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-798f, -648f))))), -1331f, !var_2.a.a)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(var_3.d.wz, var_3.d.zw, !vec2<bool>(var_3.c.a, true)), _wgslsmith_div_vec2_u32(var_3.a, ~abs(vec2<u32>(35989u, u_input.d)))), 25u)], 2147483647i);
}

