struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: bool,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: u32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>) -> bool {
    let var_0 = !select(select(select(arg_2.xw, select(arg_2.zz, vec2<bool>(arg_2.x, arg_2.x), arg_2.x), -1i >= u_input.d.x), vec2<bool>(false, arg_0.d), vec2<bool>(-185f == arg_1, !arg_2.x)), select(arg_2.xx, !select(vec2<bool>(arg_0.d, true), vec2<bool>(false, true), arg_0.b.xy), true), arg_1 != 592f);
    let var_1 = Struct_4(Struct_2(!(arg_0.d && all(arg_2.wyz)), 1i, false, Struct_1(abs(~vec3<u32>(arg_0.c, u_input.c, u_input.c)), !(!arg_0.b), countOneBits(~10057u), any(arg_2.wxw)), vec4<f32>(-134f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * -2021f), -1916f), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(f32(-1f) * -852f)), arg_1)));
    let var_2 = 0i;
    let var_3 = var_1.a.d.a;
    var var_4 = var_1.a.d;
    return false;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_1(vec3<u32>(countOneBits(~u_input.c), u_input.c, u_input.c & 22728u), vec3<bool>((u_input.c <= 1u) && true, false, func_3(Struct_1(vec3<u32>(28215u, u_input.c, 10241u), vec3<bool>(false, false, true), u_input.c, false), 1832f, vec4<bool>(true, true, true, true))), select(u_input.c, u_input.c, !select(false, false, false)), !all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), 0i, Struct_2(false, _wgslsmith_dot_vec4_i32(u_input.d, ~vec4<i32>(-53325i, -40094i, -36422i, u_input.a.x)), true, Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 53476u, 59180u)), vec3<bool>(true, true, true), 4294967295u, true), vec4<f32>(-204f, _wgslsmith_f_op_f32(626f * -1289f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(345f - -289f)), 258f)), ~countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(4294967295u, 4363u))), vec3<u32>(~0u, firstTrailingBit(u_input.c), u_input.c));
    let var_1 = var_0.a;
    var_0 = Struct_3(Struct_1(_wgslsmith_mult_vec3_u32(var_1.a, min(_wgslsmith_sub_vec3_u32(var_0.a.a, var_0.e), vec3<u32>(0u, 4294967295u, 84256u))), select(!vec3<bool>(false, var_1.b.x, true), select(vec3<bool>(var_0.a.b.x, false, true), vec3<bool>(var_1.d, false, var_1.d), all(vec4<bool>(true, var_1.b.x, false, var_1.d))), false), u_input.c, _wgslsmith_f_op_f32(-1600f - _wgslsmith_f_op_f32(max(-491f, var_0.c.e.x))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -_wgslsmith_div_i32(_wgslsmith_add_i32(-u_input.a.x, u_input.d.x), var_0.c.b), var_0.c, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(firstLeadingBit(~var_0.e.zy), select(var_1.a.yy, ~vec2<u32>(0u, 37982u), select(vec2<bool>(false, false), var_1.b.yz, var_0.c.d.b.zz))), ~var_1.a.yx), ~select(var_1.a, vec3<u32>(var_0.d, 4294967295u, _wgslsmith_mod_u32(4294967295u, 26904u)), var_0.c.d.b));
    var_0 = Struct_3(Struct_1(~var_1.a, !vec3<bool>(var_0.a.b.x, !var_1.b.x, false), min(~4294967295u, _wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(45539u, var_1.a.x))), false), _wgslsmith_div_i32(u_input.b.x, 1i), var_0.c, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_1.a.x, var_0.d, var_1.a.x), vec4<u32>(var_0.d, 4294967295u, var_1.a.x, 89488u) & vec4<u32>(u_input.c, var_0.d, 0u, 4294967295u), ~vec4<u32>(0u, var_1.a.x, 91131u, u_input.c)) >> (select(~vec4<u32>(4294967295u, var_1.c, 4294967295u, var_1.c), vec4<u32>(36581u, 1u, 27887u, 33583u), var_0.c.d.c <= 1u) % vec4<u32>(32u)), vec4<u32>(~1u, ~var_1.a.x, var_0.c.d.c, 16189u)), var_0.c.d.a);
    var_0 = Struct_3(var_0.c.d, abs(-1686i), Struct_2(var_1.b.x, 16251i, !(!any(vec2<bool>(true, var_1.b.x))), Struct_1(_wgslsmith_mult_vec3_u32(~var_1.a, var_1.a), !select(var_0.c.d.b, vec3<bool>(false, true, var_0.a.d), var_0.c.d.b), ~(~63000u), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, var_0.c.e.x, 585f, 267f)))) - var_0.c.e)), ~(~var_0.e.x), ~var_1.a);
    return Struct_1(reverseBits(~(var_1.a | vec3<u32>(var_0.c.d.c, 4294967295u, var_1.c))), select(!vec3<bool>(all(vec3<bool>(var_1.d, var_1.b.x, true)), var_0.b < var_0.c.b, false), vec3<bool>(any(!vec2<bool>(true, var_0.c.d.b.x)), true, var_1.b.x), !select(var_0.c.d.b, select(var_1.b, vec3<bool>(var_0.c.d.d, true, var_1.b.x), var_1.b), select(vec3<bool>(var_0.c.a, false, var_0.c.c), var_1.b, vec3<bool>(var_0.c.c, var_1.d, true)))), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_1.c, 4294967295u, 14775u) & ~vec4<u32>(u_input.c, 38904u, u_input.c, u_input.c), max(~vec4<u32>(0u, var_0.d, var_0.c.d.a.x, 4294967295u), vec4<u32>(u_input.c, 47663u, 43457u, 4294967295u) & vec4<u32>(var_1.a.x, 51429u, 8931u, 4294967295u))) | (~reverseBits(var_0.d) | ~(~0u)), var_0.c.d.b.x);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-270f * 1012f), -1000f)))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-447f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -1701f) + 493f)), _wgslsmith_f_op_f32(-106f * _wgslsmith_f_op_f32(-527f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - 1902f))))));
    let var_1 = Struct_3(arg_0, u_input.a.x, Struct_2(arg_0.b.x, u_input.d.x << (arg_0.a.x % 32u), arg_0.d, Struct_1(countOneBits(reverseBits(vec3<u32>(u_input.c, u_input.c, arg_0.a.x))), !vec3<bool>(arg_0.d, false, arg_0.b.x), max(28497u, arg_0.a.x), ~u_input.b.x != -1i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1203f, -1000f, 437f, 859f), vec4<f32>(1123f, -1048f, -1943f, 815f), arg_0.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-640f, 575f, -222f, 418f))))), _wgslsmith_dot_vec2_u32(vec2<u32>(24608u, 1u), vec2<u32>(74575u, 4294967295u)) << (min(_wgslsmith_div_u32(~u_input.c, 4294967295u), _wgslsmith_sub_u32(37012u, 1u) << (arg_0.c % 32u)) % 32u), vec3<u32>(u_input.c, ~(~32284u << (u_input.c % 32u)), ~0u));
    var var_2 = var_1.c;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.e.x, var_2.e.x));
    return var_1.c;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = ~select(i32(-1i) * -1i, select(_wgslsmith_mult_i32(1i, firstTrailingBit(arg_1.b)), -38127i, arg_1.c), (_wgslsmith_mod_u32(u_input.c, 0u) < arg_0.x) || !(!arg_1.a));
    let var_1 = -1i >> (_wgslsmith_mod_u32(arg_0.x, _wgslsmith_add_u32(u_input.c, arg_0.x)) % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.e.x, 485f, 1293f, arg_1.e.x), vec4<f32>(arg_1.e.x, -683f, 777f, arg_1.e.x)))))) * arg_1.e)));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-301f, -2144f, 575f, _wgslsmith_f_op_f32(-arg_1.e.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_1.e, arg_1.e)))), _wgslsmith_f_op_vec4_f32(arg_1.e * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.e) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1600f, -957f, 1438f, var_2.x)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(select(arg_1.e, arg_1.e, true));
    return !vec3<bool>(arg_1.c, func_3(Struct_1(func_2().a, !arg_1.d.b, 2670u << (u_input.c % 32u), all(vec3<bool>(true, true, arg_1.c))), _wgslsmith_f_op_f32(sign(1251f)), !(!vec4<bool>(arg_1.d.b.x, true, true, false))), !arg_1.a);
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = all(!func_5(select(~vec3<u32>(11079u, 4294967295u, 0u), vec3<u32>(u_input.c, u_input.c, 40623u), true), func_4(func_2()), vec4<i32>(-7873i, select(u_input.a.x, u_input.d.x, false), u_input.d.x, 1i)));
    let var_1 = Struct_2(true, 40696i, var_0, func_2(), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-389f - -1024f), _wgslsmith_f_op_f32(trunc(-805f)))), _wgslsmith_f_op_f32(round(1302f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1188f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1681f - -1206f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -725f))))));
    var var_2 = max(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(21226u, arg_0, 7518u, 0u), firstLeadingBit(vec4<u32>(arg_0, 4607u, var_1.d.c, 4294967295u))), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(34219u, arg_0, 0u, 4294967295u), vec4<u32>(u_input.c, var_1.d.c, u_input.c, var_1.d.c)), ~15368u, _wgslsmith_mult_u32(1u, 1521u), 145471u >> (arg_0 % 32u))), ~u_input.c);
    let var_3 = u_input.d.yzw;
    var_2 = ~(~(var_1.d.a.x ^ _wgslsmith_mult_u32(~17622u, u_input.c)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.e.x + _wgslsmith_f_op_f32(var_1.e.x + -348f)))) + var_1.e.x);
}

