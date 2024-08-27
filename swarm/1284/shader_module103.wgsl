struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 26>;

var<private> global1: f32 = 1888f;

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(16142u, vec3<f32>(-1000f, 1761f, -789f), 0u, vec4<i32>(-27413i, 1i, 0i, 2147483647i)), false, Struct_1(45840u, vec3<f32>(212f, -1594f, 1102f), 39737u, vec4<i32>(1i, 39012i, i32(-2147483648), 2147483647i)), vec2<u32>(37775u, 32145u), Struct_1(0u, vec3<f32>(-1603f, 432f, -1247f), 1u, vec4<i32>(23135i, 0i, i32(-2147483648), 57938i))), Struct_2(Struct_1(38339u, vec3<f32>(-1206f, 621f, 217f), 24610u, vec4<i32>(41021i, -12259i, 2147483647i, 1i)), true, Struct_1(16576u, vec3<f32>(-671f, -882f, 353f), 0u, vec4<i32>(-16459i, -43754i, -1i, 1i)), vec2<u32>(0u, 1u), Struct_1(4294967295u, vec3<f32>(-1479f, 746f, 719f), 0u, vec4<i32>(-50i, 1i, -47801i, i32(-2147483648)))), Struct_2(Struct_1(93624u, vec3<f32>(1282f, 545f, -1331f), 0u, vec4<i32>(13455i, 2147483647i, i32(-2147483648), -1i)), true, Struct_1(0u, vec3<f32>(1677f, 1009f, 668f), 42077u, vec4<i32>(i32(-2147483648), -6531i, -1i, 1i)), vec2<u32>(1u, 13896u), Struct_1(330u, vec3<f32>(-1484f, -674f, -690f), 1u, vec4<i32>(2147483647i, i32(-2147483648), 30397i, -42629i))), Struct_2(Struct_1(51479u, vec3<f32>(-163f, -108f, -2703f), 1u, vec4<i32>(0i, -21504i, 103961i, -47848i)), true, Struct_1(4294967295u, vec3<f32>(852f, -228f, -1000f), 10795u, vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -41713i)), vec2<u32>(4294967295u, 4294967295u), Struct_1(48016u, vec3<f32>(367f, 154f, -1000f), 4294967295u, vec4<i32>(2147483647i, -3840i, 0i, 63805i))), Struct_2(Struct_1(0u, vec3<f32>(-339f, -404f, 107f), 4294967295u, vec4<i32>(20665i, 22214i, 33968i, -1i)), false, Struct_1(1u, vec3<f32>(-1000f, 460f, 1219f), 2413u, vec4<i32>(-1i, -69928i, i32(-2147483648), -48255i)), vec2<u32>(68569u, 25628u), Struct_1(1u, vec3<f32>(416f, -1228f, -637f), 24722u, vec4<i32>(-11461i, -1728i, 2147483647i, 1i))), Struct_2(Struct_1(1u, vec3<f32>(1351f, -1144f, -1728f), 58260u, vec4<i32>(20314i, 0i, 1i, i32(-2147483648))), true, Struct_1(0u, vec3<f32>(1081f, 342f, -1266f), 40799u, vec4<i32>(12699i, 46998i, 0i, 19313i)), vec2<u32>(52729u, 0u), Struct_1(26949u, vec3<f32>(-564f, -230f, 276f), 0u, vec4<i32>(46859i, 40449i, 19825i, i32(-2147483648)))), Struct_2(Struct_1(2089u, vec3<f32>(-567f, -1603f, 1364f), 35669u, vec4<i32>(2147483647i, 34305i, -57370i, -382i)), false, Struct_1(69431u, vec3<f32>(273f, -1000f, 1140f), 1u, vec4<i32>(-40337i, 16757i, 1i, -20958i)), vec2<u32>(74001u, 4294967295u), Struct_1(44045u, vec3<f32>(-623f, 575f, -1268f), 85551u, vec4<i32>(-13450i, 27761i, 4368i, -20143i))), Struct_2(Struct_1(1u, vec3<f32>(-1016f, -1518f, -699f), 1u, vec4<i32>(1i, 51473i, 1i, -1i)), false, Struct_1(34536u, vec3<f32>(214f, 546f, 244f), 4294967295u, vec4<i32>(-1i, 1i, i32(-2147483648), 27494i)), vec2<u32>(0u, 16099u), Struct_1(0u, vec3<f32>(759f, 1197f, 1076f), 4739u, vec4<i32>(126i, 23266i, 29985i, -36456i))), Struct_2(Struct_1(12943u, vec3<f32>(-1775f, -2165f, 936f), 21358u, vec4<i32>(-88990i, -14321i, 81497i, 2430i)), true, Struct_1(10130u, vec3<f32>(-964f, -346f, 2096f), 0u, vec4<i32>(i32(-2147483648), 2203i, 0i, 13977i)), vec2<u32>(4294967295u, 9871u), Struct_1(0u, vec3<f32>(696f, -2115f, -291f), 64620u, vec4<i32>(-12633i, i32(-2147483648), 3559i, 5482i))), Struct_2(Struct_1(8517u, vec3<f32>(756f, 473f, -820f), 4294967295u, vec4<i32>(-1i, 2147483647i, -7336i, 1i)), true, Struct_1(14784u, vec3<f32>(1229f, -1614f, 1000f), 1u, vec4<i32>(0i, -21587i, 2147483647i, 2147483647i)), vec2<u32>(3817u, 49284u), Struct_1(25359u, vec3<f32>(961f, -792f, -603f), 51901u, vec4<i32>(-18597i, 1i, -58612i, -1i))), Struct_2(Struct_1(7788u, vec3<f32>(1000f, 1543f, 1000f), 62737u, vec4<i32>(41377i, -1i, 0i, 10247i)), true, Struct_1(1u, vec3<f32>(1314f, -1472f, -1413f), 1u, vec4<i32>(-6500i, 0i, 37640i, -5897i)), vec2<u32>(0u, 27329u), Struct_1(1u, vec3<f32>(311f, -2130f, -124f), 17192u, vec4<i32>(-1i, -14013i, 2147483647i, -59354i))), Struct_2(Struct_1(104543u, vec3<f32>(168f, -509f, 175f), 22695u, vec4<i32>(77949i, 1i, 28041i, 1i)), true, Struct_1(44985u, vec3<f32>(-501f, -313f, -299f), 0u, vec4<i32>(-6097i, -4645i, 0i, 44169i)), vec2<u32>(34679u, 58642u), Struct_1(1u, vec3<f32>(633f, 1000f, 691f), 1u, vec4<i32>(17658i, i32(-2147483648), -1i, i32(-2147483648)))), Struct_2(Struct_1(52428u, vec3<f32>(-1671f, -129f, -743f), 1u, vec4<i32>(-5849i, 1i, -1i, -49681i)), false, Struct_1(0u, vec3<f32>(-2398f, -693f, -373f), 55122u, vec4<i32>(-1i, 2147483647i, i32(-2147483648), 1i)), vec2<u32>(0u, 8679u), Struct_1(11167u, vec3<f32>(474f, 527f, -1689f), 0u, vec4<i32>(31552i, 46438i, -26073i, 27422i))), Struct_2(Struct_1(0u, vec3<f32>(-369f, -1709f, -200f), 4294967295u, vec4<i32>(-1830i, -5265i, 43755i, i32(-2147483648))), false, Struct_1(8832u, vec3<f32>(-1404f, 1000f, -787f), 4294967295u, vec4<i32>(-28754i, i32(-2147483648), i32(-2147483648), 1i)), vec2<u32>(39034u, 1u), Struct_1(0u, vec3<f32>(-930f, -1712f, -2407f), 1u, vec4<i32>(13827i, 2147483647i, -5888i, 9169i))), Struct_2(Struct_1(501u, vec3<f32>(-1031f, -1336f, 746f), 18623u, vec4<i32>(-21641i, 17815i, 2147483647i, 2147483647i)), false, Struct_1(30087u, vec3<f32>(1546f, 1391f, -539f), 4294967295u, vec4<i32>(4931i, 1i, i32(-2147483648), 0i)), vec2<u32>(4294967295u, 4294967295u), Struct_1(4294967295u, vec3<f32>(130f, 147f, 956f), 30574u, vec4<i32>(2147483647i, i32(-2147483648), -24015i, 34207i))), Struct_2(Struct_1(19124u, vec3<f32>(1208f, 922f, 1451f), 0u, vec4<i32>(47893i, -1i, -1972i, 0i)), false, Struct_1(4294967295u, vec3<f32>(-478f, 855f, -1329f), 50784u, vec4<i32>(0i, 1790i, 0i, 1i)), vec2<u32>(46200u, 57028u), Struct_1(1666u, vec3<f32>(661f, 1010f, -132f), 0u, vec4<i32>(0i, -1i, i32(-2147483648), -1i))), Struct_2(Struct_1(19199u, vec3<f32>(-609f, -1468f, 125f), 0u, vec4<i32>(-86893i, 1i, 0i, 11446i)), true, Struct_1(1u, vec3<f32>(-818f, 324f, -559f), 4294967295u, vec4<i32>(9081i, 26448i, i32(-2147483648), 25686i)), vec2<u32>(0u, 1u), Struct_1(1u, vec3<f32>(-448f, 444f, 337f), 1u, vec4<i32>(2147483647i, 2147483647i, -1i, 2147483647i))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1() -> Struct_2 {
    global2 = array<Struct_2, 17>();
    var var_0 = -_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a, u_input.a, -1i), min(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.c, u_input.c, u_input.a)) & firstTrailingBit(vec3<i32>(u_input.c, 38511i, -2147483647i))), firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 2147483647i, u_input.a), vec3<i32>(1i, u_input.c, u_input.a)) & -vec3<i32>(76339i, u_input.c, u_input.c)), _wgslsmith_sub_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 29628i, 2147483647i), vec3<i32>(45816i, u_input.c, -1406i)), vec3<i32>(reverseBits(0i), _wgslsmith_add_i32(u_input.c, 1i), 11413i)));
    let var_1 = 48233u;
    var var_2 = var_1;
    let var_3 = ~var_1;
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_3, u_input.b), 17u)];
}

