struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(-307f, 834f, -1000f, 310f), vec4<f32>(639f, 108f, 682f, 160f), vec4<f32>(797f, -385f, -200f, -247f), vec4<f32>(-1258f, 277f, -115f, -957f), vec4<f32>(-691f, 1567f, -1956f, 1899f), vec4<f32>(317f, 1453f, -146f, -265f), vec4<f32>(-182f, -360f, -1114f, 668f), vec4<f32>(-904f, 341f, 848f, 637f), vec4<f32>(278f, 710f, -1114f, -1238f), vec4<f32>(1297f, -1083f, -1000f, -189f), vec4<f32>(-1674f, -1000f, 141f, -1482f), vec4<f32>(-913f, -2092f, -570f, -1547f), vec4<f32>(712f, 1000f, 1000f, -145f), vec4<f32>(-1000f, 1984f, 1930f, -1287f), vec4<f32>(501f, 639f, 559f, -733f), vec4<f32>(176f, 1137f, -2130f, 927f), vec4<f32>(2627f, -1320f, 2260f, 1037f), vec4<f32>(1000f, -841f, 370f, -649f), vec4<f32>(1330f, 2114f, -774f, -1685f), vec4<f32>(3274f, 574f, -1056f, -120f), vec4<f32>(-884f, -750f, 1483f, -347f), vec4<f32>(922f, 1430f, -368f, -154f), vec4<f32>(-506f, -967f, -502f, -476f), vec4<f32>(-1096f, -850f, -1094f, -684f), vec4<f32>(490f, 1362f, -1031f, 1266f), vec4<f32>(-316f, -719f, -1147f, 1000f), vec4<f32>(-885f, 1000f, -485f, 1496f), vec4<f32>(198f, -612f, 555f, 146f), vec4<f32>(-1053f, 2210f, -1492f, 149f), vec4<f32>(-824f, -587f, 1302f, -869f), vec4<f32>(1251f, -1182f, 543f, 272f), vec4<f32>(848f, -595f, -1637f, 793f));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>) -> f32 {
    global0 = array<vec4<f32>, 32>();
    var var_0 = _wgslsmith_mult_vec4_u32(~select(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(1u, u_input.b.x, u_input.c, 15293u)), ~vec4<u32>(24371u, 4294967295u, u_input.b.x, 0u)), vec4<u32>(select(u_input.b.x, 43446u, arg_0.a.a.x), _wgslsmith_sub_u32(u_input.b.x, 599u), 1u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 4712u, u_input.c))), arg_0.b.a), vec4<u32>(u_input.b.x, 4949u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4437u) >> (u_input.b.xx % vec2<u32>(32u)), max(vec2<u32>(u_input.c, 46886u), u_input.b.yy)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, u_input.c), vec4<u32>(1u, 1u, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.c, u_input.b.x, 4294967295u, u_input.c))), _wgslsmith_div_u32(u_input.c, firstTrailingBit(u_input.b.x))));
    var var_1 = arg_0.b.a;
    var var_2 = vec3<bool>(false, var_1.x, all(arg_0.a.a));
    global0 = array<vec4<f32>, 32>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-191f, -1636f)) - _wgslsmith_f_op_f32(-182f - -2598f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(595f, _wgslsmith_f_op_f32(max(-1182f, -396f))))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool) -> vec2<f32> {
    let var_0 = !vec3<bool>(arg_1.b, true, !arg_2 || (arg_2 && true));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(658f)) * -770f) + 1f))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1703f - _wgslsmith_f_op_f32(-1502f - -1629f)))), _wgslsmith_f_op_f32(260f - _wgslsmith_f_op_f32(ceil(-217f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-911f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(vec4<bool>(arg_2, var_0.x, var_0.x, arg_1.a.x), false, vec4<i32>(u_input.a.x, arg_0.x, u_input.a.x, 0i)), Struct_1(vec4<bool>(false, false, arg_2, true), arg_2, arg_1.c)), vec3<bool>(false, true, arg_1.a.x)))) - _wgslsmith_f_op_f32(-2425f * _wgslsmith_f_op_f32(f32(-1f) * -1069f)))), select(!var_0.x, arg_1.a.x, !var_0.x), arg_1, arg_1);
    let var_2 = Struct_3(Struct_1(!(!arg_1.a), true, vec4<i32>(var_1.d.c.x, ~(-11155i), 1i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(var_1.d.c.wyw, vec3<i32>(2147483647i, arg_0.x, var_1.e.c.x)), _wgslsmith_clamp_i32(-6429i, u_input.a.x, 21378i)))), Struct_1(var_1.e.a, any(select(arg_1.a.ww, !var_0.yy, select(vec2<bool>(true, var_0.x), vec2<bool>(true, true), vec2<bool>(var_0.x, arg_1.a.x)))), -vec4<i32>(u_input.a.x << (u_input.c % 32u), _wgslsmith_div_i32(-2147483647i, 2147483647i), 1i, var_1.e.c.x)));
    var var_3 = _wgslsmith_mult_vec4_i32(abs(firstTrailingBit(firstTrailingBit(var_1.d.c))), _wgslsmith_mult_vec4_i32(-vec4<i32>(1i, 176i, _wgslsmith_dot_vec3_i32(var_2.a.c.xzz, arg_1.c.ywx), ~(-1i)), vec4<i32>(46871i, -u_input.a.x << (1u % 32u), _wgslsmith_div_i32(-2147483647i, _wgslsmith_mult_i32(var_1.d.c.x, arg_1.c.x)), 0i)));
    let var_4 = !var_1.d.a;
    return _wgslsmith_f_op_vec2_f32(var_1.b.zx * var_1.b.xy);
}

