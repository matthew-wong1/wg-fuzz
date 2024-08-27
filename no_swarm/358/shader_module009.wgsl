struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: bool, arg_3: f32) -> f32 {
    let var_0 = true;
    var var_1 = ~(~firstTrailingBit(vec2<u32>(~u_input.a.x, ~79338u)));
    var_1 = vec2<u32>(~(~abs(firstLeadingBit(var_1.x))), var_1.x);
    var var_2 = !vec4<bool>(arg_0.x, all(arg_0.xyy), true, false);
    let var_3 = arg_0.xzy;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3)));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2030f, _wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, arg_1.b, arg_1.b), false, false, -882f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1488f, -1574f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(287f, 123f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-557f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2132f) * _wgslsmith_div_f32(-497f, -267f)))), _wgslsmith_f_op_f32(abs(1416f)));
    var_0 = Struct_4(vec2<f32>(-531f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(749f)))), _wgslsmith_f_op_vec2_f32(-var_0.b), var_0.c);
    let var_1 = vec2<i32>(-214i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(arg_1.a.x, arg_1.a.x, arg_0), vec3<i32>(27517i, arg_0, arg_0)), vec3<i32>(17760i, arg_1.a.x, -2147483647i) >> (u_input.a % vec3<u32>(32u)), ~vec3<i32>(arg_1.a.x, 2147483647i, -55399i)), vec3<i32>(1i, ~(-52415i), arg_1.a.x)) >> (~(~1u) % 32u));
    var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(-17301i << (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)) % 32u), ~(~23093i | var_1.x), 2147483647i), firstTrailingBit(abs(-vec3<i32>(-53808i, 24097i, arg_1.a.x))) | reverseBits(vec3<i32>(56480i, arg_0, -21433i) << (u_input.a % vec3<u32>(32u))));
    return Struct_3(false, abs(52142u), any(vec3<bool>(arg_1.b, arg_1.b, false)), vec4<i32>(~firstTrailingBit(var_1.x), 30866i, _wgslsmith_sub_i32(countOneBits(max(0i, var_2.x)), var_1.x), arg_1.a.x), Struct_1(~(~var_1) >> (u_input.a.zy % vec2<u32>(32u)), !all(!vec2<bool>(arg_1.b, true))));
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    let var_0 = func_2(_wgslsmith_div_i32(0i, arg_0.a.x), arg_0);
    let var_1 = Struct_5(-33407i, arg_0, vec3<f32>(-1666f, -942f, _wgslsmith_f_op_f32(ceil(187f))), select(!(!select(vec3<bool>(false, false, arg_0.b), vec3<bool>(var_0.c, false, true), vec3<bool>(arg_0.b, arg_0.b, arg_0.b))), vec3<bool>(true, select(func_2(arg_0.a.x, Struct_1(vec2<i32>(var_0.e.a.x, arg_0.a.x), arg_0.b)).a, false, false), !(arg_0.b && true)), vec3<bool>(!all(vec4<bool>(arg_0.b, arg_0.b, false, true)), false, select(arg_0.b | arg_0.b, any(vec3<bool>(var_0.c, var_0.c, var_0.e.b)), true))), vec4<f32>(-611f, 1908f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1205f * 1533f), _wgslsmith_f_op_f32(f32(-1f) * -845f))), _wgslsmith_f_op_f32(f32(-1f) * -1614f)), 1295f));
    var var_2 = vec4<u32>(~_wgslsmith_clamp_u32(var_0.b, _wgslsmith_sub_u32(~var_0.b, ~0u), 1u), _wgslsmith_dot_vec2_u32(~u_input.a.yx, u_input.a.yx) ^ countOneBits(var_0.b), abs(countOneBits(~u_input.a.x) << (_wgslsmith_add_u32(var_0.b, u_input.a.x) % 32u)), _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 1122u), vec4<u32>(u_input.a.x, 63686u, 73437u, var_0.b)) & 56357u), ~func_2(_wgslsmith_div_i32(-1i, -49626i), Struct_1(vec2<i32>(-1i, -2147483647i), false)).b));
    var var_3 = func_2(arg_0.a.x, var_1.b).e;
    var var_4 = func_2(select(min(arg_0.a.x, var_0.e.a.x), 1i << (countOneBits(67560u) % 32u), false), var_0.e);
    return Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1793f, var_1.e.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1233f)))), vec2<f32>(var_1.e.x, _wgslsmith_f_op_f32(-716f + -569f)), any(vec2<bool>(arg_0.b, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_1.e.xx))), var_1.e.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.a.x, arg_0.x, true)), _wgslsmith_f_op_f32(-arg_1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_1.a.x)))), arg_0.x, _wgslsmith_f_op_f32(exp2(func_1(func_2(-32112i, Struct_1(vec2<i32>(-1i, 0i), true)).e).c)));
    var var_1 = Struct_5(-2147483647i, func_2(_wgslsmith_clamp_i32(1i | _wgslsmith_dot_vec2_i32(vec2<i32>(54142i, 1i), vec2<i32>(1i, -54402i)), firstTrailingBit(0i), ~1i), Struct_1(_wgslsmith_add_vec2_i32(select(vec2<i32>(5590i, 7856i), vec2<i32>(41924i, 3421i), false), vec2<i32>(-10412i, 1i)), true)).e, arg_0, vec3<bool>(func_2(-2147483647i, func_2(_wgslsmith_add_i32(-1i, 25533i), Struct_1(vec2<i32>(1i, 1239i), true)).e).e.b, select(all(vec4<bool>(false, true, false, false)), true, true) && any(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), (_wgslsmith_mod_u32(1u, u_input.a.x) << (u_input.a.x % 32u)) > u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1211f, arg_0.x, true)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1170f + arg_0.x)), 112f)));
    let var_2 = func_1(var_1.b);
    var_1 = Struct_5(firstLeadingBit(var_1.a), Struct_1(~reverseBits(vec2<i32>(0i, var_1.b.a.x)), select(!var_1.b.b, false, any(select(vec4<bool>(var_1.b.b, true, var_1.b.b, true), vec4<bool>(var_1.b.b, var_1.d.x, var_1.d.x, false), vec4<bool>(true, var_1.d.x, false, var_1.d.x))))), vec3<f32>(_wgslsmith_f_op_f32(select(968f, 692f, select(var_1.d.x, var_1.d.x, var_1.b.a.x > -2147483647i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1729f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-271f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-350f - var_0.x), _wgslsmith_f_op_f32(-var_0.x)))), var_1.d, _wgslsmith_f_op_vec4_f32(var_1.e * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(180f, 1459f, 481f, var_0.x)))));
    let var_3 = -115f;
    return _wgslsmith_add_u32(~(u_input.a.x | _wgslsmith_sub_u32(4370u, ~u_input.a.x)), func_2(var_1.b.a.x, Struct_1(vec2<i32>(var_1.b.a.x, func_2(var_1.a, Struct_1(var_1.b.a, false)).e.a.x), _wgslsmith_div_f32(115f, var_3) > -988f)).b);
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = arg_2;
    return ~10758u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.a.x, 1u >= _wgslsmith_mod_u32(68665u, func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(369f, -817f, 598f) - vec3<f32>(-544f, 1168f, -959f)), func_1(Struct_1(vec2<i32>(0i, -24533i), true)))), -1495i, Struct_1(vec2<i32>(-17602i, countOneBits(reverseBits(-1i))), false));
    var var_1 = func_2(_wgslsmith_add_i32(-1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(0i, -1i)) ^ 1i), func_2(_wgslsmith_div_i32(countOneBits(20317i), abs(-15547i)) ^ _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, 69705i), vec2<i32>(-32000i, 2147483647i) << (vec2<u32>(u_input.a.x, 5658u) % vec2<u32>(32u))), Struct_1(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-2955i, -11181i), countOneBits(vec2<i32>(-2147483647i, 1i)), -vec2<i32>(24055i, 2147483647i)), false)).e).e;
    var var_2 = Struct_2(Struct_1(~var_1.a, var_1.b), var_1.b, ~_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<i32>(2147483647i, 2147483647i, var_1.a.x)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a.x, var_1.a.x, 8047i), vec3<i32>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<i32>(5914i, var_1.a.x, -2147483647i))));
    var var_3 = ~u_input.a.x;
    let var_4 = func_1(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_1.a.x, var_1.a.x, var_1.a.x), vec4<i32>(var_2.a.a.x, -2147483647i, var_2.c, var_1.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_2.c, var_1.a.x, var_2.c), vec4<i32>(var_1.a.x, -60481i, var_1.a.x, var_2.a.a.x)), true), ~vec4<i32>(var_1.a.x, var_1.a.x, var_1.a.x, var_2.c), -(~vec4<i32>(36679i, var_1.a.x, var_1.a.x, -1i))), (select(vec4<i32>(var_1.a.x, var_2.c, 52082i, var_1.a.x), vec4<i32>(-50943i, var_1.a.x, -2147483647i, var_2.c), vec4<bool>(false, var_2.a.b, var_2.b, true)) & max(vec4<i32>(var_2.c, var_2.a.a.x, 16493i, var_2.c), vec4<i32>(0i, var_1.a.x, -16814i, 9643i))) ^ -vec4<i32>(-53574i, 0i, var_2.a.a.x, var_2.a.a.x), vec4<bool>(any(!vec4<bool>(var_1.b, false, true, true)), var_1.b, true, (u_input.a.x & 0u) >= _wgslsmith_add_u32(1u, u_input.a.x))), select(vec2<i32>(min(var_2.c, 1i), reverseBits(var_1.a.x)), ~(var_1.a | var_1.a), !select(vec2<bool>(false, var_1.b), vec2<bool>(true, true), vec2<bool>(var_1.b, true))) & (~(-var_1.a) & vec2<i32>(~2147483647i, min(2147483647i, var_1.a.x))), _wgslsmith_f_op_f32(-var_4.c), var_4.c, ~_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(var_2.c, var_1.a.x, var_1.a.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a.a.x, -85651i, var_2.a.a.x), vec3<i32>(var_2.a.a.x, 51612i, var_1.a.x), vec3<i32>(22635i, 1i, var_2.a.a.x)), vec3<i32>(2147483647i, -6134i, var_1.a.x)) & ~vec3<i32>(~9112i, -4746i << (u_input.a.x % 32u), -var_2.c));
}

