struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, false), -1236f, vec2<u32>(21618u, 0u));

var<private> global1: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(1776f, -769f, -1035f, 221f), vec4<f32>(709f, -1047f, 598f, -288f), vec4<f32>(135f, 1426f, 135f, 170f), vec4<f32>(-274f, -578f, -228f, -540f), vec4<f32>(-607f, -711f, -2288f, 808f), vec4<f32>(1061f, 967f, -1025f, 584f), vec4<f32>(1053f, 373f, -337f, 344f), vec4<f32>(1339f, 1261f, 172f, 566f), vec4<f32>(430f, -803f, 1456f, 864f), vec4<f32>(570f, -164f, -418f, -1640f), vec4<f32>(-1559f, 1203f, 626f, 332f), vec4<f32>(355f, -1756f, 534f, 1329f), vec4<f32>(973f, 1000f, 1000f, -587f), vec4<f32>(-1840f, -840f, -166f, -2010f), vec4<f32>(-568f, 667f, 540f, 308f), vec4<f32>(-1047f, -1312f, -110f, -578f), vec4<f32>(429f, -1000f, -962f, -2018f), vec4<f32>(-1058f, -1007f, 599f, 949f), vec4<f32>(918f, -709f, 1587f, -331f), vec4<f32>(1289f, 668f, 224f, -786f), vec4<f32>(-1000f, -1639f, 845f, -183f), vec4<f32>(-1735f, -978f, 991f, -698f), vec4<f32>(370f, 1662f, -108f, -859f), vec4<f32>(534f, 677f, -484f, 1000f), vec4<f32>(470f, 1524f, -1864f, 1000f), vec4<f32>(331f, -527f, -1880f, -341f), vec4<f32>(-778f, 280f, 962f, 1140f), vec4<f32>(-214f, 545f, 606f, 197f), vec4<f32>(-1274f, 1705f, -328f, 395f));

