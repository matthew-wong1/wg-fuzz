struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32>;

var<private> global1: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-844f, -2772f, 1917f, -304f), vec4<f32>(-247f, 871f, 1696f, -813f), vec4<f32>(184f, 1351f, 204f, -353f), vec4<f32>(-821f, 778f, -1318f, -254f), vec4<f32>(-1285f, 1805f, -897f, 1787f), vec4<f32>(141f, 167f, -432f, 1000f), vec4<f32>(1540f, -428f, 605f, 989f), vec4<f32>(2021f, -1780f, 1326f, -1719f), vec4<f32>(372f, -1000f, -1074f, -191f), vec4<f32>(-1000f, 2773f, -290f, 520f), vec4<f32>(-833f, -595f, -151f, -1338f), vec4<f32>(-862f, -684f, -209f, -2544f));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_4) -> vec3<f32> {
    global0 = array<vec3<bool>, 32>();
    let var_0 = ~(~(~u_input.b.x) >> (abs(_wgslsmith_div_u32(55424u, 100197u)) % 32u));
    global1 = array<vec4<f32>, 12>();
    let var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_1.x)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_1.x, 651f)), arg_3.a)), -1567f), Struct_1(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(9689i, 8067i, arg_2, arg_2), vec4<i32>(arg_3.b, arg_3.b, arg_2, 47583i)), min(vec4<u32>(102064u, 1u, u_input.b.x, u_input.b.x), firstTrailingBit(u_input.b)) & u_input.b, -(_wgslsmith_div_i32(u_input.a, u_input.c) >> (1u % 32u))), Struct_2(_wgslsmith_mod_u32(~(u_input.b.x | 80669u), max(28762u, 0u)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.c, 36796i), vec3<i32>(arg_2, arg_2, u_input.a)), vec3<i32>(u_input.a, arg_2, -2147483647i)) <= (~arg_3.b ^ arg_3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-844f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(680f * arg_1.x) * -2947f)))), Struct_2(~(~u_input.b.x) << (15858u % 32u), any(vec4<bool>(true, true, true, true))));
    global0 = array<vec3<bool>, 32>();
    return arg_1.ywy;
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> i32 {
    var var_0 = arg_0;
    global1 = array<vec4<f32>, 12>();
    let var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(arg_2, vec4<i32>(arg_2.x, arg_2.x >> (u_input.b.x % 32u), -1i, ~u_input.c)), -vec4<i32>(-1i, _wgslsmith_sub_i32(u_input.c, 58641i), -u_input.a, ~arg_2.x)), arg_2);
    global0 = array<vec3<bool>, 32>();
    global0 = array<vec3<bool>, 32>();
    return -19624i;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: bool) -> bool {
    global0 = array<vec3<bool>, 32>();
    global1 = array<vec4<f32>, 12>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -463f);
    var var_1 = -func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1313f - 238f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(197f, _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(arg_0.a, 12u)]), u_input.a, Struct_4(1434f, u_input.c, vec3<f32>(-1010f, 819f, 144f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-740f, 1240f, 1150f)), vec3<f32>(1076f, 1588f, -821f))), -vec4<i32>(~u_input.c, ~u_input.a, _wgslsmith_mod_i32(u_input.a, u_input.c), u_input.a << (4294967295u % 32u)));
    let var_2 = false;
    return true;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(-(~countOneBits(vec4<i32>(5400i, -32724i, u_input.a, 2147483647i))), _wgslsmith_div_vec4_u32(~vec4<u32>(12782u << (arg_2.x % 32u), ~48092u, arg_2.x, arg_2.x), vec4<u32>(arg_2.x, 0u, ~arg_2.x | 206u, 4294967295u | u_input.b.x)), -2147483647i);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(515f, arg_1.a))), arg_1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(arg_2.x, 12u)]), -2147483647i, arg_1)).x, 293f)));
    var_0 = Struct_1(vec4<i32>(var_0.c, firstTrailingBit(~var_1.b), _wgslsmith_mod_i32(arg_1.b, -14268i), firstTrailingBit(countOneBits(-var_0.a.x))), reverseBits(var_0.b), var_1.b);
    var var_2 = u_input.b.zww;
    let var_3 = firstTrailingBit(~firstLeadingBit(~abs(vec2<u32>(5691u, 1895u))));
    return Struct_1(select(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-9511i, 0i, -2147483647i, 2147483647i), -vec4<i32>(-43379i, var_0.a.x, 43229i, -28542i), vec4<i32>(-2147483647i, arg_1.b, 2147483647i, 2147483647i)), var_0.a), var_0.a, !select(vec4<bool>(arg_3, arg_3, arg_3, arg_3), !vec4<bool>(arg_3, arg_3, false, true), true)), ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, var_0.b), reverseBits(var_0.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_2.x, 1u, 0u), vec4<u32>(63723u, arg_0.x, 29011u, 1u), var_0.b))), _wgslsmith_dot_vec2_i32(vec2<i32>(-40207i, -46924i), _wgslsmith_add_vec2_i32(reverseBits(var_0.a.wz) >> ((arg_0 & u_input.b.xz) % vec2<u32>(32u)), min(vec2<i32>(-28132i, var_1.b), -vec2<i32>(-53342i, 41068i)))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_5(u_input.b.yx, Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1345f)) + 1260f), u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1390f, -686f), _wgslsmith_f_op_f32(f32(-1f) * -2067f), _wgslsmith_f_op_f32(round(-1941f))))), u_input.b.zww, func_2(Struct_2(countOneBits(4294967295u | u_input.b.x), any(vec2<bool>(true, true))), _wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(68770u, 17529u), true), ~vec2<u32>(u_input.b.x, u_input.b.x)) | u_input.b.zy, !any(vec4<bool>(false, true, true, true))));
    global0 = array<vec3<bool>, 32>();
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-524f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-519f)))))));
    global0 = array<vec3<bool>, 32>();
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, min(1u, 80943u << (var_0.b.x % 32u)), ~u_input.b.x, 19067u), var_0.b, vec4<u32>(u_input.b.x, ~(~select(0u, u_input.b.x, false)), _wgslsmith_sub_u32(u_input.b.x, 1u) ^ 0u, u_input.b.x));
    return Struct_2(21315u, true);
}

