struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: bool;

var<private> global2: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(1000f, 814f), vec2<f32>(-110f, 311f), vec2<f32>(-329f, 561f), vec2<f32>(1000f, 641f), vec2<f32>(1000f, -1086f), vec2<f32>(765f, 1274f), vec2<f32>(-1788f, 844f), vec2<f32>(-1113f, -649f), vec2<f32>(191f, 397f), vec2<f32>(1274f, -190f), vec2<f32>(596f, -714f), vec2<f32>(-811f, -1189f), vec2<f32>(-615f, -752f), vec2<f32>(363f, 2335f), vec2<f32>(-1210f, 519f), vec2<f32>(492f, 629f), vec2<f32>(-975f, -1000f), vec2<f32>(-1657f, -289f), vec2<f32>(-1552f, 719f), vec2<f32>(-945f, -1392f), vec2<f32>(-1000f, 327f), vec2<f32>(127f, 568f), vec2<f32>(433f, -672f), vec2<f32>(-534f, -738f), vec2<f32>(-826f, -437f), vec2<f32>(1167f, 335f), vec2<f32>(2089f, 651f), vec2<f32>(387f, 1182f), vec2<f32>(670f, -1000f), vec2<f32>(-2098f, -1182f), vec2<f32>(1010f, -371f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec3<bool>) -> vec4<f32> {
    global2 = array<vec2<f32>, 31>();
    var var_0 = u_input.c;
    let var_1 = arg_2.x;
    var var_2 = !((1u >= _wgslsmith_mult_u32(u_input.a, 22798u)) & select(any(arg_3), _wgslsmith_f_op_f32(arg_2.x - 209f) <= 901f, arg_1.c.c));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + arg_1.c.b))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1 - -521f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.d + var_1)), 729f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.c.d))) - _wgslsmith_f_op_f32(-520f + arg_2.x))));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.a + _wgslsmith_f_op_vec4_f32(vec4<f32>(266f, -452f, -1054f, arg_2.c.b) + arg_2.a)) * arg_2.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a) - _wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(u_input.b.x, arg_0.b.b, u_input.a), Struct_3(arg_2.a, arg_0.b, Struct_1(63414i, 372f, arg_0.b.a.c, 452f)), vec4<f32>(864f, arg_3.b, arg_3.b, 1511f), vec3<bool>(false, arg_2.b.a.c, arg_3.c)))) * _wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(7916u, arg_0.b.b, 0u), arg_0, _wgslsmith_f_op_vec4_f32(select(arg_0.a, arg_2.a, vec4<bool>(arg_2.c.c, arg_1.x, false, arg_3.c))), vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1018f)) == _wgslsmith_f_op_f32(_wgslsmith_div_f32(-291f, 492f) - arg_3.d))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(arg_2.a)))));
    global2 = array<vec2<f32>, 31>();
    let var_1 = (~(arg_2.b.b >> (arg_2.b.b % 32u)) > 95771u) | (arg_3.a < ((-11765i & arg_0.c.a) << (18134u % 32u)));
    global2 = array<vec2<f32>, 31>();
    let var_2 = vec2<i32>(u_input.c & (arg_0.b.a.a << (~u_input.a % 32u)), 29734i);
    return arg_0.c.c;
}

fn func_1() -> Struct_1 {
    let var_0 = !(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), vec3<bool>(func_2(Struct_3(vec4<f32>(368f, -1016f, 2016f, 1012f), Struct_2(Struct_1(-17408i, 440f, true, 1243f), u_input.b.x, 1110f, 534f), Struct_1(2147483647i, -1000f, true, -1930f)), vec3<bool>(true, false, false), Struct_3(vec4<f32>(1329f, 184f, 676f, 945f), Struct_2(Struct_1(u_input.c, 1836f, true, -169f), u_input.b.x, 1145f, -408f), Struct_1(u_input.c, -897f, false, 1000f)), Struct_1(-2147483647i, 971f, false, 479f)), true, any(vec3<bool>(false, false, false)))));
    global2 = array<vec2<f32>, 31>();
    return Struct_1(reverseBits(reverseBits(u_input.c)), -1263f, select(var_0.x, any(select(vec4<bool>(var_0.x, true, true, true), !vec4<bool>(var_0.x, true, false, var_0.x), select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, true, true), var_0.x))), _wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_3(vec4<f32>(-1000f, 777f, 395f, 726f), Struct_2(Struct_1(u_input.c, 393f, false, 320f), 6427u, 456f, 585f), Struct_1(u_input.c, 1000f, false, 323f)), vec4<f32>(2526f, 1414f, -1000f, -1147f), vec3<bool>(var_0.x, true, true))).x != _wgslsmith_div_f32(323f, _wgslsmith_f_op_f32(sign(-163f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))) * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-202f - -470f)) - -798f)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    global0 = _wgslsmith_sub_u32(~u_input.a & ~abs(~41471u), u_input.b.x);
    global1 = true;
    let var_0 = 6565i;
    let var_1 = -vec4<i32>(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a, var_0, var_0), vec3<i32>(12406i, u_input.c, var_0))), -var_0, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0, u_input.c, arg_3.a, 0i)), ~vec4<i32>(19713i, -45551i, arg_3.a, arg_0.a)) & arg_0.a, arg_3.a);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-217f, 1526f, arg_0.b, arg_0.b))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(271f, arg_3.b, arg_3.b, 1079f) * vec4<f32>(-798f, -1018f, -518f, -1848f))))), Struct_2(func_1(), ~4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1164f, _wgslsmith_f_op_f32(1364f - 238f), arg_1))), arg_0.d), arg_3);
    return 850f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~39699u;
    let var_0 = Struct_1(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(), true, select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), u_input.c > u_input.c), Struct_1(u_input.c, -1033f, u_input.a < u_input.b.x, _wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(33113u, 1u, 1u), Struct_3(vec4<f32>(121f, 588f, 1689f, -1000f), Struct_2(Struct_1(29575i, 399f, true, -1000f), 20356u, -1492f, 567f), Struct_1(-2147483647i, -997f, false, -1287f)), vec4<f32>(-934f, -1488f, -221f, -398f), vec3<bool>(true, true, true))).x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 481f) - 1202f)), false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(700f - _wgslsmith_f_op_f32(f32(-1f) * -284f)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-716f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1326f * var_0.d))))));
    let var_2 = vec2<bool>(var_0.c, all(!(!vec2<bool>(var_0.c, var_0.c))) != true);
    let var_3 = Struct_1(-func_1().a, _wgslsmith_f_op_f32(max(func_1().d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1503f))))), var_2.x, -1832f);
    global1 = true;
    let var_4 = vec4<f32>(1078f, 3364f, var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-285f, 354f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.b - -1153f), _wgslsmith_div_f32(var_3.b, var_0.d)))));
    var var_5 = ~(select(~(-vec3<i32>(u_input.c, 2190i, u_input.c)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -7752i, var_3.a, var_0.a), vec4<i32>(1i, 1i, -20126i, var_3.a)), func_1().a, u_input.c), !(var_1 < var_4.x)) ^ vec3<i32>(-1i, -1i, 1i));
    var var_6 = -1350f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(var_4.x, var_0.b)), 636f, firstLeadingBit(vec3<u32>(u_input.b.x | u_input.b.x, 0u, _wgslsmith_sub_u32(~0u, 0u))));
}

