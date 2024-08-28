struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 25> = array<f32, 25>(-484f, 1000f, -1446f, -141f, -438f, -486f, -1000f, 284f, 2367f, 783f, -560f, 383f, 1032f, -712f, -1189f, 714f, -206f, -1193f, -1000f, 1020f, -1838f, -596f, -1000f, -1128f, 1174f);

var<private> global2: Struct_3;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1158f, global1[_wgslsmith_index_u32(1143u, 25u)], -491f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-228f, 393f, global1[_wgslsmith_index_u32(global2.b.x, 25u)]))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1412f, global1[_wgslsmith_index_u32(5698u, 25u)], global1[_wgslsmith_index_u32(40969u, 25u)]) - vec3<f32>(661f, 2156f, global1[_wgslsmith_index_u32(42510u, 25u)])), _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(global2.a, 25u)], global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(arg_0.b.x, 25u)]), vec3<f32>(global1[_wgslsmith_index_u32(25872u, 25u)], global1[_wgslsmith_index_u32(8158u, 25u)], global1[_wgslsmith_index_u32(44434u, 25u)])), vec3<bool>(false, arg_0.d.c.x, arg_0.d.c.x))))), vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(18270u, 12700u), 25u)], global1[_wgslsmith_index_u32(reverseBits(min(~35183u, arg_0.b.x)), 25u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 25u)] - 622f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 25u)])) * 308f), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.b.x, _wgslsmith_clamp_u32(34973u, 48021u, 0u), _wgslsmith_add_u32(2080u, arg_0.a)), 25u)], -156f))), ~global2.b.x ^ 7529u, !vec2<bool>(all(!arg_0.d.c), any(vec4<bool>(false, false, arg_0.d.c.x, arg_0.c))));
    let var_1 = firstLeadingBit(arg_0.d.a) != -(i32(-1i) * -global2.d.b);
    let var_2 = firstLeadingBit(~(~_wgslsmith_sub_vec4_u32(max(vec4<u32>(arg_0.a, u_input.a, 4294967295u, arg_0.b.x), vec4<u32>(u_input.a, 1u, global2.b.x, 39466u)), vec4<u32>(var_0.c, global2.a, 4294967295u, arg_0.b.x) | vec4<u32>(46939u, 21603u, 13242u, var_0.c))));
    let var_3 = Struct_3(~_wgslsmith_mult_u32(reverseBits(global2.a), _wgslsmith_mult_u32(~global2.b.x, global2.a)), firstLeadingBit(vec3<u32>(19659u | var_2.x, global2.b.x, 6262u)), false, Struct_2(global2.d.a, u_input.b.x, var_0.d));
    let var_4 = arg_0;
    return vec2<bool>(false, arg_0.c);
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(-1495f)), global1[_wgslsmith_index_u32(4294967295u, 25u)], -664f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(6308u, 25u)]), vec4<f32>(global1[_wgslsmith_index_u32(19360u, 25u)], global1[_wgslsmith_index_u32(u_input.a, 25u)], 816f, global1[_wgslsmith_index_u32(global2.a, 25u)]))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], -538f, global1[_wgslsmith_index_u32(global2.a, 25u)], global1[_wgslsmith_index_u32(23u, 25u)]) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], -1000f, 626f, -314f)))), vec4<f32>(global1[_wgslsmith_index_u32(abs(u_input.a), 25u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.b.x, 25u)] - global1[_wgslsmith_index_u32(98180u, 25u)]), _wgslsmith_f_op_f32(step(-1306f, 2171f)), -1060f))), global2.b.x, func_3(Struct_3(~u_input.a, vec3<u32>(u_input.a | 3561u, global2.b.x, _wgslsmith_sub_u32(global2.a, global2.a)), false, global2.d)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(floor(var_0.a))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~13633u, 25u)] - _wgslsmith_f_op_f32(floor(-998f))) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~78771u, 25u)])), 398f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(279f)) - _wgslsmith_f_op_f32(max(-1479f, 2384f))))), global1[_wgslsmith_index_u32(4159u, 25u)]), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.a, 4294967295u, global2.b.x) & ~vec3<u32>(u_input.a, 41896u, u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(1u, global2.a, 99043u), ~global2.b)), vec3<u32>(min(1u, 72863u), 39927u, abs(~var_0.c))), !func_3(Struct_3(var_0.c, global2.b ^ vec3<u32>(global2.b.x, u_input.a, 0u), any(vec3<bool>(false, false, var_0.d.x)), Struct_2(-49980i, -36311i, global2.d.c))));
    var var_2 = 1433f;
    let var_3 = Struct_2(global2.d.a, ~global2.d.b, var_1.d);
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(step(var_1.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, -395f, 1000f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, -1000f, -482f) + vec3<f32>(var_1.b.x, global1[_wgslsmith_index_u32(75544u, 25u)], global1[_wgslsmith_index_u32(1u, 25u)]))), vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * global1[_wgslsmith_index_u32(1u, 25u)]), _wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(round(var_0.b.x))), vec3<bool>(false, !arg_0, all(vec2<bool>(true, false))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-368f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, abs(var_0.c)), 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)], -637f)), 1u | abs(u_input.a), func_3(Struct_3(global2.a, global2.b, !var_3.c.x, var_3)));
    return -reverseBits(-18013i);
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: i32) -> u32 {
    var var_0 = 0u;
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-167f)) * arg_1.x), arg_1.x)), arg_1.x, arg_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(37480u, 25u)], arg_1.x, global1[_wgslsmith_index_u32(u_input.a, 25u)], 387f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4916u, 25u)], arg_1.x, 896f, -1826f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1000f, -412f, arg_1.x) - vec4<f32>(1000f, -360f, global1[_wgslsmith_index_u32(1u, 25u)], arg_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global2.b.x, 25u)], global1[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(53199u, 25u)], 1317f) - vec4<f32>(global1[_wgslsmith_index_u32(1u, 25u)], 1265f, global1[_wgslsmith_index_u32(global2.a, 25u)], global1[_wgslsmith_index_u32(25516u, 25u)])))))), _wgslsmith_sub_u32(global2.a, countOneBits(4294967295u)), global2.d.c);
    global2 = Struct_3(global2.a, ~global2.b, global2.c, Struct_2(2147483647i, _wgslsmith_sub_i32(arg_0, -2147483647i), var_1.d));
    let var_2 = !(!(!vec4<bool>(global2.d.c.x, all(vec3<bool>(global2.d.c.x, false, global2.d.c.x)), true, global2.c)));
    var_0 = 0u;
    return global2.a;
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    let var_0 = ~max(func_4(max(_wgslsmith_add_i32(global2.d.a, -1i), func_2(false)), arg_0.a.xx, ~u_input.c.x), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global2.b.x, 0u, global2.b.x, arg_0.c)), ~vec4<u32>(4294967295u, 4294967295u, 74058u, 6577u) << (vec4<u32>(0u, u_input.a, 4294967295u, 0u) % vec4<u32>(32u))));
    global0 = select(arg_0.d.x, global2.d.c.x, arg_0.d.x);
    let var_1 = func_4(countOneBits(_wgslsmith_add_i32(global2.d.b, -_wgslsmith_div_i32(36586i, global2.d.a))), vec2<f32>(-1090f, _wgslsmith_f_op_f32(368f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0, 25u)] - 301f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(39087u, 25u)] - global1[_wgslsmith_index_u32(126695u, 25u)]), true)))), abs(global2.d.a));
    return Struct_4(vec3<i32>(u_input.b.x, -2147483647i, min(firstLeadingBit(_wgslsmith_clamp_i32(1i, u_input.b.x, 1i)), 13027i)), Struct_1(arg_0.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(arg_0.b.x + global1[_wgslsmith_index_u32(4294967295u, 25u)])), -762f, _wgslsmith_f_op_f32(f32(-1f) * -217f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 25u)])), 4294967295u, select(func_3(Struct_3(65562u, vec3<u32>(103578u, global2.a, 31761u), arg_0.d.x, global2.d)), global2.d.c, global2.c)), Struct_3(u_input.a, _wgslsmith_sub_vec3_u32(global2.b, ~global2.b), ~(~global2.b.x) == u_input.a, global2.d));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: i32) -> f32 {
    global2 = Struct_3(u_input.a, func_1(arg_0.b).c.b, arg_0.b.d.x, func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.b.a), arg_0.b.b, ~(~1u), arg_1)).c.d);
    var var_0 = arg_0.b.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.b.b + _wgslsmith_f_op_vec4_f32(trunc(arg_0.b.b))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.b.b * arg_0.b.b) + arg_0.b.b), arg_0.b.b))));
    let var_2 = func_1(arg_0.b).c;
    var var_3 = arg_0.c.d;
    return -1066f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(66452u, firstTrailingBit(u_input.a));
    global0 = true | select(!(!global2.d.c.x), true, false);
    global1 = array<f32, 25>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_5(func_1(Struct_1(vec3<f32>(-671f, 1502f, global1[_wgslsmith_index_u32(var_0.x, 25u)]), vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(var_0.x, 25u)], -1244f, global1[_wgslsmith_index_u32(global2.a, 25u)]), 0u, vec2<bool>(false, true))), !global2.d.c, global2.d.b)), _wgslsmith_f_op_f32(abs(-1148f)))));
    var var_2 = select(!vec3<bool>(!global2.d.c.x & true, global2.d.c.x, global2.d.c.x), select(vec3<bool>(true, global2.c, func_3(func_1(Struct_1(vec3<f32>(var_1.x, global1[_wgslsmith_index_u32(0u, 25u)], -692f), vec4<f32>(-1232f, var_1.x, 287f, global1[_wgslsmith_index_u32(u_input.a, 25u)]), 77489u, global2.d.c)).c).x), vec3<bool>(all(global2.d.c), false, global2.c & global2.c), select(vec3<bool>(any(vec3<bool>(true, global2.d.c.x, false)), false, all(vec4<bool>(true, global2.c, true, global2.d.c.x))), !select(vec3<bool>(true, false, false), vec3<bool>(global2.d.c.x, true, global2.c), vec3<bool>(global2.c, global2.d.c.x, global2.d.c.x)), true)), true);
    var var_3 = global2.d.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(0u, var_0.x) | firstLeadingBit(abs(global2.b.x)), reverseBits(vec3<i32>(1i, _wgslsmith_div_i32(u_input.c.x, 31849i), _wgslsmith_div_i32(u_input.c.x, u_input.d.x)) | func_1(Struct_1(vec3<f32>(var_1.x, var_1.x, var_1.x), vec4<f32>(672f, 258f, var_1.x, 1598f), u_input.a, var_2.yx)).a));
}

