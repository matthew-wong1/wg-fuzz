struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_3,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-368f, -1832f, -882f, -1365f);

var<private> global1: array<f32, 27> = array<f32, 27>(789f, 295f, 495f, -2873f, 1443f, 1092f, 2034f, -270f, -2183f, -150f, 1006f, -1097f, 928f, 428f, 1006f, 380f, -519f, 1617f, -462f, -2035f, 580f, -644f, 808f, 409f, -721f, 2240f, 1697f);

var<private> global2: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<bool>) -> i32 {
    let var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -214f)));
    var var_2 = arg_3.x;
    global2 = true & any(vec4<bool>(arg_3.x, _wgslsmith_dot_vec2_i32(u_input.b.xw, vec2<i32>(u_input.a, 29622i)) <= _wgslsmith_sub_i32(arg_0.x, arg_0.x), var_0 == var_0, !arg_3.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1070f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(arg_2.x, 27u)]))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_2.x, 27u)]), _wgslsmith_f_op_f32(floor(arg_1)))), vec2<bool>(!arg_3.x, min(6410u, arg_2.x) < arg_2.x))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), global0.x)), 674f))));
    return _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(abs(2147483647i), u_input.c.x >> (10384u % 32u), ~arg_0.x, -21269i), _wgslsmith_div_vec4_i32(arg_0 & vec4<i32>(arg_0.x, 74767i, 2147483647i, arg_0.x), reverseBits(u_input.b)), vec4<i32>(var_0 >> (25708u % 32u), u_input.b.x >> (arg_2.x % 32u), -u_input.b.x, ~0i))), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, -1i, ~(var_0 >> (arg_2.x % 32u)), 0i), _wgslsmith_sub_vec4_i32(u_input.c, u_input.c)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec4_i32(u_input.b & u_input.c, -reverseBits(abs(firstLeadingBit(u_input.c))));
    var var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~42741u, ~23170u), vec2<u32>(~4294967295u, _wgslsmith_div_u32(~4294967295u, max(58151u, 54717u))));
    var var_2 = Struct_1(_wgslsmith_add_i32(max(var_0.x, var_0.x) ^ ~u_input.a, func_3(firstTrailingBit(vec4<i32>(-1i, 13906i, var_0.x, arg_1.b.a)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 27u)] + -1278f), ~vec4<u32>(4787u, 8696u, 31898u, 3735u), select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, true), vec2<bool>(false, arg_0)))) | ~select(1870i, max(0i, u_input.b.x), any(vec4<bool>(arg_0, arg_0, true, arg_0))));
    let var_3 = Struct_3(!(!(!(!vec3<bool>(true, arg_0, true)))), _wgslsmith_mod_u32(4294967295u, 4294967295u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(23788u, 4294967295u)), vec2<u32>(1u, 1u)) ^ 1u, 27u)], var_0.x, vec4<i32>(0i, -1i, var_2.a, 1276i));
    let var_4 = _wgslsmith_f_op_f32(341f * 1000f);
    return Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4)))))), Struct_1(57824i));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    global1 = array<f32, 27>();
    var var_0 = global0.zxy;
    var var_1 = vec4<f32>(-1858f, func_2(-5936i != _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_1.b.a, u_input.a), firstTrailingBit(u_input.b.ywy)), Struct_2(var_0.x, func_2(arg_1.b.a <= u_input.b.x, arg_1, any(vec2<bool>(false, true))).b), 1i < (0i << (arg_0 % 32u))).a, 694f, -824f);
    let var_2 = func_2(!(!(!(0i < u_input.a))), func_2(true, arg_1, false), true).b;
    var var_3 = vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(u_input.c, abs(-u_input.c)) | (1i >> (~(~arg_0) % 32u)), _wgslsmith_mod_i32(-(~(-31128i)) << (~(~arg_0) % 32u), arg_1.b.a), -38392i);
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(710f + arg_1.a)))), var_2);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_i32(u_input.b.zx, -countOneBits(u_input.c.yy << (vec2<u32>(arg_0.c.b, arg_0.c.b) % vec2<u32>(32u)))) >> (reverseBits(~vec2<u32>(~2133u, countOneBits(arg_0.c.b))) % vec2<u32>(32u));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-3012f, 1000f, arg_0.e.a, -1415f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1131f, global0.x, global0.x, 1000f), vec4<f32>(-981f, 586f, global0.x, arg_1.a)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, -744f, 1270f, arg_1.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1386f, -233f, 740f, 468f), vec4<f32>(arg_2.a, 1986f, arg_2.a, global0.x)))))));
    var var_1 = -581f;
    let var_2 = arg_0.e.b;
    return Struct_2(arg_2.a, Struct_1(i32(-1i) * -32864i));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: i32) -> f32 {
    var var_0 = func_5(Struct_4(func_4(~firstLeadingBit(0u), func_2(arg_1.x, Struct_2(310f, Struct_1(-1i)), arg_1.x)), vec3<bool>(all(arg_1.yx), global1[_wgslsmith_index_u32(~78701u, 27u)] < _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)])), true), Struct_3(select(!arg_1, select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(true, arg_1.x, false), arg_1.x), select(arg_1, vec3<bool>(false, arg_1.x, false), arg_1.x)), ~countOneBits(51883u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(5812u, 27u)] * 852f) - _wgslsmith_f_op_f32(-global0.x)), select(-10924i, _wgslsmith_dot_vec3_i32(u_input.c.xxw, vec3<i32>(-3625i, -1i, u_input.b.x)), any(vec2<bool>(arg_1.x, false))), u_input.b), Struct_3(arg_1, 28946u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1219f)) * -727f), arg_2, (u_input.b & u_input.b) << (min(vec4<u32>(4294967295u, 45766u, 4294967295u, 83915u), vec4<u32>(48342u, 1u, 62490u, 32478u)) % vec4<u32>(32u))), Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(57928u, 27u)]), _wgslsmith_f_op_f32(1000f + global0.x), all(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)))), Struct_1(-1i))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-338f + _wgslsmith_f_op_f32(-935f + -511f)) * arg_0), Struct_1(firstTrailingBit(_wgslsmith_mult_i32(7600i, -43287i)))), Struct_2(global0.x, Struct_1(-u_input.c.x)));
    let var_1 = -reverseBits(vec2<i32>(13303i, 0i));
    let var_2 = Struct_3(arg_1, ~4799u, global1[_wgslsmith_index_u32(countOneBits(1u), 27u)], -11016i, min(-max(reverseBits(u_input.c), abs(vec4<i32>(-9836i, var_1.x, arg_2, 11265i))), ~abs(_wgslsmith_mod_vec4_i32(u_input.b, u_input.b))));
    var var_3 = Struct_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 27u)] + arg_0) + -526f), func_5(Struct_4(Struct_2(global1[_wgslsmith_index_u32(var_2.b, 27u)], var_0.b), var_2.a, var_2, Struct_3(var_2.a, var_2.b, -238f, u_input.b.x, vec4<i32>(2139i, arg_2, arg_2, 5552i)), Struct_2(-1242f, var_0.b)), Struct_2(_wgslsmith_f_op_f32(max(411f, -2032f)), var_0.b), Struct_2(func_4(4294967295u, Struct_2(var_0.a, var_0.b)).a, func_5(Struct_4(Struct_2(arg_0, Struct_1(var_0.b.a)), arg_1, Struct_3(arg_1, var_2.b, arg_0, var_2.e.x, u_input.c), var_2, Struct_2(-1000f, Struct_1(-7965i))), Struct_2(arg_0, Struct_1(-6448i)), Struct_2(-190f, Struct_1(-1i))).b)).b), !select(select(var_2.a, var_2.a, var_2.a), !(!vec3<bool>(var_2.a.x, var_2.a.x, true)), true), Struct_3(select(var_2.a, select(!arg_1, !vec3<bool>(arg_1.x, false, true), true), vec3<bool>(var_0.b.a != 10165i, false, true || arg_1.x)), var_2.b, -271f, var_0.b.a, ~max(vec4<i32>(-30051i, var_2.e.x, arg_2, 9176i) ^ u_input.b, ~vec4<i32>(2147483647i, 57047i, 1i, 2147483647i))), var_2, Struct_2(341f, var_0.b));
    var_3 = Struct_4(func_2(!arg_1.x, var_3.a, true | any(!vec3<bool>(var_3.d.a.x, true, false))), vec3<bool>(true, false, true), var_2, Struct_3(!select(vec3<bool>(true, true, false), var_3.c.a, !arg_1), min(reverseBits(_wgslsmith_sub_u32(22271u, var_3.d.b)), ~(var_3.c.b >> (329u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_3.d.b, 27u)]) * _wgslsmith_f_op_f32(-1538f * var_3.e.a)), 42188i, var_2.e), var_3.e);
    return _wgslsmith_f_op_f32(-507f * _wgslsmith_f_op_f32(-var_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1955f, 841f, global1[_wgslsmith_index_u32(7967u, 27u)], _wgslsmith_f_op_f32(-571f - global1[_wgslsmith_index_u32(4294967295u, 27u)])) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, -1000f, 1345f, 762f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 27u)], 1433f, 2062f, global1[_wgslsmith_index_u32(1u, 27u)]) - vec4<f32>(global0.x, 300f, global1[_wgslsmith_index_u32(1u, 27u)], global0.x))))) * vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 27u)] - global1[_wgslsmith_index_u32(4294967295u, 27u)]), -745f))), -354f, global1[_wgslsmith_index_u32(9998u, 27u)]));
    let var_1 = firstTrailingBit(vec3<u32>(1u, 0u, 1u));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-962f, global0.x, -634f, 1582f) + _wgslsmith_div_vec4_f32(vec4<f32>(563f, global1[_wgslsmith_index_u32(29720u, 27u)], global1[_wgslsmith_index_u32(2859u, 27u)], -259f), vec4<f32>(global0.x, -367f, -806f, global1[_wgslsmith_index_u32(29952u, 27u)]))))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_1.x, 27u)], -155f, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-193f * 1000f))), 1422f, _wgslsmith_f_op_f32(f32(-1f) * -1010f))) * _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-413f, global0.x)))), vec4<f32>(global1[_wgslsmith_index_u32(var_1.x, 27u)], _wgslsmith_f_op_f32(400f * -1175f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(5823u, 27u)]))), _wgslsmith_f_op_f32(f32(-1f) * -769f))));
    var var_2 = vec3<bool>(-1000f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(var_1.x, 27u)], vec3<bool>(true, false, false), 31919i)) + _wgslsmith_div_f32(-610f, global1[_wgslsmith_index_u32(var_1.x, 27u)])) * -265f), true, true);
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global1[_wgslsmith_index_u32(20599u, 27u)], 587f, -790f)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global1[_wgslsmith_index_u32(4294967295u, 27u)], -812f, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-809f, -1491f, -115f, 526f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1299f, -1057f, global0.x, -259f)))))));
    var_2 = !select(vec3<bool>(var_2.x, all(select(vec2<bool>(false, var_0), var_2.yz, vec2<bool>(true, var_0))), false), vec3<bool>(_wgslsmith_add_i32(u_input.a, 9548i) == func_2(var_2.x, Struct_2(-248f, Struct_1(u_input.b.x)), false).b.a, var_2.x, true), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