var<private> global2: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(-577f, -1517f, 1496f), vec3<f32>(2125f, 373f, 1000f), vec3<f32>(-1000f, 1377f, -1000f), vec3<f32>(380f, 243f, -1057f), vec3<f32>(1486f, -1130f, -807f), vec3<f32>(142f, -2123f, -1264f), vec3<f32>(-646f, 1000f, -1834f), vec3<f32>(-1252f, 154f, -1000f), vec3<f32>(-144f, 2017f, -1037f), vec3<f32>(574f, -1603f, -248f), vec3<f32>(-313f, -523f, 520f), vec3<f32>(827f, 328f, 1092f), vec3<f32>(2747f, -2002f, -213f), vec3<f32>(680f, 1286f, 882f));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> u32 {
    global0 = arg_0;
    let var_0 = Struct_1(!(!arg_0.a), _wgslsmith_f_op_f32(sign(170f)), arg_0.c);
    let var_1 = vec3<bool>(true, !(countOneBits(u_input.a.x) != firstLeadingBit(u_input.a.x)), !(!(arg_1 & all(vec2<bool>(true, global0.a.x)))));
    let var_2 = var_0;
    var var_3 = _wgslsmith_div_i32(select(abs(-30477i), u_input.a.x, false), _wgslsmith_dot_vec2_i32(select(_wgslsmith_add_vec2_i32(u_input.a.xz, u_input.a.zw), ~vec2<i32>(1i, 22568i), any(vec2<bool>(global0.a.x, false))) | -(vec2<i32>(1i, u_input.a.x) ^ u_input.a.xz), u_input.a.xy));
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(!(!(!global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * global0.b), global0.c), ~(-58711i), abs(u_input.a.x));
    var var_1 = Struct_2(var_0.a, -1i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(~(-var_0.c), ~(u_input.a.x & -53147i)), _wgslsmith_div_i32(0i, firstLeadingBit(abs(-1i))), -20197i));
    var var_2 = Struct_1(!select(!(!vec2<bool>(var_1.a.a.x, global0.a.x)), global0.a, var_0.a.a.x), _wgslsmith_f_op_f32(round(-1816f)), vec2<u32>(~func_3(var_1.a, all(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(abs(58307u), 29u)]), 1u));
    let var_3 = select(vec2<bool>(all(!vec4<bool>(true, var_2.a.x, true, var_0.a.a.x)), var_0.a.a.x), !var_1.a.a, vec2<bool>((u_input.a.x & _wgslsmith_add_i32(-79300i, u_input.a.x)) <= 0i, !all(!vec3<bool>(false, var_1.a.a.x, global0.a.x))));
    let var_4 = -vec3<i32>(0i, _wgslsmith_div_i32(var_0.b, -2147483647i), -1i);
    return Struct_1(select(select(var_3, vec2<bool>(true, -18150i != var_1.c), select(!var_0.a.a, var_1.a.a, !var_0.a.a.x)), select(!vec2<bool>(var_3.x, false), select(var_3, !vec2<bool>(true, var_0.a.a.x), var_0.a.a), _wgslsmith_div_u32(122615u, var_1.a.c.x) > ~var_1.a.c.x), any(!vec3<bool>(false, var_1.a.a.x, var_3.x))), var_0.a.b, firstTrailingBit(_wgslsmith_clamp_vec2_u32(var_0.a.c, ~var_1.a.c, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_1.a.c.x), vec2<u32>(32129u, global0.c.x)))) << (var_1.a.c % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    global0 = arg_0;
    global2 = array<vec3<f32>, 14>();
    let var_0 = Struct_2(Struct_1(!arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * _wgslsmith_div_f32(-227f, -1415f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), ~vec2<u32>(~0u, 28272u)), 0i, ~(i32(-1i) * -1i));
    global2 = array<vec3<f32>, 14>();
    global1 = array<vec4<f32>, 29>();
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    global0 = arg_1.a;
    var var_0 = Struct_1(arg_0.a, 3172f, ~arg_0.c);
    var var_1 = var_0.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(33348u, global0.c.x), 14u)], vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b))), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b) * _wgslsmith_f_op_f32(-arg_0.b)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.b)), 768f, _wgslsmith_f_op_f32(trunc(956f))) * vec3<f32>(-443f, _wgslsmith_div_f32(var_0.b, arg_0.b), _wgslsmith_f_op_f32(sign(1032f)))))));
    var_1 = all(vec3<bool>(false, func_4(Struct_1(vec2<bool>(false, arg_0.a.x), _wgslsmith_f_op_f32(767f + arg_1.a.b), ~vec2<u32>(6144u, arg_2)), func_3(arg_0, false, vec4<f32>(1829f, 1000f, 295f, var_2.x)) | ~4294967295u, vec2<bool>(func_2().a.x, true)).a.x, !(arg_1.a.c.x == 4294967295u) | arg_0.a.x));
    return Struct_2(arg_0, abs(~(-19011i)), u_input.a.x);
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    let var_0 = 0u > ~global0.c.x;
    var var_1 = _wgslsmith_div_i32(max(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.wy, vec2<i32>(-1i, 27308i) << (arg_0.a.c % vec2<u32>(32u))), firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x)) >> (global0.c % vec2<u32>(32u)))), arg_0.b);
    var var_2 = var_0;
    var var_3 = arg_0.a;
    global0 = func_5(Struct_1(func_4(arg_0.a, 38161u, arg_0.a.a).a, var_3.b, global0.c), func_5(Struct_1(arg_0.a.a, -988f, ~var_3.c), func_5(func_2(), Struct_2(arg_0.a, ~u_input.a.x, arg_0.c), 0u), ~var_3.c.x), ~13521u).a;
    return func_2();
}

