struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec3<u32> {
    let var_0 = vec2<u32>(firstLeadingBit(_wgslsmith_mult_u32(min(u_input.b, u_input.a), _wgslsmith_mod_u32(abs(0u), _wgslsmith_div_u32(1u, u_input.e.x)))), 1u);
    let var_1 = countOneBits(-vec2<i32>(~(-38454i), ~18750i)) << (~(~vec2<u32>(var_0.x, u_input.a) ^ var_0) % vec2<u32>(32u));
    let var_2 = select(select(!vec4<bool>(any(vec4<bool>(false, false, false, false)), true, 24634i > var_1.x, true), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, select(false, true, true), any(vec2<bool>(false, true)), select(true, false, false)), any(vec3<bool>(true, true, true))), 1u <= _wgslsmith_dot_vec2_u32(var_0 | vec2<u32>(u_input.a, u_input.a), ~var_0)), !vec4<bool>(_wgslsmith_f_op_f32(round(939f)) == _wgslsmith_f_op_f32(168f + 1027f), true, (u_input.e.x | u_input.e.x) > (var_0.x | var_0.x), !(u_input.e.x <= var_0.x)), !(!vec4<bool>(true, true, any(vec3<bool>(true, false, true)), any(vec4<bool>(true, false, true, false)))));
    let var_3 = ~u_input.d.x;
    var var_4 = !var_2.wz;
    return _wgslsmith_add_vec3_u32(~max(vec3<u32>(var_0.x, ~u_input.b, ~3280u), vec3<u32>(~1u, 0u, 1u)), ~(~(~vec3<u32>(u_input.b, u_input.a, 25848u) ^ ~u_input.e)));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> vec4<bool> {
    let var_0 = func_3();
    let var_1 = reverseBits(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(45822u, 4294967295u, u_input.b, var_0.x)), vec4<u32>(~_wgslsmith_mult_u32(var_0.x, var_0.x), _wgslsmith_add_u32(1u, var_0.x), 36038u, firstTrailingBit(max(u_input.b, 0u)))));
    var var_2 = ~_wgslsmith_add_u32(25681u, 81081u);
    var_2 = _wgslsmith_dot_vec2_u32(~(~(vec2<u32>(u_input.d.x, var_0.x) ^ u_input.e.xz) << (countOneBits(vec2<u32>(0u, 47467u)) % vec2<u32>(32u))), ~_wgslsmith_mult_vec2_u32(~var_1.xx, vec2<u32>(4294967295u, u_input.d.x)) & _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 1u >> (var_0.x % 32u)), vec2<u32>(~var_1.x, var_1.x)));
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(995f, 343f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(abs(-1168f))))), _wgslsmith_f_op_f32(select(-2441f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1711f), _wgslsmith_f_op_f32(trunc(887f)), any(arg_0))), !(u_input.e.x < 64820u)))), select(!(!select(vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, false), vec2<bool>(true, arg_0.x))), !select(select(vec2<bool>(false, true), arg_0, false), vec2<bool>(false, false), select(arg_0, arg_0, arg_0)), true != !(arg_0.x | arg_0.x)), 608f);
    return !(!vec4<bool>(!all(vec3<bool>(arg_0.x, false, arg_0.x)), true | arg_0.x, all(select(vec3<bool>(true, false, arg_0.x), vec3<bool>(var_3.b.x, true, false), true)), arg_0.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = arg_0.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(656f, -421f, -724f), vec3<f32>(1056f, -300f, 266f))))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(806f, _wgslsmith_f_op_f32(-346f + 833f), -1921f)))), !vec2<bool>(_wgslsmith_f_op_f32(ceil(2230f)) != _wgslsmith_f_op_f32(ceil(-1596f)), false), _wgslsmith_f_op_f32(-128f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(2684f))))));
    let var_2 = ~u_input.e;
    var var_3 = 318f;
    let var_4 = ~_wgslsmith_div_vec2_u32(abs(vec2<u32>(var_2.x, 1u)), var_2.yx) >> (var_2.xx % vec2<u32>(32u));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.c, _wgslsmith_f_op_f32(trunc(var_1.a.x)), 492f)))), var_1.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(-var_1.a.x)))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    return func_4(_wgslsmith_add_vec4_i32(vec4<i32>(abs(71025i), u_input.c, _wgslsmith_div_i32(0i, 2147483647i), u_input.c) | ((vec4<i32>(u_input.c, u_input.c, -42781i, 0i) << (vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.e.x) % vec4<u32>(32u))) | max(vec4<i32>(-1i, u_input.c, 2147483647i, u_input.c), vec4<i32>(u_input.c, u_input.c, 13248i, u_input.c))), select(firstLeadingBit(vec4<i32>(0i, 17506i, u_input.c, 73566i)) & (vec4<i32>(-11313i, 3817i, u_input.c, u_input.c) << (vec4<u32>(u_input.d.x, 77267u, 11875u, 474u) % vec4<u32>(32u))), vec4<i32>(u_input.c, -1i, u_input.c, u_input.c) >> (vec4<u32>(54543u, u_input.d.x, 4294967295u, 37965u) % vec4<u32>(32u)), all(vec3<bool>(false, arg_1.b.x, false)))), any(!vec3<bool>(arg_0.b.x & false, any(vec4<bool>(false, true, false, false)), arg_1.b.x)), select(!(!select(vec4<bool>(arg_0.b.x, true, true, arg_0.b.x), vec4<bool>(false, arg_0.b.x, false, arg_0.b.x), arg_1.b.x)), func_2(vec2<bool>(false, func_4(vec4<i32>(u_input.c, -87357i, u_input.c, u_input.c), arg_1.b.x, vec4<bool>(false, arg_1.b.x, false, true)).b.x), u_input.c), any(!func_2(arg_1.b, u_input.c).wyy)));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> vec2<u32> {
    var var_0 = func_5(func_4(_wgslsmith_add_vec4_i32(-(~vec4<i32>(-1i, u_input.c, 20947i, u_input.c)), -vec4<i32>(50191i, 52301i, u_input.c, u_input.c)), true, select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false)), func_2(vec2<bool>(false, false), -1i), false)), func_4(abs(vec4<i32>(u_input.c, _wgslsmith_add_i32(-18770i, u_input.c), 1i, 8660i)), !(77033u <= ~u_input.a), select(vec4<bool>(any(vec4<bool>(false, true, false, true)), true, true, false), vec4<bool>(true, select(true, true, true), true, func_2(vec2<bool>(false, false), u_input.c).x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    var var_1 = func_5(Struct_1(vec3<f32>(-1154f, _wgslsmith_f_op_f32(-695f * _wgslsmith_div_f32(1813f, arg_0.x)), 1999f), select(var_0.b, vec2<bool>(true, false != var_0.b.x), any(vec2<bool>(true, false))), _wgslsmith_f_op_f32(-var_0.c)), Struct_1(arg_0.yyz, !var_0.b, _wgslsmith_f_op_f32(max(-822f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-293f + arg_0.x) * arg_1)))));
    var_0 = Struct_1(vec3<f32>(func_5(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-339f, 161f, 305f) - vec3<f32>(-825f, arg_1, var_0.c)), !var_1.b, _wgslsmith_f_op_f32(-var_0.c)), Struct_1(var_0.a, !vec2<bool>(var_0.b.x, true), _wgslsmith_f_op_f32(-var_1.a.x))).a.x, arg_1, var_0.c), vec2<bool>(true, true), 839f);
    let var_2 = -(~(~vec3<i32>(9587i, 29259i, u_input.c)) << (u_input.e % vec3<u32>(32u)));
    var_0 = func_5(Struct_1(func_4(vec4<i32>(~7732i, -23558i, max(u_input.c, var_2.x), ~u_input.c), func_4(vec4<i32>(1i, 2147483647i, 1i, 2147483647i) << (vec4<u32>(u_input.e.x, u_input.b, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), true, !vec4<bool>(true, var_1.b.x, false, false)).b.x, vec4<bool>(func_2(var_1.b, var_2.x).x, true, true, true)).a, vec2<bool>(!func_2(var_1.b, var_2.x).x, var_1.b.x || (u_input.c == u_input.c)), 1311f), func_4(vec4<i32>(~2147483647i, u_input.c, -43685i, -1i), true, !vec4<bool>(func_4(vec4<i32>(-1i, var_2.x, var_2.x, u_input.c), var_0.b.x, vec4<bool>(true, var_0.b.x, false, var_1.b.x)).b.x, false, true, false)));
    return u_input.e.zz;
}

