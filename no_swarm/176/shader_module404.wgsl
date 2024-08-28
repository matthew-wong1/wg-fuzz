struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<f32>(-685f, -2391f, 143f), vec3<f32>(-343f, 643f, -646f)), Struct_1(vec3<f32>(948f, 815f, -1000f), vec3<f32>(1979f, 452f, 471f)), Struct_1(vec3<f32>(609f, -644f, 802f), vec3<f32>(-1266f, 1578f, 943f)), Struct_1(vec3<f32>(-506f, -417f, 295f), vec3<f32>(2141f, 404f, 1066f)), Struct_1(vec3<f32>(329f, -1107f, -2392f), vec3<f32>(494f, 115f, -673f)), Struct_1(vec3<f32>(316f, -341f, 1000f), vec3<f32>(-1332f, -787f, 2766f)), Struct_1(vec3<f32>(846f, -644f, -296f), vec3<f32>(-528f, -1725f, -951f)), Struct_1(vec3<f32>(-711f, -343f, 1355f), vec3<f32>(1000f, -1962f, 135f)), Struct_1(vec3<f32>(1529f, -403f, 656f), vec3<f32>(-935f, 239f, -1477f)), Struct_1(vec3<f32>(1187f, 1462f, 1155f), vec3<f32>(617f, -1126f, 514f)), Struct_1(vec3<f32>(1455f, -453f, 779f), vec3<f32>(1599f, 160f, -1000f)), Struct_1(vec3<f32>(628f, 1000f, -489f), vec3<f32>(-433f, 1722f, -652f)), Struct_1(vec3<f32>(-1511f, 392f, 2169f), vec3<f32>(842f, -663f, -590f)), Struct_1(vec3<f32>(1000f, 1450f, -1906f), vec3<f32>(1000f, -389f, -142f)), Struct_1(vec3<f32>(-102f, 577f, 395f), vec3<f32>(1133f, 451f, 686f)), Struct_1(vec3<f32>(1238f, 199f, -1000f), vec3<f32>(-199f, 423f, 546f)), Struct_1(vec3<f32>(522f, -316f, 700f), vec3<f32>(-883f, -974f, -1000f)), Struct_1(vec3<f32>(1578f, 1055f, -1411f), vec3<f32>(-347f, -629f, 390f)), Struct_1(vec3<f32>(753f, 737f, 1712f), vec3<f32>(-1801f, -186f, 1013f)), Struct_1(vec3<f32>(404f, -169f, -1067f), vec3<f32>(1239f, 1379f, -596f)), Struct_1(vec3<f32>(-1191f, 2712f, -269f), vec3<f32>(1737f, 141f, 131f)), Struct_1(vec3<f32>(-2399f, -353f, -1371f), vec3<f32>(-228f, -187f, -1000f)), Struct_1(vec3<f32>(1592f, -433f, -1000f), vec3<f32>(-1252f, 565f, -781f)), Struct_1(vec3<f32>(442f, -449f, 2956f), vec3<f32>(-384f, 1117f, 2395f)), Struct_1(vec3<f32>(-272f, 216f, -462f), vec3<f32>(-2099f, 812f, 610f)), Struct_1(vec3<f32>(-1000f, 1206f, 1536f), vec3<f32>(-153f, -1516f, 1008f)), Struct_1(vec3<f32>(331f, 1378f, 417f), vec3<f32>(140f, 323f, 2381f)), Struct_1(vec3<f32>(-178f, -380f, -805f), vec3<f32>(-472f, 562f, -742f)), Struct_1(vec3<f32>(196f, -126f, -1000f), vec3<f32>(-1257f, 926f, -554f)), Struct_1(vec3<f32>(1655f, 667f, 878f), vec3<f32>(-486f, 901f, -285f)), Struct_1(vec3<f32>(1258f, -354f, -2370f), vec3<f32>(-1653f, -1000f, -365f)), Struct_1(vec3<f32>(-1231f, 241f, -623f), vec3<f32>(907f, -208f, 1000f)));

var<private> global3: array<bool, 13> = array<bool, 13>(true, true, true, false, false, true, false, false, true, false, false, false, true);