fn func_7(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    let var_0 = false;
    let var_1 = reverseBits(vec3<u32>(~1051u, arg_1.c.x, 12141u));
    var var_2 = u_input.a.yzw | vec3<i32>(_wgslsmith_dot_vec4_i32(~(~u_input.a), u_input.a), ~1i, abs(arg_0 >> (0u % 32u)) ^ _wgslsmith_add_i32(u_input.a.x, ~u_input.a.x));
    global2 = array<vec3<f32>, 14>();
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.a.yzw, _wgslsmith_add_vec3_i32(vec3<i32>(1i, arg_0, _wgslsmith_sub_i32(u_input.a.x, -76492i)), min(vec3<i32>(-24082i, u_input.a.x, -55149i), u_input.a.zyz | vec3<i32>(-1334i, 26209i, arg_2.c)))), firstLeadingBit(_wgslsmith_add_i32(-11862i, 45121i)));
    return func_4(Struct_1(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - global0.b)), vec2<u32>(~4294967295u, func_6(Struct_2(arg_1, 48828i, 2147483647i)).c.x)), var_1.x, global0.a);
}

fn func_1() -> Struct_1 {
    var var_0 = func_7(_wgslsmith_sub_i32(~_wgslsmith_div_i32(u_input.a.x, 0i), ~_wgslsmith_add_i32(~u_input.a.x, ~u_input.a.x)), func_6(func_5(func_4(func_2(), abs(22980u), !vec2<bool>(global0.a.x, global0.a.x)), Struct_2(func_2(), 1i, -u_input.a.x), global0.c.x)), Struct_2(Struct_1(!(!global0.a), global0.b, ~vec2<u32>(19627u, global0.c.x)), u_input.a.x, u_input.a.x), global0.b);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(2392f - var_0.b)), -1011f), _wgslsmith_f_op_f32(-global0.b))));
    let var_2 = _wgslsmith_f_op_f32(-var_0.b);
    global1 = array<vec4<f32>, 29>();
    let var_3 = func_6(Struct_2(Struct_1(var_0.a, global0.b, select(max(var_0.c, vec2<u32>(18409u, 77365u)), var_0.c, select(var_0.a, global0.a, global0.a))), u_input.a.x, ~(-1691i))).a.x;
    return Struct_1(select(select(var_0.a, !vec2<bool>(var_0.a.x, true), !global0.a.x), func_5(func_4(Struct_1(vec2<bool>(var_3, true), -829f, vec2<u32>(global0.c.x, 45574u)), ~4294967295u, global0.a), func_5(func_2(), func_5(Struct_1(vec2<bool>(true, var_0.a.x), 123f, vec2<u32>(global0.c.x, global0.c.x)), Struct_2(Struct_1(var_0.a, var_0.b, var_0.c), -1i, u_input.a.x), 56246u), 1u), 22118u).a.a, !vec2<bool>(func_5(Struct_1(vec2<bool>(var_0.a.x, true), -1000f, global0.c), Struct_2(Struct_1(vec2<bool>(var_0.a.x, var_0.a.x), var_2, global0.c), u_input.a.x, -2147483647i), var_0.c.x).a.a.x, true)), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_add_vec2_u32(func_7(u_input.a.x, Struct_1(select(global0.a, var_0.a, false), var_0.b, var_0.c | global0.c), Struct_2(func_2(), -88690i, abs(-34338i)), _wgslsmith_f_op_f32(f32(-1f) * -2524f)).c, ~_wgslsmith_div_vec2_u32(~vec2<u32>(0u, global0.c.x), global0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    let var_1 = ~19326i;
    global0 = func_1();
    var var_2 = ~(1i >> (global0.c.x % 32u));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(~vec3<u32>(select(1u, 24910u, false), ~75804u, _wgslsmith_mod_u32(0u, global0.c.x)), countOneBits(~firstLeadingBit(vec3<u32>(global0.c.x, 1u, 0u)))), ~vec4<u32>(func_1().c.x >> (firstLeadingBit(30537u) % 32u), firstLeadingBit(0u ^ global0.c.x), 58455u << (firstTrailingBit(global0.c.x) % 32u), func_5(func_1(), func_5(Struct_1(global0.a, -1386f, vec2<u32>(global0.c.x, global0.c.x)), Struct_2(Struct_1(global0.a, global0.b, vec2<u32>(0u, global0.c.x)), var_1, 25i), global0.c.x), 1u).a.c.x), vec4<f32>(global0.b, _wgslsmith_f_op_f32(ceil(func_1().b)), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global0.b)), _wgslsmith_f_op_f32(global0.b + global0.b))))));
}