fn func_6(arg_0: vec2<u32>, arg_1: u32, arg_2: i32) -> f32 {
    let var_0 = func_2(vec2<bool>(true, true), firstLeadingBit(~(-_wgslsmith_div_i32(u_input.c, arg_2)))).x;
    var var_1 = func_4(select(~vec4<i32>(arg_2, -1i, -36008i, 11646i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, -2147483647i, 2147483647i, u_input.c) >> (vec4<u32>(1u, 17101u, 4294967295u, u_input.e.x) % vec4<u32>(32u)), vec4<i32>(-20793i, arg_2, u_input.c, 0i)), !var_0) ^ _wgslsmith_add_vec4_i32(-vec4<i32>(-1i, u_input.c, arg_2, u_input.c) >> (reverseBits(vec4<u32>(arg_1, arg_0.x, 66415u, u_input.b)) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, u_input.c, u_input.c))), var_0, !vec4<bool>(var_0, true, func_4(~vec4<i32>(23608i, u_input.c, arg_2, -1843i), var_0 | false, !vec4<bool>(true, false, false, var_0)).b.x, ~u_input.e.x > ~u_input.e.x));
    let var_2 = 38418u ^ _wgslsmith_clamp_u32(~0u, arg_0.x, (~1u >> (arg_1 % 32u)) & ~3040u);
    var_1 = Struct_1(var_1.a, var_1.b, _wgslsmith_f_op_f32(step(var_1.c, 809f)));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(643f + -994f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-233f, var_1.c) - _wgslsmith_f_op_f32(-var_1.a.x)))), func_5(func_5(func_5(Struct_1(var_1.a, var_1.b, var_1.c), func_4(vec4<i32>(arg_2, arg_2, arg_2, 18296i), var_0, vec4<bool>(var_1.b.x, true, true, var_1.b.x))), func_5(Struct_1(var_1.a, vec2<bool>(false, var_0), -202f), Struct_1(vec3<f32>(-998f, -333f, -1318f), var_1.b, -736f))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, var_1.c, 201f)) * vec3<f32>(-456f, 1000f, -747f)), vec2<bool>(!var_0, var_1.b.x), 1f)).b, _wgslsmith_f_op_f32(min(var_1.c, _wgslsmith_f_op_f32(-var_1.c))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(func_5(Struct_1(var_3.a, var_1.b, var_3.a.x), Struct_1(vec3<f32>(-1018f, -380f, var_1.a.x), vec2<bool>(var_0, true), var_3.c)), Struct_1(var_1.a, !var_1.b, -563f)).a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(446f, 1838f);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-479f, 1133f)), _wgslsmith_f_op_f32(floor(913f)), 541f), vec3<f32>(1000f, _wgslsmith_f_op_f32(-395f - 905f), _wgslsmith_f_op_f32(-633f * _wgslsmith_f_op_f32(f32(-1f) * -1560f))))), select(vec2<bool>(true, true), select(vec2<bool>(any(vec4<bool>(true, false, false, false)), true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), false)), 296f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.c, -482f, true))) + var_1.c);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))))));
    let var_2 = Struct_1(vec3<f32>(2164f, _wgslsmith_f_op_f32(func_6(func_1(vec4<f32>(-258f, 3057f, var_1.a.x, 778f), _wgslsmith_f_op_f32(select(var_1.c, var_1.c, true))), 0u, 0i)), _wgslsmith_f_op_f32(244f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(295f - var_1.a.x)))), vec2<bool>(any(vec3<bool>(false, func_4(vec4<i32>(-2147483647i, u_input.c, u_input.c, -16484i), false, vec4<bool>(true, false, false, var_1.b.x)).b.x, -1i != u_input.c)), var_1.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(vec2<u32>(u_input.b, u_input.a), u_input.a, -20452i)), _wgslsmith_f_op_f32(-var_1.a.x))))));
    let var_3 = func_4(max(~(-vec4<i32>(7146i, 1i, u_input.c, u_input.c)), vec4<i32>(-firstTrailingBit(-1i), -u_input.c, 1i, 30107i)), var_2.b.x, vec4<bool>(var_2.b.x, true, var_1.b.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(var_2.c, _wgslsmith_div_f32(1164f, var_1.c), true)), abs(_wgslsmith_dot_vec2_u32(u_input.e.yy, _wgslsmith_div_vec2_u32(~u_input.d, func_1(vec4<f32>(213f, 705f, -449f, var_3.a.x), -576f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, _wgslsmith_div_f32(var_3.c, 484f)) - _wgslsmith_f_op_vec2_f32(trunc(var_1.a.xy))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.x, 677f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, -616f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1334f, var_1.c)))));
}

