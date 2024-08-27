struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_1(true, 2147483647i, 0i, vec3<f32>(-712f, -836f, 1000f)), Struct_1(true, 3085i, 1i, vec3<f32>(1434f, -1630f, -1228f)), 4294967295u, Struct_2(vec4<bool>(false, true, false, true), vec3<f32>(-2135f, -1228f, -1403f), Struct_1(false, 1i, 0i, vec3<f32>(1480f, -537f, -207f)), vec4<f32>(182f, -573f, -424f, 1430f)), -1i), Struct_3(Struct_1(false, -48212i, -54057i, vec3<f32>(-3013f, -1402f, 2872f)), Struct_1(false, -1i, 2147483647i, vec3<f32>(-908f, 343f, -1107f)), 51109u, Struct_2(vec4<bool>(true, true, true, false), vec3<f32>(-989f, -1994f, 2069f), Struct_1(false, -68208i, -23280i, vec3<f32>(1000f, 1700f, 1295f)), vec4<f32>(-191f, -147f, -1304f, -546f)), 2147483647i), Struct_3(Struct_1(false, -43726i, i32(-2147483648), vec3<f32>(-621f, -561f, -299f)), Struct_1(true, -1i, 154i, vec3<f32>(673f, -481f, 1055f)), 23209u, Struct_2(vec4<bool>(false, false, false, true), vec3<f32>(176f, -2470f, -380f), Struct_1(true, i32(-2147483648), -30292i, vec3<f32>(-498f, -259f, 646f)), vec4<f32>(150f, -1069f, -197f, 1851f)), 1i), Struct_3(Struct_1(true, -1i, 10854i, vec3<f32>(865f, 550f, -1147f)), Struct_1(false, 55979i, -1i, vec3<f32>(1064f, 1143f, 816f)), 46781u, Struct_2(vec4<bool>(false, true, true, false), vec3<f32>(1000f, 544f, 1000f), Struct_1(false, 2147483647i, 0i, vec3<f32>(197f, 894f, 1378f)), vec4<f32>(-569f, 207f, 604f, 1000f)), 1i), Struct_3(Struct_1(false, 20699i, i32(-2147483648), vec3<f32>(947f, -185f, 1222f)), Struct_1(true, -12213i, i32(-2147483648), vec3<f32>(476f, -657f, -1935f)), 4294967295u, Struct_2(vec4<bool>(false, false, false, true), vec3<f32>(1233f, -508f, 2512f), Struct_1(true, 0i, -9681i, vec3<f32>(-924f, 1087f, 339f)), vec4<f32>(1000f, 952f, -257f, 319f)), -1i), Struct_3(Struct_1(true, -1i, 778i, vec3<f32>(-607f, -681f, 1374f)), Struct_1(false, 37901i, i32(-2147483648), vec3<f32>(-994f, 1399f, -1000f)), 3904u, Struct_2(vec4<bool>(false, true, false, true), vec3<f32>(582f, -248f, 1494f), Struct_1(false, 102632i, i32(-2147483648), vec3<f32>(-1093f, 425f, -671f)), vec4<f32>(607f, -102f, -495f, -2436f)), -1i));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    global1 = Struct_1(global1.a, global1.b << ((70554u >> (_wgslsmith_sub_u32(_wgslsmith_add_u32(global0.x, u_input.a), 1u | u_input.a) % 32u)) % 32u), ~(-global1.c), _wgslsmith_f_op_vec3_f32(select(global1.d, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) + _wgslsmith_f_op_f32(f32(-1f) * -1559f)), _wgslsmith_f_op_f32(round(global1.d.x)), global1.d.x), vec3<bool>(global1.a, false, false))));
    var var_0 = Struct_2(!(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(global1.a, global1.a, true, true), global1.a))), global1.d, Struct_1(true, ~u_input.c, _wgslsmith_mult_i32(0i, ~u_input.b) << (u_input.a % 32u), _wgslsmith_f_op_vec3_f32(global1.d - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, global1.d.x, -905f) - global1.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1704f, global1.d.x), global1.d.x), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.d.x)) + _wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1044f, global1.d.x, true)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.x, global1.d.x, global1.d.x, _wgslsmith_f_op_f32(round(global1.d.x))))));
    let var_1 = var_0.a.yy;
    var var_2 = -var_0.c.c;
    let var_3 = var_0.a.xz;
    return min(~u_input.a | 1u, global0.x);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> bool {
    global1 = arg_1.c;
    global2 = array<Struct_3, 6>();
    var var_0 = vec2<bool>(any(vec3<bool>(arg_0.c.a, !any(arg_0.a.wx), true)), true);
    global1 = arg_0.c;
    return ~arg_2 != (max(_wgslsmith_sub_u32(min(4294967295u, 58423u), select(u_input.a, 19674u, false)), func_3()) & ~select(~global0.x, ~94204u, true));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(arg_0.b, Struct_1(arg_1.c.a, _wgslsmith_dot_vec3_i32(~countOneBits(vec3<i32>(57943i, 1i, 2147483647i)), -vec3<i32>(-2529i, 2147483647i, u_input.c)), -(~max(0i, u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1.d.x)), global1.d.x, global1.d.x)), 1u, Struct_2(arg_0.d.a, _wgslsmith_f_op_vec3_f32(max(global1.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, -1000f, -220f)) - global1.d))), arg_0.a, vec4<f32>(-1185f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-550f, arg_0.b.d.x))), _wgslsmith_f_op_f32(floor(arg_1.c.d.x)), 708f)), firstLeadingBit(~(-arg_0.e) | ~countOneBits(-37835i)));
    var var_1 = u_input.c;
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b) * _wgslsmith_f_op_vec3_f32(-arg_1.c.d))))));
    let var_4 = select(true, all(vec4<bool>(-2147483647i > abs(arg_0.b.c), !(global0.x >= 1u), !(!var_0.a.a), (var_2.e <= var_0.a.b) | true)), (reverseBits(-15549i) >= arg_0.b.b) != var_2.d.a.x);
    return arg_1.c;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = u_input.a;
    var var_1 = func_4(global2[_wgslsmith_index_u32(4294967295u, 6u)], Struct_2(!vec4<bool>(global1.a, true, false, func_2(Struct_2(vec4<bool>(true, true, false, true), vec3<f32>(-1167f, -1269f, global1.d.x), Struct_1(true, -38110i, 0i, vec3<f32>(global1.d.x, global1.d.x, global1.d.x)), vec4<f32>(853f, -1413f, 336f, -861f)), Struct_2(vec4<bool>(true, false, false, arg_0), vec3<f32>(-311f, 846f, global1.d.x), Struct_1(true, -27427i, global1.b, global1.d), vec4<f32>(global1.d.x, -513f, 1000f, global1.d.x)), u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-324f * global1.d.x) - _wgslsmith_f_op_f32(step(global1.d.x, -1297f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -468f))), 1000f), Struct_1(any(!vec2<bool>(global1.a, global1.a)), u_input.c, 0i, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, global1.d.x, global1.d.x) - _wgslsmith_f_op_vec3_f32(-global1.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.d.x, global1.d.x, global1.d.x, global1.d.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.x, global1.d.x, -1000f, global1.d.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.x, global1.d.x, -256f, global1.d.x) + vec4<f32>(global1.d.x, -1000f, 509f, -392f)))));
    global0 = _wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(select(~vec4<u32>(global0.x, global0.x, 1004u, 0u), countOneBits(vec4<u32>(global0.x, 4294967295u, 106090u, global0.x)), select(vec4<bool>(false, var_1.a, false, false), vec4<bool>(true, true, arg_0, global1.a), vec4<bool>(arg_0, arg_0, false, arg_0))), vec4<u32>(~1u, global0.x, ~1u, global0.x >> (u_input.a % 32u)), select(vec4<u32>(35856u, u_input.a, u_input.a, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, global0.x, 30815u, global0.x), vec4<u32>(u_input.a, 7594u, 17928u, 1u), vec4<u32>(0u, global0.x, 82810u, 80076u)), true)), vec4<u32>(40319u, ~38906u & ~(~u_input.a), ~(u_input.a | 40595u), 1u));
    var var_2 = _wgslsmith_clamp_i32(53246i, -(~(-var_1.b)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, var_1.c, -27039i), vec3<i32>(global1.c, var_1.b, var_1.c)), vec3<i32>(var_1.b, 1i, 38290i) << (vec3<u32>(4294967295u, 14466u, u_input.a) % vec3<u32>(32u))), countOneBits(vec3<i32>(var_1.b, 29293i, u_input.c) | vec3<i32>(0i, -2147483647i, u_input.b))), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(18635i, u_input.c, var_1.b) | vec3<i32>(global1.c, var_1.c, -1247i), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global1.b, u_input.b), vec3<i32>(-28301i, -17428i, -1i)), vec3<bool>(true, true, global1.a)), _wgslsmith_mult_vec3_i32(-vec3<i32>(-11958i, 24554i, -1i), vec3<i32>(39483i, var_1.b, 1i)), vec3<i32>(-2147483647i, global1.b >> (39028u % 32u), firstLeadingBit(-1i)))));
    let var_3 = false;
    return Struct_2(vec4<bool>(true, !global1.a, any(vec4<bool>(true, func_4(Struct_3(Struct_1(global1.a, var_1.c, global1.b, vec3<f32>(var_1.d.x, var_1.d.x, -236f)), Struct_1(var_3, 33154i, u_input.c, vec3<f32>(763f, var_1.d.x, var_1.d.x)), global0.x, Struct_2(vec4<bool>(var_1.a, arg_0, var_1.a, var_1.a), vec3<f32>(231f, var_1.d.x, var_1.d.x), Struct_1(arg_0, var_1.b, 37514i, global1.d), vec4<f32>(560f, 630f, 1406f, global1.d.x)), 1i), Struct_2(vec4<bool>(false, false, var_3, true), global1.d, Struct_1(global1.a, var_1.b, -18393i, global1.d), vec4<f32>(953f, var_1.d.x, global1.d.x, 1214f))).a, all(vec2<bool>(false, var_1.a)), false)), ~u_input.a >= u_input.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(-global1.d.x))), _wgslsmith_f_op_f32(trunc(global1.d.x)), global1.d.x), Struct_1((~global0.x >= (17358u ^ u_input.a)) & (~var_1.b == var_1.b), 0i, _wgslsmith_div_i32(var_1.b, _wgslsmith_mod_i32(var_1.c, select(var_1.c, u_input.c, false))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -426f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + -797f), global1.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(924f, -1206f, global1.d.x, var_1.d.x)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1912f, 1407f, 1312f, var_1.d.x)))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.d.x, -308f, var_1.d.x, var_1.d.x), vec4<f32>(196f, -1158f, -2220f, -210f))))))));
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(387f, arg_1.c.d.x)))));
    global1 = Struct_1(false, ~(_wgslsmith_clamp_i32(-23919i, global1.b, u_input.c) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-47647i, arg_1.c.c, global1.c, global1.c), vec4<i32>(u_input.b, arg_1.c.b, -18661i, global1.c))) >> (~((0u << (global0.x % 32u)) ^ 32390u) % 32u), -(~(~u_input.c) >> (57643u % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_1(false).b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(-878f * arg_1.d.x), _wgslsmith_div_f32(737f, var_0)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global1.d, global1.d)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.b.x, var_0, -1297f)))))));
    let var_1 = _wgslsmith_div_u32(~u_input.a, abs(global0.x));
    global1 = func_4(Struct_3(arg_1.c, Struct_1(!arg_0, -(i32(-1i) * -27426i), 49378i, vec3<f32>(_wgslsmith_f_op_f32(255f - 1000f), _wgslsmith_div_f32(-893f, global1.d.x), _wgslsmith_div_f32(-1000f, var_0))), var_1, Struct_2(vec4<bool>(true, select(arg_1.a.x, false, arg_0), global1.a & false, false), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(293f, var_0, arg_1.c.d.x)), vec3<f32>(global1.d.x, -1061f, var_0))), func_1(true).c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_1.d + arg_1.d), vec4<f32>(1055f, -1297f, global1.d.x, global1.d.x), select(vec4<bool>(arg_0, false, false, true), arg_1.a, false)))), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.b, 6784i, 28054i, global1.c) | vec4<i32>(17304i, -1i, arg_1.c.b, u_input.b), ~vec4<i32>(251i, arg_1.c.b, 1i, -1i)))), arg_1);
    global0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~(~firstTrailingBit(47133u)), var_1, abs(u_input.a) | _wgslsmith_dot_vec3_u32(~global0.zxx, global0.yzy), ~_wgslsmith_mod_u32(u_input.a, u_input.a) ^ firstTrailingBit(1u)), vec4<u32>(u_input.a, 114913u, ~var_1 | u_input.a, 96652u));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1.c.d), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0, 304f, arg_1.b.x), global1.d)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.d.x, global1.d.x, arg_1.c.d.x)))))));
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    global2 = array<Struct_3, 6>();
    global0 = vec4<u32>(u_input.a, global0.x, ~global0.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global0.wy, vec2<u32>(~1u, 13038u)), 10006u));
    var var_0 = all(select(func_1(all(vec3<bool>(true, true, true))).a.wz, vec2<bool>(arg_1.a.x && !global1.a, false), select(arg_1.a.yw, select(arg_1.a.xw, arg_1.a.xw, vec2<bool>(true, true)), select(vec2<bool>(false, true), select(arg_1.a.ww, vec2<bool>(global1.a, arg_1.c.a), arg_1.a.zx), !vec2<bool>(arg_1.a.x, global1.a)))));
    var_0 = arg_1.a.x;
    global1 = Struct_1(global1.a, global1.c, _wgslsmith_dot_vec3_i32(-firstLeadingBit(vec3<i32>(u_input.c, -21463i, arg_1.c.c)), abs(~vec3<i32>(1i, 1i, 1i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(292f, _wgslsmith_f_op_vec3_f32(func_5(global1.a, arg_1)).x)), -348f, global1.d.x));
    return Struct_1(global1.a, arg_1.c.c, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, _wgslsmith_div_i32(global1.b, _wgslsmith_clamp_i32(-33510i, 2147483647i, 2147483647i))), ~vec3<i32>(countOneBits(arg_0), ~2147483647i, -2147483647i)), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(u_input.b, Struct_2(vec4<bool>(!(global1.d.x <= global1.d.x), true, any(!vec3<bool>(false, global1.a, false)), !(!global1.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(true, func_1(false))), vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(floor(-1646f)), _wgslsmith_f_op_f32(step(-1000f, 740f)))), Struct_1(any(func_1(global1.a).a.yyx), global1.c, 2147483647i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global1.d - global1.d), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2245f, -1006f, global1.d.x), global1.d))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.x, 2192f, global1.d.x, 161f)))), global1.c);
    let var_0 = func_6(~select(~_wgslsmith_mult_i32(u_input.b, u_input.b), select(u_input.b << (global0.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, 0i), vec2<i32>(global1.c, u_input.b)), !global1.a), 235f > _wgslsmith_f_op_f32(global1.d.x * 598f)), Struct_2(select(vec4<bool>(func_1(false).a.x, true, true, func_1(false).c.a), vec4<bool>(true, select(global1.a, global1.a, global1.a), global1.a, true), !select(vec4<bool>(true, global1.a, global1.a, global1.a), vec4<bool>(global1.a, global1.a, true, global1.a), vec4<bool>(true, true, global1.a, false))), func_1(true).c.d, Struct_1(-1845f != global1.d.x, global1.b, _wgslsmith_add_i32(max(-37570i, u_input.c), 0i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, -624f, global1.d.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.x, -1932f, 757f, -1857f))))), _wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(global1.b, u_input.c, u_input.c), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -65493i, global1.c), vec3<i32>(-41427i, 10345i, u_input.c))), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(global1.c, 17287i), func_1(false).c.c, 48647i), vec3<i32>(firstTrailingBit(-52109i), u_input.c ^ global1.c, 41744i))));
    global2 = array<Struct_3, 6>();
    var var_1 = Struct_2(select(vec4<bool>(global1.a, var_0.a, false && any(vec4<bool>(var_0.a, true, false, global1.a)), all(vec4<bool>(var_0.a, global1.a, global1.a, global1.a))), !vec4<bool>(true, var_0.a, true, false), !select(!vec4<bool>(var_0.a, true, global1.a, var_0.a), vec4<bool>(var_0.a, true, true, false), global1.a & false)), global1.d, func_6(-1i << ((~30446u << ((4294967295u << (global0.x % 32u)) % 32u)) % 32u), func_1(!(var_0.d.x != 645f)), 1i), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1949f, global1.d.x, _wgslsmith_f_op_f32(var_0.d.x + -1000f), _wgslsmith_f_op_f32(-var_0.d.x))))));
    var_1 = Struct_2(select(!func_1(true).a, var_1.a, select(vec4<bool>(func_2(Struct_2(vec4<bool>(global1.a, global1.a, var_1.a.x, global1.a), var_0.d, Struct_1(true, u_input.b, 2147483647i, var_1.b), vec4<f32>(var_0.d.x, 1715f, 731f, var_1.c.d.x)), Struct_2(var_1.a, vec3<f32>(global1.d.x, var_1.d.x, var_1.b.x), Struct_1(true, u_input.c, 2147483647i, var_0.d), vec4<f32>(var_0.d.x, 1000f, 441f, var_0.d.x)), 4294967295u), false, true, false), select(func_1(var_0.a).a, func_1(true).a, vec4<bool>(global1.a, true, false, var_1.a.x)), vec4<bool>(!var_0.a, false, var_0.a, false))), global1.d, Struct_1(!func_2(func_1(false), func_1(var_0.a), abs(global0.x)), -1i, _wgslsmith_add_i32(var_1.c.b, var_1.c.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(199f, var_0.d.x, var_1.c.d.x)), !var_1.a.wxz)))), vec4<f32>(_wgslsmith_f_op_f32(-2025f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.x, var_1.c.d.x) * _wgslsmith_f_op_f32(-var_1.c.d.x))), _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -299f))), -1105f));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_div_f32(296f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -325f))) + _wgslsmith_f_op_f32(f32(-1f) * -502f))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, u_input.a), ~4294967295u), 66314u), _wgslsmith_mod_vec2_u32(~abs(vec2<u32>(63143u, global0.x)), global0.yy)));
}

