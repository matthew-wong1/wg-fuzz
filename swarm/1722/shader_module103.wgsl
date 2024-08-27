struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(-135f, 301f, -1700f), vec3<f32>(-1981f, 220f, -1344f), vec3<f32>(-1469f, 536f, -276f), vec3<f32>(430f, -801f, -695f), vec3<f32>(-767f, -616f, 1589f), vec3<f32>(-1195f, 460f, -262f), vec3<f32>(-984f, 432f, -785f), vec3<f32>(-633f, 800f, -1019f), vec3<f32>(-2253f, 484f, 1753f), vec3<f32>(-1638f, 850f, 678f), vec3<f32>(-1041f, -1000f, -1401f), vec3<f32>(-1619f, -1000f, 366f), vec3<f32>(-1082f, -1234f, -894f), vec3<f32>(748f, -1227f, 1000f), vec3<f32>(-387f, 519f, 1944f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: u32, arg_3: bool) -> Struct_1 {
    let var_0 = ~(-20100i);
    global0 = array<vec3<f32>, 15>();
    global0 = array<vec3<f32>, 15>();
    return Struct_1(vec3<u32>(~select(arg_2, 4294967295u, true), _wgslsmith_add_u32(~_wgslsmith_div_u32(4294967295u, arg_2), 1u), arg_2), select(vec2<bool>(true, _wgslsmith_mult_i32(var_0, u_input.a.x) > u_input.a.x), vec2<bool>(true, false), any(select(select(vec2<bool>(arg_3, arg_3), vec2<bool>(true, false), vec2<bool>(arg_3, arg_3)), vec2<bool>(arg_3, true), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 819f), vec4<f32>(1020f, arg_1.x, arg_0, -1000f))), arg_1, true)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-618f, _wgslsmith_f_op_f32(arg_0 - arg_0), arg_1.x, arg_0) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1658f, 907f, 525f, -1093f), vec4<f32>(1502f, arg_0, 1957f, -999f), vec4<bool>(arg_3, true, false, true)))))));
}

fn func_3() -> bool {
    global0 = array<vec3<f32>, 15>();
    global0 = array<vec3<f32>, 15>();
    let var_0 = ~(~(~4294967295u));
    var var_1 = -525f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1906f));
    return func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(444f, -2093f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-623f)))), _wgslsmith_f_op_f32(1298f + _wgslsmith_f_op_f32(163f - 511f)), _wgslsmith_div_f32(-949f, _wgslsmith_f_op_f32(ceil(-1461f))), -545f) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1546f, -218f)) + -761f), _wgslsmith_f_op_f32(f32(-1f) * -1120f), 1550f, 1000f)), var_0, true).b.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = Struct_5(Struct_3(697f, arg_0, arg_1.zy, 7656u, ~(~arg_2.b.a.yx)), u_input.a, vec2<i32>(firstTrailingBit(u_input.a.x), _wgslsmith_sub_i32(reverseBits(u_input.a.x), ~6316i) << (0u % 32u)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(12739i, u_input.a.x, reverseBits(u_input.a.x), abs(27977i)), vec4<i32>(-u_input.a.x, ~2147483647i, -59319i | u_input.a.x, 0i)), Struct_4(vec4<bool>(7332u != ~arg_1.x, any(!vec4<bool>(true, arg_0.b.x, arg_2.b.b.x, arg_2.b.b.x)), !func_3(), arg_2.b.b.x), arg_2.b.c.zxw));
    global0 = array<vec3<f32>, 15>();
    var var_1 = vec2<bool>(any(!(!vec2<bool>(false, arg_0.b.x))), true);
    var var_2 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_0.a.x, 55477u << (arg_1.x % 32u), _wgslsmith_add_u32(arg_1.x, var_0.a.d)), ~min(arg_1, arg_1)));
    let var_3 = Struct_1(vec3<u32>(~(~abs(4294967295u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 65011u, 15407u) | ~arg_0.a, vec3<u32>(~var_0.a.e.x, ~0u, ~0u)), arg_2.b.a.x), vec2<bool>(arg_0.b.x, !(!all(arg_2.b.b))), vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-601f - arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-761f + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(965f, -802f) + _wgslsmith_f_op_f32(-arg_0.c.x)))));
    return var_0.a;
}