fn func_6(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_2 {
    return Struct_2(~select(42651u, arg_1.x, all(!vec2<bool>(arg_0.b, false))), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(0u, ~abs(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1905f + _wgslsmith_f_op_f32(179f + _wgslsmith_f_op_f32(2012f * _wgslsmith_f_op_f32(sign(1903f)))))));
    let var_2 = true;
    let var_3 = func_6(func_1(), vec2<u32>(4294967295u, 21362u));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.b.zww), min(vec2<i32>(func_4(_wgslsmith_f_op_f32(-248f * -629f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1523f, 683f, -1591f)), vec4<i32>(0i, 1i, -41279i, u_input.a)), -2147483647i), abs(vec2<i32>(countOneBits(-1i), 1i))), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(var_3.a, u_input.b.x & u_input.b.x, 22825u)), firstTrailingBit(max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, var_3.a), u_input.b.zxw), _wgslsmith_div_vec3_u32(vec3<u32>(var_3.a, 4294967295u, 1u), u_input.b.zyw)))), global1[_wgslsmith_index_u32(select(u_input.b.x, func_6(var_3, vec2<u32>(_wgslsmith_mod_u32(63938u, 1u), ~var_3.a)).a, var_3.b), 12u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-868f, _wgslsmith_f_op_f32(894f - -435f))), vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(794f, _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(0u, 12u)]), 86045i >> (1u % 32u), Struct_4(957f, u_input.a, vec3<f32>(-291f, 1750f, 1000f)))).x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-164f, -1249f)))));
}