fn func_6(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_2(false, -(~arg_0.b), true, Struct_1((arg_0.d.a | _wgslsmith_add_vec3_u32(arg_0.d.a, vec3<u32>(arg_0.d.c, u_input.c, 0u))) | arg_0.d.a, func_4(func_2()).d.b, _wgslsmith_mult_u32(u_input.c, arg_0.d.c), func_2().a.x != ~firstTrailingBit(u_input.c)), _wgslsmith_f_op_vec4_f32(select(arg_0.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0.e, vec4<f32>(-807f, 585f, -141f, arg_0.e.x), vec4<bool>(arg_0.a, false, arg_0.c, arg_0.d.b.x)))) * arg_0.e), select(select(select(vec4<bool>(true, arg_0.d.d, false, arg_0.a), vec4<bool>(false, arg_0.d.d, arg_0.c, arg_0.d.b.x), vec4<bool>(false, arg_0.c, true, arg_0.d.d)), !vec4<bool>(arg_0.d.d, true, false, arg_0.a), false), select(select(vec4<bool>(arg_0.d.b.x, false, true, true), vec4<bool>(true, arg_0.d.b.x, true, arg_0.d.d), vec4<bool>(false, false, false, false)), select(vec4<bool>(arg_0.a, arg_0.c, arg_0.c, false), vec4<bool>(arg_0.a, arg_0.d.b.x, arg_0.a, false), arg_0.c), arg_0.d.d), false))));
    var var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(~var_0.d.a.xy, var_0.d.a.yz), vec2<u32>(u_input.c, u_input.c | 1u));
    var var_2 = any(!(!arg_0.d.b));
    let var_3 = _wgslsmith_sub_i32(arg_0.b, ~(-1i));
    let var_4 = select(u_input.c, u_input.c, 4294967295u <= ~min(~var_1.x, 1u));
    return Struct_3(Struct_1(var_0.d.a, var_0.d.b, ~(~firstLeadingBit(var_0.d.a.x)), true), countOneBits(_wgslsmith_dot_vec4_i32(reverseBits(select(vec4<i32>(var_3, u_input.d.x, 1i, var_3), vec4<i32>(-17410i, arg_0.b, -16458i, 0i), false)), select(u_input.d, u_input.d, true))), Struct_2(_wgslsmith_mult_i32(u_input.d.x, ~(-1i)) >= arg_0.b, var_3 | var_0.b, select(true, var_0.c, false), func_4(func_4(var_0.d).d).d, vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -531f), _wgslsmith_f_op_f32(-arg_0.e.x))), ~(u_input.c >> (4294967295u % 32u)), arg_0.d.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(false, 0i, _wgslsmith_f_op_f32(min(-908f, _wgslsmith_f_op_f32(-1215f - 302f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1766f)) - _wgslsmith_f_op_f32(func_1(u_input.c))), Struct_1(~reverseBits(vec3<u32>(4294967295u, 2030u, u_input.c)), func_4(func_2()).d.b, reverseBits(~u_input.c), true), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1115f, -276f, 1740f, -993f)))))));
    var_0 = func_6(func_4(var_0.c.d));
    let var_1 = !vec2<bool>(var_0.a.d, !(_wgslsmith_dot_vec2_u32(vec2<u32>(19702u, 4294967295u), vec2<u32>(var_0.a.c, 42211u)) != var_0.e.x));
    let var_2 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.e.xww);
}