fn func_4(arg_0: Struct_5) -> bool {
    var var_0 = ~(~vec4<u32>(arg_0.a.d, (arg_0.a.e.x | 41301u) & _wgslsmith_dot_vec2_u32(arg_0.a.c, arg_0.a.c), firstTrailingBit(arg_0.a.d >> (0u % 32u)), ~arg_0.a.e.x));
    var_0 = ~(~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(44423u, 15870u, 4294967295u, arg_0.a.d)), abs(vec4<u32>(1u, 13047u, var_0.x, var_0.x))), ~vec4<u32>(4294967295u, 1u, 65702u, arg_0.a.e.x)));
    global0 = array<vec3<f32>, 15>();
    let var_1 = arg_0.a.b;
    let var_2 = Struct_2(var_1.b.x, 16083u, Struct_1(~_wgslsmith_div_vec3_u32(var_1.a, ~vec3<u32>(arg_0.a.e.x, arg_0.a.e.x, 4294967295u)), !vec2<bool>(var_1.b.x, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(710f, var_1.c.x, 1048f, -156f)))), Struct_1(vec3<u32>(var_1.a.x, 1u, abs(var_1.a.x)), !var_1.b, var_1.c), 1i);
    return !all(func_1(_wgslsmith_f_op_f32(exp2(func_1(arg_0.e.b.x, var_2.d.c, var_1.a.x, false).c.x)), _wgslsmith_f_op_vec4_f32(var_2.c.c + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, arg_0.a.b.c.x, var_1.c.x, var_2.d.c.x) + vec4<f32>(1435f, var_1.c.x, 1104f, arg_0.a.a))), var_1.a.x, var_2.a).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~abs(4294967295u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1087f))) + -358f);
    var var_2 = func_4(Struct_5(func_2(func_1(464f, vec4<f32>(441f, -251f, -874f, 1000f), var_0, false), vec4<u32>(var_0, var_0, 0u, var_0) ^ vec4<u32>(var_0, 76372u, var_0, 4297u), Struct_3(301f, Struct_1(vec3<u32>(var_0, 4294967295u, 4294967295u), vec2<bool>(true, false), vec4<f32>(983f, 1000f, 1967f, -1000f)), vec2<u32>(10502u, 1u), 1265u, vec2<u32>(0u, var_0))), vec4<i32>(15181i, -1i, u_input.a.x, 17679i), countOneBits(u_input.a.zz), u_input.a.x, Struct_4(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -885f, -1494f) - global0[_wgslsmith_index_u32(var_0, 15u)])))) || (any(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))) || any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))));
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-455f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-904f, 578f))))), -167f, func_2(Struct_1(~vec3<u32>(var_3, var_0, 3300u), vec2<bool>(true, true), vec4<f32>(1190f, 1338f, 1123f, -1871f)), ~firstTrailingBit(vec4<u32>(var_0, var_3, var_3, var_3)), Struct_3(_wgslsmith_f_op_f32(-593f - 594f), Struct_1(vec3<u32>(4294967295u, var_0, 17092u), vec2<bool>(true, true), vec4<f32>(841f, -547f, 1479f, 1034f)), vec2<u32>(52305u, var_3) ^ vec2<u32>(var_0, var_3), var_0 ^ 4294967295u, vec2<u32>(var_0, 0u))).b.c.x));
    var var_5 = ~(~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_3, 4294967295u, var_0, 28645u)), ~(~vec4<u32>(var_3, 0u, 35641u, var_0))));
    var var_6 = Struct_5(func_2(Struct_1(vec3<u32>(_wgslsmith_add_u32(var_5.x, 0u), 1u, 71367u), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec4<f32>(_wgslsmith_div_f32(var_4.x, -311f), _wgslsmith_f_op_f32(var_4.x * -188f), _wgslsmith_f_op_f32(-var_4.x), -169f)), ~max(vec4<u32>(var_3, 36767u, 1u, var_3), vec4<u32>(var_0, 1u, var_0, 1u)) ^ vec4<u32>(~var_5.x, var_0, var_0, countOneBits(4294967295u)), Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-640f, 897f))), func_1(var_4.x, var_4, ~4294967295u, true), var_5.yy, ~4294967295u, ~vec2<u32>(var_0, 21052u))), vec4<i32>(u_input.a.x ^ ~(~u_input.a.x), u_input.a.x, 45478i, 2147483647i), vec2<i32>(u_input.a.x, u_input.a.x), 71695i, Struct_4(vec4<bool>(func_2(func_2(Struct_1(vec3<u32>(23865u, 4294967295u, 4294967295u), vec2<bool>(false, true), var_4), vec4<u32>(21046u, 4294967295u, 0u, 1u), Struct_3(var_4.x, Struct_1(var_5.wyz, vec2<bool>(true, true), vec4<f32>(var_4.x, -684f, var_4.x, -133f)), vec2<u32>(52692u, var_5.x), 67391u, vec2<u32>(var_5.x, 55129u))).b, ~vec4<u32>(0u, 0u, 1u, 4294967295u), func_2(Struct_1(var_5.xyx, vec2<bool>(false, true), var_4), vec4<u32>(var_0, 4294967295u, var_3, 0u), Struct_3(-1118f, Struct_1(vec3<u32>(58837u, 4294967295u, var_5.x), vec2<bool>(false, false), var_4), vec2<u32>(48363u, 75617u), var_3, vec2<u32>(var_0, 4294967295u)))).b.b.x, !all(vec4<bool>(true, false, false, false)), true, _wgslsmith_mult_u32(var_5.x, 60028u) >= 4294967295u), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(min(1721f, -948f)), _wgslsmith_f_op_f32(max(-410f, var_4.x))), vec3<f32>(-1060f, _wgslsmith_f_op_f32(round(-459f)), -804f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.a.b.c, max(_wgslsmith_sub_vec3_u32(min(vec3<u32>(4294967295u, var_6.a.b.a.x, 46335u), var_5.zyx), ~(var_6.a.b.a | vec3<u32>(4294967295u, var_3, 0u))), var_5.zwx), var_6.c.x);
}

