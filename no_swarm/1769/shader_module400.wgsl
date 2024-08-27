struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: array<u32, 22> = array<u32, 22>(4294967295u, 22572u, 116632u, 4294967295u, 1u, 15783u, 7412u, 4294967295u, 2035u, 25829u, 4294967295u, 33868u, 0u, 21433u, 43564u, 4294967295u, 75963u, 1u, 41546u, 0u, 66515u, 26325u);

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-1343f, vec4<f32>(1770f, 293f, 276f, 630f), vec2<u32>(4294967295u, 1u), 30090u), Struct_1(-1626f, vec4<f32>(588f, -319f, 1226f, 160f), vec2<u32>(1u, 1u), 28582u), Struct_1(-854f, vec4<f32>(-201f, -1501f, -826f, -552f), vec2<u32>(26240u, 24821u), 37581u), Struct_1(1180f, vec4<f32>(-545f, -444f, 1000f, 650f), vec2<u32>(2049u, 48977u), 1u), Struct_1(329f, vec4<f32>(-1010f, -701f, -556f, -223f), vec2<u32>(16672u, 13085u), 4294967295u), Struct_1(1000f, vec4<f32>(-1007f, 394f, 1506f, -2359f), vec2<u32>(3393u, 0u), 69854u), Struct_1(1000f, vec4<f32>(776f, 218f, 565f, 527f), vec2<u32>(0u, 84075u), 4294967295u), Struct_1(-1843f, vec4<f32>(-819f, -357f, 840f, 279f), vec2<u32>(15267u, 15122u), 0u), Struct_1(1982f, vec4<f32>(1103f, -880f, -525f, -173f), vec2<u32>(48839u, 7046u), 105727u), Struct_1(-2437f, vec4<f32>(1217f, 125f, -1643f, 1100f), vec2<u32>(136232u, 4294967295u), 4294967295u), Struct_1(-222f, vec4<f32>(342f, 543f, 2285f, -1000f), vec2<u32>(4294967295u, 1u), 0u), Struct_1(148f, vec4<f32>(599f, 1558f, 709f, 1000f), vec2<u32>(25752u, 48914u), 4294967295u), Struct_1(190f, vec4<f32>(972f, 685f, -579f, 345f), vec2<u32>(62742u, 16761u), 12616u), Struct_1(630f, vec4<f32>(-1000f, 607f, -1094f, 159f), vec2<u32>(24636u, 0u), 70704u), Struct_1(-1077f, vec4<f32>(-1145f, -1000f, -162f, -264f), vec2<u32>(0u, 45439u), 1u), Struct_1(-1597f, vec4<f32>(-1238f, 567f, 459f, 794f), vec2<u32>(5537u, 31262u), 4294967295u), Struct_1(-751f, vec4<f32>(1329f, 1249f, -1000f, -579f), vec2<u32>(25135u, 15952u), 12309u), Struct_1(825f, vec4<f32>(-1549f, -1843f, -1000f, -536f), vec2<u32>(4294967295u, 83756u), 4294967295u), Struct_1(-901f, vec4<f32>(-293f, -465f, 811f, 1186f), vec2<u32>(1u, 0u), 63615u), Struct_1(1974f, vec4<f32>(691f, 1928f, -850f, -827f), vec2<u32>(85923u, 103468u), 0u), Struct_1(-319f, vec4<f32>(-1517f, -1000f, 1009f, -1417f), vec2<u32>(8287u, 0u), 88125u), Struct_1(231f, vec4<f32>(-798f, 171f, 1340f, -115f), vec2<u32>(0u, 18535u), 17348u), Struct_1(2580f, vec4<f32>(-474f, -1299f, -327f, -285f), vec2<u32>(1u, 4294967295u), 4294967295u), Struct_1(-1372f, vec4<f32>(1769f, -416f, -569f, 688f), vec2<u32>(0u, 5181u), 27298u), Struct_1(-1000f, vec4<f32>(620f, 1000f, 793f, 605f), vec2<u32>(1903u, 27200u), 40065u), Struct_1(-1149f, vec4<f32>(184f, -529f, -2320f, -101f), vec2<u32>(4294967295u, 557u), 350u), Struct_1(-1000f, vec4<f32>(1000f, -1375f, -756f, -991f), vec2<u32>(7719u, 2032u), 26282u), Struct_1(-563f, vec4<f32>(1388f, -804f, 843f, -427f), vec2<u32>(4294967295u, 4294967295u), 33723u), Struct_1(940f, vec4<f32>(-1576f, -483f, 1182f, -1000f), vec2<u32>(1u, 4408u), 61399u));

