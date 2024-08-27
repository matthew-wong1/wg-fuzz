struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> u32 {
    return u_input.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: vec4<f32>) -> f32 {
    let var_0 = arg_0.e;
    let var_1 = ~vec3<u32>(~(_wgslsmith_mod_u32(u_input.a, 4294967295u) & ~arg_2), arg_2, ~40717u);
    var var_2 = arg_3.yx;
    let var_3 = ~_wgslsmith_clamp_u32(u_input.a, _wgslsmith_sub_u32(~_wgslsmith_div_u32(arg_0.b, arg_2), u_input.a), 1u);
    var var_4 = arg_0;
    return _wgslsmith_f_op_f32(-arg_3.x);
}

fn func_2(arg_0: vec2<bool>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(max(409f, -159f)), func_3(vec3<bool>(arg_0.x, arg_0.x, true), 923f), vec4<f32>(-707f, 1170f, -508f, 1000f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-602f, 848f, -1000f), vec3<f32>(-1000f, -1000f, -1000f))), min(23893i, 0i)), !select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), arg_0.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 11497u, 1u, 4294967295u), vec4<u32>(31863u, u_input.a, 1u, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1569f)), -1542f, -992f, _wgslsmith_f_op_f32(-1434f + -307f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), ~u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(824f, -194f, 198f, -585f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2084f, 1121f, -391f, -961f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-144f, 367f, 1686f, -677f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(301f, -632f, 1f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-127f, -415f, 488f) - vec3<f32>(-1228f, -171f, 186f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2510f, 907f, -771f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-710f, -1000f, -596f) - vec3<f32>(1392f, 151f, 588f)))))), ~reverseBits(~_wgslsmith_clamp_i32(-1i, -26776i, 2147483647i)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(var_0.d.x + 1669f))))), var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) + var_0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.a, _wgslsmith_f_op_f32(max(328f, _wgslsmith_f_op_f32(func_4(Struct_1(-1349f, var_0.b, var_0.c, vec3<f32>(var_0.c.x, var_0.d.x, 845f), 1i), vec4<bool>(arg_0.x, false, false, true), 36419u, var_0.c)))))), ~(-_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e, var_0.e, 19247i, var_0.e), vec4<i32>(1i, -1i, var_0.e, var_0.e)), abs(var_0.e), -22596i)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-2067f, var_0.c.x))), u_input.a, vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(var_0.a, 1u, var_1.c, var_0.c.wxw, var_0.e), select(vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), 36431u, var_0.c)) * var_0.a), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-965f * _wgslsmith_div_f32(var_1.a, 764f))))), _wgslsmith_f_op_vec3_f32(sign(var_1.d)), select(-var_0.e, 22847i, arg_0.x));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(185f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + -150f)))), select(~_wgslsmith_mult_u32(18684u, var_1.b), u_input.a, true), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a, var_2.a, 136f, -315f)))) * var_0.c))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_2.d * _wgslsmith_div_vec3_f32(var_2.c.wyy, _wgslsmith_f_op_vec3_f32(-var_1.c.xzy))))), var_0.e);
    var var_4 = _wgslsmith_div_f32(var_3.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + -1000f));
    return var_1.e != (-14066i >> (1u % 32u));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(-144f, _wgslsmith_f_op_f32(1000f * 806f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1644f)) - _wgslsmith_f_op_f32(-879f * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3237f * -1023f)), _wgslsmith_f_op_f32(trunc(-137f))))));
    var var_1 = !(!select(vec4<bool>(false, 4294967295u <= u_input.a, func_2(vec2<bool>(true, true)), func_2(vec2<bool>(false, false))), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)));
    var var_2 = 0u;
    var var_3 = vec3<i32>(-1i, abs(-18992i), 2147483647i) ^ abs(vec3<i32>(~(-3013i), 1i, i32(-1i) * -15522i) << ((select(vec3<u32>(0u, u_input.a, 19390u), vec3<u32>(38947u, u_input.a, u_input.a), vec3<bool>(var_1.x, false, var_1.x)) ^ vec3<u32>(83206u, 1u, 11330u)) % vec3<u32>(32u)));
    var_2 = 25085u;
    return Struct_1(743f, 34549u, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1197f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(sign(var_0.x))))), vec4<f32>(var_0.x, -2617f, var_0.x, var_0.x))), vec3<f32>(_wgslsmith_div_f32(1273f, 1000f), var_0.x, _wgslsmith_f_op_f32(-var_0.x)), 2147483647i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.c.x))) + -589f);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(576f, -2271f, arg_1.d.x, arg_1.d.x) - vec4<f32>(336f, -1034f, -434f, 1206f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-244f, -999f, arg_0.d.x, -2076f)))) - arg_1.c), _wgslsmith_f_op_vec4_f32(arg_0.c - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, arg_0.a, arg_1.a, -1264f)) - func_1().c)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-502f, -1068f, arg_1.a, 411f))) * arg_0.c));
    var_1 = vec4<f32>(arg_0.d.x, arg_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(func_4(func_1(), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, any(vec2<bool>(true, false)), true)), _wgslsmith_sub_u32(select(~arg_0.b, _wgslsmith_mod_u32(arg_0.b, 28003u), select(false, false, true)), arg_0.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1519f, 395f, -551f, 544f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, 1518f, -131f, arg_0.d.x) + arg_0.c) + arg_1.c), vec4<bool>(true, true, true, true))))));
    let var_2 = func_1().b;
    var_1 = arg_1.c;
    return func_1();
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(1664f, arg_0.d.x)), _wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(u_input.a, 1u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-788f, _wgslsmith_f_op_f32(297f - 268f), _wgslsmith_f_op_f32(-arg_0.c.x), 271f))))), arg_0.c.www, 22080i & _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, 52507i, 1i, arg_0.e)), -vec4<i32>(arg_0.e, 2147483647i, 2147483647i, -5285i)), arg_0.e));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_mult_i32(24537i, _wgslsmith_mult_i32(arg_0.e, 0i) << (4294967295u % 32u));
    var var_3 = var_1;
    let var_4 = select(select(select(vec3<bool>(true, true, true), vec3<bool>(select(true, false, true), false, false), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), vec3<bool>(true, true, true), vec3<bool>(!any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(min(arg_0.c.x, var_0.a)) < 1000f, !any(vec4<bool>(true, true, true, true)))), vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1011f))) > var_0.a, any(vec3<bool>(true, true, true))), ~_wgslsmith_sub_u32(~var_0.b, _wgslsmith_mod_u32(21582u, 7827u)) < (9025u >> (var_1.b % 32u)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), u_input.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1163f, -315f, -722f, 1135f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(447f, 491f, -1000f), vec3<f32>(1300f, -891f, -1000f))))), ~(~(-1i))), func_1()));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1227f, var_0.a))) + var_0.c.zx) * _wgslsmith_f_op_vec2_f32(-var_0.c.zy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.c.zz, vec2<f32>(var_0.a, var_0.c.x), false)))))));
    let var_2 = select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), true), vec2<bool>(false, all(vec3<bool>(true, false, false))), vec2<bool>(all(vec3<bool>(false, false, false)), all(vec2<bool>(false, false)))), false | any(vec4<bool>(true, false, false, false))), select(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), false)), vec2<bool>(_wgslsmith_div_i32(var_0.e, var_0.e) < ~var_0.e, true), !all(vec2<bool>(true, true))), false);
    var_1 = _wgslsmith_f_op_vec2_f32(var_0.d.yz * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(var_0.c.wy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-903f, 1357f) - var_0.d.xx) + var_0.d.xz)), select(var_2, vec2<bool>(var_0.e < var_0.e, true), var_2))));
    let var_3 = var_0;
    var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.d.yx))), _wgslsmith_f_op_vec2_f32(var_3.d.yy * vec2<f32>(894f, _wgslsmith_f_op_f32(f32(-1f) * -196f)))));
    let var_4 = (-63847i & select(abs(1i), -reverseBits(1i), true)) >> (_wgslsmith_mod_u32(90283u, ~(~_wgslsmith_sub_u32(var_3.b, 83629u))) % 32u);
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.yz) + var_3.c.xz));
    var var_5 = Struct_1(var_3.d.x, ~(~4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.c.x, var_0.c.x, -505f, var_1.x), vec4<f32>(1279f, var_0.a, var_3.c.x, 851f)))))), func_6(func_1()).d, abs(var_4));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_3.d))), _wgslsmith_sub_vec3_i32(~(~min(vec3<i32>(var_0.e, -2147483647i, var_5.e), vec3<i32>(var_3.e, 2147483647i, var_0.e))), vec3<i32>(var_5.e, var_3.e, reverseBits(-5350i)) | countOneBits(-vec3<i32>(27506i, 21258i, -4608i))), vec3<u32>(_wgslsmith_add_u32(func_1().b, var_0.b), 8890u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(var_3.b, 0u)), vec2<u32>(~49021u, var_0.b))));
}

