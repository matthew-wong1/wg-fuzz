struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<bool>;

var<private> global2: f32;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(45651u, 10942u, 463u, 4294967295u), vec4<f32>(-1319f, -1444f, -1097f, 1595f), true, 4294967295u, -20605i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec3<f32> {
    var var_0 = Struct_4(Struct_3(Struct_2(true, arg_0), arg_0, Struct_1(~vec4<u32>(20656u, 93741u, global0.b.d, global3.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(-431f, global3.b.x, arg_0.b.x, arg_0.b.x), _wgslsmith_f_op_vec4_f32(-global3.b)), any(!vec4<bool>(true, false, arg_0.c, global0.b.c)), ~(global3.d << (4294967295u % 32u)), firstLeadingBit(31206i << (arg_0.a.x % 32u))), Struct_2(all(select(vec3<bool>(true, true, global3.c), vec3<bool>(arg_0.c, global1.x, global0.b.c), vec3<bool>(false, true, true))), Struct_1(~vec4<u32>(33895u, 1u, 11007u, global0.b.a.x), _wgslsmith_f_op_vec4_f32(global0.b.b * vec4<f32>(135f, global0.b.b.x, 568f, -1617f)), true, reverseBits(arg_0.a.x), global0.b.e)), abs(1i)), vec3<f32>(-1131f, _wgslsmith_f_op_f32(sign(arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global3.b.x, 162f, false)), _wgslsmith_f_op_f32(f32(-1f) * -274f))))));
    global0 = Struct_2((49054u ^ ~global3.a.x) <= 1u, global0.b);
    global3 = Struct_1(vec4<u32>(var_0.a.c.a.x, 0u, arg_0.d, 52806u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.a.b.b)), var_0.a.a.a, 1u, var_0.a.e);
    var var_1 = !(!vec4<bool>(true, !arg_0.c && var_0.a.a.b.c, global0.b.c, global0.a));
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_vec3_f32(round(arg_0.b.zxw)));
    return global3.b.zwy;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: bool, arg_3: vec3<u32>) -> f32 {
    let var_0 = Struct_4(Struct_3(Struct_2(false, Struct_1(vec4<u32>(8423u, global3.d, 0u, 52389u), global0.b.b, true, _wgslsmith_mod_u32(4294967295u, global0.b.d), -global3.e)), Struct_1(~vec4<u32>(1u, 0u, arg_3.x, 4294967295u), _wgslsmith_div_vec4_f32(global0.b.b, vec4<f32>(global0.b.b.x, global0.b.b.x, global3.b.x, global0.b.b.x)), any(!vec4<bool>(false, false, arg_1, arg_1)), ~(~arg_3.x), 0i), Struct_1(firstTrailingBit(~global3.a), vec4<f32>(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(global3.b.x * global0.b.b.x), _wgslsmith_f_op_f32(max(280f, global3.b.x)), -1191f), arg_0.x, _wgslsmith_mult_u32(4294967295u, 0u) >> (global0.b.a.x % 32u), global0.b.e), Struct_2(119111u < (global0.b.a.x ^ 0u), Struct_1(vec4<u32>(950u, u_input.c, u_input.a.x, global3.a.x), global0.b.b, all(vec2<bool>(global0.a, arg_0.x)), firstTrailingBit(global0.b.d), _wgslsmith_div_i32(0i, global3.e))), _wgslsmith_mod_i32(-1i, global3.e)), _wgslsmith_f_op_vec3_f32(global3.b.yzw - vec3<f32>(-168f, -1000f, -1339f)));
    var var_1 = var_0;
    var var_2 = ~(i32(-1i) * -1i);
    var_2 = global0.b.e;
    let var_3 = _wgslsmith_f_op_vec3_f32(func_3(var_1.a.d.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1176f)) + var_0.a.a.b.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.a.b.b.x, 203f)) * _wgslsmith_f_op_f32(-global0.b.b.x))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_3.x)), _wgslsmith_f_op_f32(-1000f - global0.b.b.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1237f - _wgslsmith_f_op_f32(f32(-1f) * -479f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec4<i32>) -> Struct_4 {
    var var_0 = Struct_1(global0.b.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-116f, global3.b.x, 530f, arg_1.a.b.b.x))), global3.b), !arg_1.a.b.c, global0.b.a.x, -1i);
    global3 = global0.b;
    var var_1 = var_0.d;
    global3 = Struct_1(firstTrailingBit(firstTrailingBit(min(_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(u_input.c, 4294967295u, 13128u, 4294967295u), var_0.a), global3.a))), arg_1.c.b, !any(vec4<bool>(all(vec3<bool>(global0.a, true, true)), !global1.x, true, true)), ~(~22812u), i32(-1i) * -_wgslsmith_clamp_i32(arg_2.x, 48865i, arg_1.b.e));
    let var_2 = arg_1.d.b;
    return Struct_4(arg_1, _wgslsmith_div_vec3_f32(vec3<f32>(1559f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-245f)) - arg_1.d.b.b.x), global0.b.b.x), arg_1.c.b.wxy));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: vec4<bool>) -> Struct_3 {
    let var_0 = 4294967295u;
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2, vec4<f32>(-927f, _wgslsmith_f_op_f32(func_2(arg_3.xxw, arg_3.x, arg_0.b.c, vec3<u32>(global3.d, u_input.b.x, global3.d))), 217f, 1769f))), Struct_3(arg_0, Struct_1(global0.b.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-297f, -835f, -614f, 997f))), global3.c, var_0, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.e, global0.b.e), vec2<i32>(2147483647i, arg_0.b.e)), arg_0.b.e, _wgslsmith_clamp_i32(arg_0.b.e, 17550i, global3.e))), global0.b, Struct_2(true, Struct_1(vec4<u32>(global0.b.a.x, 48788u, global0.b.d, var_0) & vec4<u32>(0u, arg_0.b.d, var_0, var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global3.b.x, 312f, 1889f)), arg_3.x, select(65231u, arg_0.b.a.x, global3.c), global3.e)), global0.b.e), vec4<i32>(max(abs(_wgslsmith_div_i32(global0.b.e, -1i)), arg_0.b.e), global0.b.e, ~48055i, -1090i));
    let var_2 = ((var_1.a.d.b.a.x & select(_wgslsmith_dot_vec3_u32(global3.a.xyw, var_1.a.c.a.wzx), global3.d, global3.c || false)) << (global0.b.a.x % 32u)) & func_4(global0.b.b, Struct_3(arg_0, func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.b.x, -1636f, arg_0.b.b.x, var_1.b.x), vec4<f32>(496f, 321f, arg_0.b.b.x, -480f), arg_1)), Struct_3(Struct_2(true, var_1.a.b), var_1.a.b, Struct_1(vec4<u32>(4294967295u, u_input.d.x, global0.b.a.x, 4294967295u), var_1.a.c.b, false, 22304u, global0.b.e), Struct_2(false, Struct_1(u_input.b, vec4<f32>(var_1.a.d.b.b.x, 445f, 607f, var_1.a.b.b.x), global1.x, global0.b.a.x, -51784i)), -49825i), -vec4<i32>(26106i, arg_0.b.e, var_1.a.a.b.e, var_1.a.e)).a.b, Struct_1(reverseBits(u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.b.x, arg_2.x, arg_2.x, 242f)), true, ~var_0, _wgslsmith_mult_i32(-1i, 2147483647i)), Struct_2(any(vec3<bool>(var_1.a.a.b.c, false, global3.c)), func_4(vec4<f32>(-1007f, arg_2.x, 1711f, 482f), var_1.a, vec4<i32>(11472i, global0.b.e, -28242i, var_1.a.d.b.e)).a.b), global0.b.e), ~vec4<i32>(_wgslsmith_add_i32(var_1.a.e, var_1.a.b.e), 71055i, ~global0.b.e, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.b.e, var_1.a.b.e), vec2<i32>(0i, arg_0.b.e)))).a.a.b.d;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(global0.b.b, vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(min(global3.b.x, arg_2.x)), _wgslsmith_f_op_f32(min(var_1.a.a.b.b.x, global0.b.b.x)), _wgslsmith_f_op_f32(global0.b.b.x + 483f)), false)))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, global3.b.x, arg_0.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(658f)) - _wgslsmith_div_f32(global3.b.x, global3.b.x))), var_1.a.a.b.b));
    var var_4 = Struct_5(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(2452f, -426f, arg_2.x, var_1.a.c.b.x), arg_0.b.b))), _wgslsmith_f_op_vec4_f32(arg_0.b.b + var_1.a.a.b.b)), Struct_3(var_1.a.a, var_1.a.a.b, Struct_1(u_input.b, vec4<f32>(481f, var_3.x, -1000f, -1038f), all(arg_1.wwy), global3.a.x, -1i), arg_0, _wgslsmith_add_i32(-1i, i32(-1i) * -20655i)), vec4<i32>(-var_1.a.b.e, ~_wgslsmith_mod_i32(var_1.a.a.b.e, 38128i), 1i, _wgslsmith_mod_i32(var_1.a.e, global0.b.e << (global0.b.a.x % 32u)))).a.c);
    return Struct_3(arg_0, Struct_1(min(firstTrailingBit(vec4<u32>(4294967295u, 1u, var_4.a.d, 28796u)), ~var_1.a.c.a << (~arg_0.b.a % vec4<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global3.b)) + _wgslsmith_f_op_vec4_f32(min(var_1.a.a.b.b, vec4<f32>(1194f, var_1.b.x, var_3.x, 1818f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-467f, var_1.a.d.b.b.x, var_4.a.b.x, 1414f) * _wgslsmith_div_vec4_f32(global0.b.b, var_4.a.b))), any(arg_3), ~(~var_1.a.c.d) << (global0.b.a.x % 32u), select(-1i, abs(~(-13254i)), all(select(arg_1.yx, arg_3.yz, arg_3.x)))), Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(global3.a ^ u_input.b, _wgslsmith_sub_vec4_u32(global0.b.a, vec4<u32>(global0.b.a.x, 1u, global3.d, var_2))), global3.a), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(228f)))), 1000f, _wgslsmith_f_op_f32(ceil(-1664f)), _wgslsmith_f_op_f32(floor(-508f))), false, reverseBits(u_input.c ^ _wgslsmith_dot_vec3_u32(var_1.a.d.b.a.wwz, vec3<u32>(580u, var_0, 0u))), -(_wgslsmith_dot_vec2_i32(vec2<i32>(-53027i, var_4.a.e), vec2<i32>(var_4.a.e, -14007i)) | _wgslsmith_mult_i32(global0.b.e, -21827i))), arg_0, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(all(select(vec2<bool>(global0.b.c, global3.c), vec2<bool>(true, true), 345f > global0.b.b.x)), global0.b), vec4<bool>(false, select(false, !global0.b.c, !global0.a && global1.x), !(global1.x & !global1.x), global0.b.b.x > _wgslsmith_f_op_f32(abs(global0.b.b.x))), _wgslsmith_f_op_vec4_f32(-global0.b.b), !select(select(!vec4<bool>(global3.c, global3.c, true, false), vec4<bool>(false, global0.b.c, global0.b.c, false), global0.b.c), vec4<bool>(true, true, all(vec2<bool>(global3.c, false)), global0.b.b.x <= -610f), !(!vec4<bool>(global1.x, false, global3.c, global1.x))));
    var var_1 = Struct_1(vec4<u32>(4294967295u, 4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a.x) ^ abs(u_input.a), vec2<u32>(global0.b.a.x | 0u, var_0.c.a.x)), u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(func_1(var_0.a, vec4<bool>(global1.x, false, true, global1.x), global0.b.b, vec4<bool>(true, var_0.a.a, global0.a, global3.c)).a.b.b.x)), var_0.d.b.b.x, _wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.b.b.x))))), (global0.a == global3.c) || (global0.a && (true == func_4(vec4<f32>(global0.b.b.x, 1419f, 208f, 1996f), var_0, vec4<i32>(46075i, 32375i, var_0.a.b.e, global0.b.e)).a.a.b.c)), global3.a.x ^ ~(~_wgslsmith_clamp_u32(19758u, 43742u, 0u)), -global3.e);
    global1 = vec2<bool>(false, false);
    var var_2 = var_1.a.x;
    var var_3 = 1000f;
    let var_4 = 53221u;
    var var_5 = vec4<f32>(var_0.c.b.x, 2001f, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(458f + func_4(vec4<f32>(_wgslsmith_f_op_f32(var_0.d.b.b.x - var_0.b.b.x), func_1(Struct_2(false, Struct_1(global3.a, global3.b, global3.c, u_input.b.x, 0i)), vec4<bool>(global3.c, false, false, global1.x), var_1.b, vec4<bool>(global0.b.c, true, global1.x, var_0.d.a)).b.b.x, _wgslsmith_f_op_f32(sign(global0.b.b.x)), 1073f), Struct_3(var_0.a, var_0.b, func_4(global0.b.b, var_0, vec4<i32>(1i, 1i, global0.b.e, -15590i)).a.d.b, Struct_2(global1.x, var_0.d.b), global3.e), min(vec4<i32>(-1i, 39432i, 2147483647i, var_1.e), -vec4<i32>(-2147483647i, var_1.e, var_1.e, var_0.c.e))).b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec3<i32>(abs(global0.b.e), i32(-1i) * -41293i, -10280i)), 37008u, vec3<u32>(46981u, ~firstTrailingBit(~0u), 0u), vec3<i32>(abs(2147483647i), 34098i, _wgslsmith_div_i32(-_wgslsmith_mult_i32(var_1.e, -2147483647i), global0.b.e)));
}