var<private> global3: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-427f, 2296f), vec2<f32>(-923f, 425f), vec2<f32>(-138f, 151f), vec2<f32>(764f, -918f), vec2<f32>(-1000f, -428f), vec2<f32>(-643f, 1115f), vec2<f32>(1213f, -1218f), vec2<f32>(1000f, 710f), vec2<f32>(756f, 1573f), vec2<f32>(-1103f, -1512f), vec2<f32>(-696f, -1354f), vec2<f32>(-1447f, -802f));

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    global3 = array<vec2<f32>, 12>();
    let var_0 = vec4<i32>(-19183i, 22687i, ~1i, abs(2147483647i));
    let var_1 = any(!select(select(!vec4<bool>(true, global4.x, false, global4.x), select(vec4<bool>(true, global4.x, true, global4.x), vec4<bool>(global4.x, global4.x, true, global4.x), vec4<bool>(true, true, true, true)), global4.x), select(!vec4<bool>(true, global4.x, global4.x, false), select(vec4<bool>(true, false, false, global4.x), vec4<bool>(false, global4.x, true, global4.x), global4.x), false), global4.x));
    global1 = array<u32, 22>();
    let var_2 = Struct_1(arg_0.b.x, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) + 1218f))), arg_0.b.x, _wgslsmith_f_op_f32(min(arg_0.b.x, arg_1)), 575f), ~(~abs(~vec2<u32>(0u, 1169u))), _wgslsmith_mult_u32(~reverseBits(29061u), _wgslsmith_mod_u32(~(global1[_wgslsmith_index_u32(65922u, 22u)] >> (1u % 32u)), u_input.b)));
    return ~(~vec4<u32>(66973u, 1u, ~var_2.c.x, 4294967295u));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-firstLeadingBit(arg_0.x), _wgslsmith_div_i32(~arg_0.x, min(arg_0.x, u_input.c))), ~arg_0.x), vec2<i32>(71137i, u_input.a >> (u_input.b % 32u)));
    var var_1 = _wgslsmith_f_op_f32(step(978f, -298f));
    var var_2 = Struct_3(~(~(-1i)), Struct_2(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-24166i, u_input.c, 2147483647i, 23381i), vec4<i32>(0i, -2147483647i, 28639i, arg_0.x)), abs(arg_0.x), -2147483647i), global1[_wgslsmith_index_u32(1u, 22u)]));
    let var_3 = _wgslsmith_clamp_vec4_u32(func_3(global2[_wgslsmith_index_u32(~(69232u ^ var_2.b.b), 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-119f - 1379f))))), ~select(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 22u)]), vec3<u32>(36360u, var_2.b.b, var_2.b.b)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u), 7u)], global1[_wgslsmith_index_u32(0u << (var_2.b.b % 32u), 22u)], 4294967295u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_2.b.b, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7010u, 22u)], 22u)], 22u)], 7u)], 0u, 68910u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 22u)], 22u)])), false), ~(~(~vec4<u32>(1u, 11152u, 4095u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16855u, 7u)], 22u)]))));
    global2 = array<Struct_1, 29>();
    return global2[_wgslsmith_index_u32(abs(0u), 29u)];
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<u32>, arg_3: vec3<i32>) -> f32 {
    global1 = array<u32, 22>();
    var var_0 = _wgslsmith_add_vec2_i32(select(arg_3.zz, firstTrailingBit(arg_3.yy), !(!select(vec2<bool>(false, global4.x), vec2<bool>(global4.x, global4.x), false))), min(vec2<i32>(countOneBits(u_input.a), arg_3.x), vec2<i32>(_wgslsmith_mult_i32(arg_3.x ^ arg_3.x, u_input.a), _wgslsmith_dot_vec3_i32(arg_3 & vec3<i32>(-42786i, 0i, 29688i), arg_3))));
    var var_1 = Struct_3(-29034i, Struct_2(-1i, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, 0u), 7u)]));
    global4 = vec2<bool>(false, !(global4.x == false) || global4.x);
    let var_2 = func_2(~arg_3.zy);
    return var_2.a;
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = select(global4.x, true, !any(select(vec4<bool>(global4.x, false, global4.x, global4.x), select(vec4<bool>(global4.x, global4.x, true, true), vec4<bool>(false, false, global4.x, global4.x), vec4<bool>(false, global4.x, false, false)), vec4<bool>(global4.x, true, global4.x, false))));
    let var_1 = vec4<u32>(0u, global1[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(arg_0.d, 22u)], 0u, arg_0.d, 39286u), vec4<u32>(global1[_wgslsmith_index_u32(18105u, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9459u, 7u)], 7u)], 22u)], 1u))), 1u << ((global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 7u)] << (u_input.b % 32u)) % 32u))), 22u)], 0u, 36652u);
    global1 = array<u32, 22>();
    let var_2 = -25192i;
    global1 = array<u32, 22>();
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 12>();
    let var_0 = Struct_2(-(~1i), ~0u);
    global3 = array<vec2<f32>, 12>();
    let var_1 = !vec3<bool>(true, global4.x, true);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(1107f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(347f * 538f), var_1.x))), global4.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_f_op_f32(func_1(-546f, 59399u, vec4<u32>(1u, 6518u, 1u, global1[_wgslsmith_index_u32(0u, 22u)]), vec3<i32>(u_input.a, 60742i, var_0.a))), vec4<f32>(200f, -537f, -146f, -842f), vec2<u32>(82979u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52371u, 7u)], 22u)]), ~1u))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -889f), _wgslsmith_div_f32(355f, 459f), _wgslsmith_f_op_f32(f32(-1f) * -374f), _wgslsmith_f_op_f32(f32(-1f) * -1087f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1259f, 1749f, 2573f, -219f), _wgslsmith_f_op_vec4_f32(vec4<f32>(428f, -116f, 989f, -366f) + vec4<f32>(1672f, -1171f, -389f, 581f)), !var_1.x)))), var_1.x)), ~(~(reverseBits(vec2<u32>(28592u, 15483u)) | ~vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(4591u, 22u)]))), func_2(u_input.d.zx).d);
    let var_3 = ~var_2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(1u, abs(vec2<i32>(-17805i, firstTrailingBit(1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, -823f, var_2.b.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, var_2.b.x, 1204f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.b.x, -1275f, -699f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-724f, -895f, 1010f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 1946f, var_2.a))))), countOneBits(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(10369i, u_input.c, var_0.a, 1i) >> (vec4<u32>(67630u, 0u, 0u, 1u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -47667i, -45453i, u_input.a), vec4<i32>(u_input.c, u_input.d.x, -25390i, var_0.a))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a, var_0.a, var_0.a), vec4<i32>(var_0.a, u_input.d.x, 20591i, -1i)))), countOneBits(vec3<i32>(~_wgslsmith_mod_i32(u_input.a, var_0.a), -7379i, -2147483647i)));
}