fn func_3() -> vec3<f32> {
    let var_0 = true || (u_input.b == (~_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b) | _wgslsmith_mod_u32(1u << (u_input.b % 32u), 1u)));
    let var_1 = true;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1215f)), 2151f, 540f);
}

fn func_2(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = abs(global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(arg_0.a.d, arg_0.a.d) | u_input.b) << (arg_0.a.e.a % 32u), 26u)]);
    let var_1 = Struct_1(arg_0.a.a.a, _wgslsmith_f_op_vec3_f32(arg_0.b.yxw * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3()))))), var_0.x, ~((vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 42317i, arg_0.c.x)) >> (vec4<u32>(~arg_0.a.c.c, 1u, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(arg_0.a.a.c, 26u)], vec4<u32>(u_input.b, 0u, arg_0.a.a.a, u_input.b)), 12118u | var_0.x) % vec4<u32>(32u))));
    var var_2 = func_1().e;
    var var_3 = Struct_1(abs(var_2.a), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1086f, var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1516f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-869f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1566f), 1137f) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -424f), _wgslsmith_f_op_f32(step(202f, arg_0.b.x)), var_2.b.x)))), var_2.a, firstTrailingBit(~var_2.d));
    var var_4 = arg_0.b;
    return _wgslsmith_f_op_vec4_f32(-arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_3(func_1(), _wgslsmith_f_op_vec4_f32(func_2(Struct_3(func_1(), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1194f, 307f, 913f, 434f))), vec4<i32>(-1i, u_input.c, u_input.a, u_input.c)))), vec4<i32>(_wgslsmith_mod_i32(32980i, u_input.c & 7695i), firstLeadingBit(~17890i), i32(-1i) * -2239i, abs(~7216i))), 0u, Struct_2(func_1().e, all(vec2<bool>(true, true)), func_1().e, firstTrailingBit(firstTrailingBit(firstTrailingBit(vec2<u32>(1u, u_input.b)))), func_1().c), false, true & (all(vec4<bool>(false, false, true, false)) || true));
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.e.b.x)));
    let var_1 = var_0.b;
    let var_2 = var_0.a.c.wz;
    let var_3 = -721f;
    global0 = array<vec4<u32>, 26>();
    var var_4 = var_0.a.b;
    let var_5 = -vec3<i32>(0i, 0i, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.b, var_0.c.d.x, _wgslsmith_f_op_f32(-var_3), ~global0[_wgslsmith_index_u32(1u, 26u)], vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3), -980f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_4.x - var_3))))));
}