fn func_1() -> f32 {
    global0 = array<vec4<f32>, 32>();
    global0 = array<vec4<f32>, 32>();
    var var_0 = 23110u;
    let var_1 = all(vec4<bool>(true, true, false, false));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_2(vec2<i32>(u_input.a.x, 1i), Struct_1(vec4<bool>(true, false, var_1, true), false, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)), var_1)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -2526f), vec2<f32>(1000f, 421f), vec2<bool>(var_1, false))))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1916f, 1647f) + _wgslsmith_f_op_f32(1779f - 653f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1413f, 1000f))))));
    return _wgslsmith_f_op_f32(sign(633f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global0 = array<vec4<f32>, 32>();
    let var_1 = select(1u, abs(u_input.b.x), false) ^ abs(u_input.b.x);
    let var_2 = _wgslsmith_f_op_f32(func_1());
    global0 = array<vec4<f32>, 32>();
    global0 = array<vec4<f32>, 32>();
    let var_3 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1035f)), vec4<f32>(-168f, -124f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-550f)) * _wgslsmith_f_op_f32(var_2 + var_2)), 606f), (any(vec3<bool>(false, true, false)) | (var_0 < u_input.a.x)) && false, Struct_1(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), false), _wgslsmith_f_op_f32(-202f + var_2) < var_2, max(vec4<i32>(var_0, var_0, 1i, u_input.a.x), min(vec4<i32>(var_0, var_0, u_input.a.x, 0i), vec4<i32>(-1i, 0i, 1i, 1474i)))), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), true, vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, -11186i, 1i, 85833i))), u_input.c, all(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), !all(vec2<bool>(false, true)))));
    let var_4 = true;
    var var_5 = select(!var_3.a.e.a, var_3.a.d.a, var_4);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(reverseBits(~(vec3<i32>(-15009i, 37375i, 58725i) | vec3<i32>(var_3.a.d.c.x, -61088i, -1i))), ~var_3.a.d.c.wzz | ~vec3<i32>(var_0, u_input.a.x, -2147483647i)), _wgslsmith_sub_u32(var_1, ~abs(~var_3.b)));
}