var<private> global4: array<i32, 8> = array<i32, 8>(1i, -5649i, i32(-2147483648), 13268i, i32(-2147483648), -17607i, 2147483647i, 17309i);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec2<i32>) -> f32 {
    var var_0 = select(vec3<bool>(select(global3[_wgslsmith_index_u32(1u, 13u)], all(select(vec3<bool>(arg_2.c, global3[_wgslsmith_index_u32(arg_2.d, 13u)], false), vec3<bool>(false, global3[_wgslsmith_index_u32(27011u, 13u)], false), true)), false), true, true), select(vec3<bool>(true, !(arg_2.d <= 97276u), all(select(vec2<bool>(arg_2.c, arg_2.c), vec2<bool>(true, true), false))), !select(select(vec3<bool>(false, arg_2.c, true), vec3<bool>(false, true, arg_2.c), arg_2.c), !vec3<bool>(arg_2.c, true, global3[_wgslsmith_index_u32(arg_2.d, 13u)]), vec3<bool>(arg_2.c, false, true)), true), global3[_wgslsmith_index_u32(arg_2.d, 13u)]);
    let var_1 = u_input.a.x;
    let var_2 = global3[_wgslsmith_index_u32(17558u, 13u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(608f, -1481f, _wgslsmith_f_op_f32(abs(arg_1.a.x))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_2.e.c.x), 1073f, arg_1.a.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.e.c) - _wgslsmith_f_op_vec3_f32(arg_2.e.c * arg_1.b)), arg_2.e.b.b, true))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_2.e.b.a.x)))), -418f, !arg_2.c)), _wgslsmith_f_op_f32(max(arg_1.a.x, 1f)), _wgslsmith_div_f32(arg_2.e.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.a.x, arg_2.e.a.a.x, var_0.x)) + arg_2.e.b.b.x))), vec3<bool>(arg_1.b.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), !any(vec3<bool>(true, false, arg_2.c)) != (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.d, 1u), vec2<u32>(arg_2.d, arg_2.d)) != _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d, 0u, arg_2.d), vec3<u32>(4197u, arg_2.d, 0u))), arg_2.d >= max(arg_2.d, firstLeadingBit(7743u)))));
    var var_4 = Struct_4(arg_2.a, _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, ~(~(-1i)), 0i, global0.x), _wgslsmith_add_vec4_i32(arg_2.b, _wgslsmith_sub_vec4_i32(select(vec4<i32>(73558i, arg_2.a, 0i, global1.x), vec4<i32>(1i, var_1, global1.x, 51751i), vec4<bool>(false, arg_2.c, var_0.x, var_0.x)), vec4<i32>(arg_0, var_1, -2147483647i, global1.x)))), !(true == (var_0.x || select(arg_2.c, arg_2.c, false))), firstLeadingBit(arg_2.d), arg_2.e);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-691f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-348f)) - -2058f)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: vec3<bool>) -> f32 {
    var var_0 = Struct_3(Struct_1(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1i, arg_1, Struct_4(26740i, vec4<i32>(u_input.a.x, 62984i, 30615i, -38520i), global3[_wgslsmith_index_u32(arg_2, 13u)], arg_2, Struct_2(global2[_wgslsmith_index_u32(arg_2, 32u)], arg_1, vec3<f32>(arg_1.a.x, -571f, arg_1.a.x))), vec2<i32>(u_input.a.x, -1i)))), _wgslsmith_f_op_f32(arg_0 - -1042f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(-696f)), _wgslsmith_f_op_f32(arg_0 * arg_0))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(arg_0 * -2064f), -332f, -873f)))), -837f != _wgslsmith_f_op_f32(trunc(-602f)));
    global1 = ~(countOneBits(vec3<i32>(select(global0.x, -30028i, false), _wgslsmith_dot_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 8u)], -23347i, global0.x, 21915i), vec4<i32>(-51092i, 1i, -5255i, 0i)), _wgslsmith_clamp_i32(u_input.a.x, global4[_wgslsmith_index_u32(arg_2, 8u)], 25521i))) ^ abs(-u_input.a >> (vec3<u32>(arg_2, arg_2, arg_2) % vec3<u32>(32u))));
    let var_1 = 36873u;
    var var_2 = ~4294967295u & ~arg_2;
    global4 = array<i32, 8>();
    return _wgslsmith_f_op_f32(ceil(arg_0));
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = any(vec2<bool>(all(vec4<bool>(global3[_wgslsmith_index_u32(17451u, 13u)], true, false, global3[_wgslsmith_index_u32(0u, 13u)])), global3[_wgslsmith_index_u32(5630u, 13u)] & !global3[_wgslsmith_index_u32(0u, 13u)])) || false;
    var var_1 = vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 4294967295u), 13u)] & true, true, (select(true, true, true) && !all(vec4<bool>(global3[_wgslsmith_index_u32(54347u, 13u)], global3[_wgslsmith_index_u32(36141u, 13u)], false, false))) == all(vec2<bool>(global3[_wgslsmith_index_u32(~1u, 13u)], any(vec3<bool>(global3[_wgslsmith_index_u32(15781u, 13u)], global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(23336u, 13u)])))), true);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(sign(612f)), _wgslsmith_f_op_f32(func_2(625f, global2[_wgslsmith_index_u32(55452u, 32u)], 1u, vec3<bool>(global3[_wgslsmith_index_u32(17681u, 13u)], var_1.x, false))), 279f), vec3<f32>(485f, _wgslsmith_f_op_f32(sign(-1228f)), -1197f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-240f, 704f, -834f))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-407f, -243f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1778f)), _wgslsmith_f_op_f32(func_3(-5759i, global2[_wgslsmith_index_u32(0u, 32u)], Struct_4(global0.x, vec4<i32>(65900i, -8887i, global1.x, u_input.a.x), true, 4294967295u, Struct_2(Struct_1(vec3<f32>(-1680f, -101f, -1505f), vec3<f32>(-1163f, -209f, -484f)), global2[_wgslsmith_index_u32(4294967295u, 32u)], vec3<f32>(-1000f, 112f, -2171f))), vec2<i32>(-14608i, arg_0))), select(global3[_wgslsmith_index_u32(1u, 13u)], var_1.x, true)))), 1028f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-940f, _wgslsmith_f_op_f32(func_2(1616f, global2[_wgslsmith_index_u32(1u, 32u)], 1u, vec3<bool>(global3[_wgslsmith_index_u32(0u, 13u)], true, var_1.x))))))));
    var var_3 = countOneBits(vec3<i32>(global1.x, -firstTrailingBit(global1.x), global4[_wgslsmith_index_u32(0u, 8u)]));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1599f, var_2.b.x, -1335f, -213f), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, var_2.b.x, var_2.b.x), vec4<f32>(-370f, 812f, var_2.a.x, 1000f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + 256f)), -1151f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(780f)) * _wgslsmith_f_op_f32(-320f * var_2.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -156f))));
    return Struct_3(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(113626u, 4294967295u, 4294967295u, 1u)), 32u)], global2[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(~12792u, ~35939u)), 32u)], any(vec3<bool>(false, all(var_1.xy), var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_u32(select(vec2<u32>(_wgslsmith_div_u32(16730u, 25436u), 41668u) & abs(firstTrailingBit(vec2<u32>(14592u, 56083u))), ~min(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u)), !vec2<bool>(false, false == global3[_wgslsmith_index_u32(23685u, 13u)])), countOneBits(vec2<u32>(1u, 1u)));
    let var_1 = Struct_3(Struct_1(vec3<f32>(1899f, _wgslsmith_f_op_f32(f32(-1f) * -507f), -385f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-148f, _wgslsmith_f_op_f32(trunc(-1463f)), -927f))), global2[_wgslsmith_index_u32(1u, 32u)], global3[_wgslsmith_index_u32(var_0.x, 13u)]);
    var var_2 = func_1((_wgslsmith_div_i32(36593i, global4[_wgslsmith_index_u32(var_0.x & var_0.x, 8u)]) >> (~_wgslsmith_mod_u32(0u, var_0.x) % 32u)) << (~var_0.x % 32u));
    var_2 = func_1(1i);
    var var_3 = Struct_4(1i, vec4<i32>(~(-2147483647i), global4[_wgslsmith_index_u32(53696u, 8u)], select(~(-33303i >> (1u % 32u)), 2147483647i, false), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(global4[_wgslsmith_index_u32(var_0.x, 8u)], 2147483647i, -2147483647i, 0i), vec4<i32>(0i, u_input.a.x, u_input.a.x, global4[_wgslsmith_index_u32(4294967295u, 8u)]) & vec4<i32>(40633i, 2147483647i, global1.x, -2147483647i)), -1i)), true, 28121u, Struct_2(Struct_1(var_2.b.b, var_2.a.a), var_2.b, vec3<f32>(-755f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b.b.x - -1440f))), _wgslsmith_f_op_f32(-var_1.b.b.x))));
    let var_4 = ~var_0.x;
    var_3 = Struct_4(-_wgslsmith_div_i32(_wgslsmith_mult_i32(var_3.a, 0i), var_3.a) | 33654i, var_3.b, !(!var_3.c), reverseBits(min(var_0.x, countOneBits(var_3.d))) ^ var_3.d, var_3.e);
    var var_5 = !select(!select(vec3<bool>(true, true, true), !vec3<bool>(false, var_1.c, var_2.c), var_1.c), select(select(select(vec3<bool>(false, var_1.c, false), vec3<bool>(true, true, var_3.c), global3[_wgslsmith_index_u32(4294967295u, 13u)]), !vec3<bool>(var_3.c, false, global3[_wgslsmith_index_u32(93557u, 13u)]), !vec3<bool>(var_3.c, false, false)), !vec3<bool>(false, true, global3[_wgslsmith_index_u32(var_3.d, 13u)]), any(!vec3<bool>(false, global3[_wgslsmith_index_u32(6863u, 13u)], false))), 1u <= _wgslsmith_sub_u32(var_0.x, ~var_4));
    var var_6 = func_1(global1.x).b;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_div_vec4_i32(var_3.b, min(var_3.b, var_3.b)) & -vec4<i32>(global0.x, -1i, global0.x, var_3.a), -_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(var_3.b, var_3.b, vec4<i32>(global1.x, u_input.a.x, 1062i, global1.x)), var_3.b & var_3.b)));
}

