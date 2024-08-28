struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> f32 {
    let var_0 = arg_0.c.c;
    var var_1 = Struct_1(204f, vec2<bool>(!any(select(vec4<bool>(arg_0.a, arg_0.b.b.x, true, false), vec4<bool>(true, arg_0.a, arg_0.c.c.x, true), false)), true), vec3<bool>(true, 4294967295u >= (~u_input.b.x >> (countOneBits(u_input.a) % 32u)), false), -25427i);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * var_1.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -564f), 108f)) - _wgslsmith_f_op_f32(var_1.a * _wgslsmith_div_f32(arg_0.b.a, var_1.a)))), select(vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(var_0.x, var_1.c.x), var_0.x)), !var_0.x), vec2<bool>(true, true), !(!select(var_0.xz, arg_0.c.b, vec2<bool>(false, var_0.x)))), select(vec3<bool>(false, true || !var_0.x, var_0.x), vec3<bool>(_wgslsmith_f_op_f32(-arg_0.b.a) <= 811f, false, !any(arg_0.c.c)), select(vec3<bool>(true || arg_0.c.c.x, false, any(vec2<bool>(false, true))), vec3<bool>(false, false, all(vec4<bool>(var_1.b.x, arg_0.a, true, false))), select(arg_0.c.c, select(var_1.c, vec3<bool>(var_1.b.x, true, true), var_0.x), false))), firstTrailingBit(45002i));
    var var_3 = vec2<bool>(true, false);
    var_1 = Struct_1(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_0.b.a)))), 206f))), var_2.c.yy, !(!var_2.c), firstLeadingBit(_wgslsmith_sub_i32(-var_1.d, -12748i)) >> (~u_input.a % 32u));
    return _wgslsmith_f_op_f32(-var_1.a);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: i32) -> vec4<bool> {
    let var_0 = arg_1.b;
    var var_1 = ~firstLeadingBit(~_wgslsmith_sub_u32(min(1u, 42604u), ~u_input.a));
    let var_2 = 597f;
    let var_3 = Struct_2(all(vec2<bool>(false, select(var_0.a, true, false))), var_0.b, Struct_1(_wgslsmith_f_op_f32(abs(arg_1.c.x)), vec2<bool>(var_0.b.b.x, all(select(vec2<bool>(false, false), arg_2.zy, true))), vec3<bool>(any(vec2<bool>(true, arg_2.x)), countOneBits(arg_3) <= abs(arg_1.a.x), all(select(vec4<bool>(arg_2.x, arg_1.b.b.c.x, false, arg_1.b.e), vec4<bool>(true, arg_1.b.b.b.x, false, true), vec4<bool>(arg_1.b.c.c.x, true, var_0.e, true)))), ((i32(-1i) * -2147483647i) >> (_wgslsmith_mult_u32(4294967295u, arg_1.d.x) % 32u)) | 25749i), min(~var_0.d | select(var_0.d ^ vec3<i32>(1i, arg_1.b.c.d, arg_1.b.b.d), vec3<i32>(arg_3, arg_3, u_input.c), arg_1.b.c.c), vec3<i32>(max(_wgslsmith_add_i32(arg_1.a.x, var_0.d.x), abs(u_input.c)), var_0.b.d, 2147483647i)), select(false, true, !var_0.c.b.x));
    var var_4 = -1078f;
    return vec4<bool>(arg_2.x, true, !var_0.a && true, (-5616i != var_0.c.d) & arg_2.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    var var_0 = !vec4<bool>(true, all(!vec2<bool>(arg_1, arg_2.c.x)), !arg_1, true);
    let var_1 = max(~(~(-19128i)), ~1i);
    let var_2 = -12411i;
    var_0 = !vec4<bool>(arg_2.a < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -305f) + _wgslsmith_f_op_f32(min(197f, arg_2.a))), arg_1, any(select(arg_2.c.xy, arg_2.c.zz, var_0.xy)) & true, true == (-1i == _wgslsmith_add_i32(-2147483647i, arg_3)));
    var var_3 = min(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2, arg_2.d, arg_2.d, arg_2.d), vec4<i32>(70618i, u_input.c, 3529i, arg_3), vec4<i32>(1i, var_1, u_input.c, var_2)) | ~vec4<i32>(1i, var_2, -23076i, 0i), reverseBits(~vec4<i32>(arg_3, 1i, 1i, var_1))) ^ (_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -36076i, 2147483647i, arg_3), vec4<i32>(-2147483647i, var_2, arg_2.d, arg_3)) ^ -vec4<i32>(var_1, u_input.c, u_input.c, var_1)), _wgslsmith_mult_vec4_i32(~(~(~vec4<i32>(-1i, -2147483647i, -2147483647i, var_2))), -select(min(vec4<i32>(2147483647i, arg_2.d, -38469i, 8032i), vec4<i32>(0i, arg_3, -1i, u_input.c)), -vec4<i32>(arg_3, u_input.c, 0i, arg_3), true)));
    return select(vec4<bool>(var_0.x, !var_0.x, arg_1, !(!(var_1 != var_2))), func_4(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-962f, _wgslsmith_f_op_f32(func_3(Struct_2(var_0.x, arg_2, Struct_1(-1204f, vec2<bool>(var_0.x, true), vec3<bool>(arg_1, arg_1, arg_1), u_input.c), var_3.wyz, false), vec4<i32>(-30525i, var_3.x, var_2, -1i)))), _wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(floor(-577f))), false | arg_2.c.x)), Struct_3(abs(-vec4<i32>(arg_3, -21883i, var_2, -1i)), Struct_2(arg_1, Struct_1(arg_2.a, var_0.ww, vec3<bool>(false, var_0.x, var_0.x), var_1), Struct_1(-566f, arg_2.c.zx, vec3<bool>(true, var_0.x, arg_1), var_2), vec3<i32>(10603i, 3551i, arg_3), u_input.a >= u_input.a), vec4<f32>(arg_2.a, _wgslsmith_f_op_f32(floor(-1584f)), _wgslsmith_f_op_f32(min(-1561f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -700f)), firstTrailingBit(~vec2<u32>(u_input.a, 1u))), !select(!vec3<bool>(arg_1, false, arg_2.b.x), vec3<bool>(false, arg_1, arg_2.b.x), 2147483647i <= arg_2.d), _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_2.d, 0i), -3450i)), arg_2.b.x);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(any(select(func_2(u_input.b.zz, arg_0.b.x, arg_0, -17601i), vec4<bool>(true, arg_0.c.x, arg_0.c.x, arg_0.b.x), !vec4<bool>(false, false, true, arg_0.b.x))) & !arg_0.c.x, arg_0, arg_0, vec3<i32>(~16574i, firstLeadingBit(abs(1i)), abs(~reverseBits(arg_0.d))), !(((u_input.b.x | u_input.b.x) ^ u_input.b.x) != _wgslsmith_mult_u32(7650u, 0u << (u_input.b.x % 32u))));
    let var_1 = Struct_2(false, var_0.b, Struct_1(arg_0.a, !arg_0.c.xy, var_0.b.c, ~_wgslsmith_mult_i32(select(var_0.c.d, u_input.c, false), abs(u_input.c))), var_0.d, var_0.a);
    var var_2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.a)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_0.c.a))))), Struct_3(-(~reverseBits(vec4<i32>(var_1.c.d, -2147483647i, var_1.d.x, -29514i))), Struct_2(true && (566f < var_1.b.a), var_0.b, var_0.c, _wgslsmith_add_vec3_i32(var_1.d, var_1.d) | -vec3<i32>(-44382i, 2147483647i, 1i), -2147483647i < (u_input.c ^ arg_0.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1910f, var_0.c.a, -291f, arg_0.a)))))), u_input.b.xy), !vec3<bool>(var_1.c.b.x, any(func_4(var_1.c.a, Struct_3(vec4<i32>(u_input.c, var_1.c.d, -1i, -79351i), Struct_2(var_1.b.c.x, var_1.b, arg_0, vec3<i32>(86718i, var_0.d.x, 0i), true), vec4<f32>(-407f, arg_0.a, var_1.c.a, -422f), vec2<u32>(0u, 17075u)), var_1.c.c, 1i).yxy), var_0.a), -max(_wgslsmith_clamp_i32(u_input.c | var_1.c.d, -12350i, reverseBits(var_1.c.d)), abs(0i))).xxx;
    var var_3 = var_1.c;
    var_2 = vec3<bool>(var_1.b.c.x, !select(-56668i == _wgslsmith_dot_vec2_i32(var_1.d.yx, var_0.d.xx), true, false), false);
    return var_0.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -vec2<i32>(-(i32(-1i) * -1i), ~(~1i));
    let var_1 = -arg_1.b.d.zz;
    var var_2 = countOneBits(u_input.c);
    return func_1(Struct_1(_wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(arg_1.b, arg_1.a)))))), arg_1.b.b.b, vec3<bool>(_wgslsmith_f_op_f32(abs(-732f)) != _wgslsmith_f_op_f32(floor(-528f)), arg_1.b.b.b.x, arg_0.c.x), arg_2));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(countOneBits(vec4<i32>(-9121i, -_wgslsmith_mod_i32(-2147483647i, -2147483647i), _wgslsmith_mod_i32(u_input.c, countOneBits(u_input.c)), ~_wgslsmith_clamp_i32(-41467i, u_input.c, -2147483647i))), Struct_2(func_4(-428f, Struct_3(vec4<i32>(u_input.c, arg_0.d, u_input.c, -15647i) >> (u_input.b % vec4<u32>(32u)), Struct_2(arg_0.b.x, arg_0, arg_0, vec3<i32>(u_input.c, -44969i, arg_0.d), arg_0.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(394f, -1752f, -1000f, -508f)), abs(u_input.b.wz)), vec3<bool>(!arg_0.b.x, true, arg_0.b.x), 7459i).x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(120f + -283f)), arg_0.c.xx, vec3<bool>(arg_0.a > arg_0.a, false, arg_0.b.x), -u_input.c | max(u_input.c, 2357i)), func_5(arg_0, Struct_3(countOneBits(vec4<i32>(arg_0.d, arg_0.d, -49073i, u_input.c)), Struct_2(true, Struct_1(1749f, vec2<bool>(false, true), arg_0.c, arg_0.d), Struct_1(473f, arg_0.c.zz, arg_0.c, -2147483647i), vec3<i32>(2147483647i, u_input.c, -29046i), true), vec4<f32>(arg_0.a, -828f, arg_0.a, -370f), vec2<u32>(u_input.b.x, 4294967295u)), ~(~(-34445i)), arg_0), ~(~(vec3<i32>(2147483647i, u_input.c, 15570i) << (vec3<u32>(4294967295u, u_input.b.x, 4294967295u) % vec3<u32>(32u)))), arg_0.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a, -526f, arg_0.a, -680f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -640f, arg_0.a, arg_0.a) + vec4<f32>(arg_0.a, -1879f, -271f, 850f)))) - vec4<f32>(_wgslsmith_f_op_f32(max(-352f, arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -233f), 1f, _wgslsmith_f_op_f32(-arg_0.a))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-597f, arg_0.a, 794f, arg_0.a) * _wgslsmith_div_vec4_f32(vec4<f32>(-443f, 654f, 543f, 1000f), vec4<f32>(-440f, arg_0.a, 1909f, arg_0.a)))))), u_input.b.wx);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(304f + -2458f) - 722f);
    var_1 = -1000f;
    var var_2 = Struct_3(-(vec4<i32>(1i, u_input.c, arg_0.d | -27955i, _wgslsmith_mod_i32(3964i, -1i)) >> (~(~vec4<u32>(var_0.d.x, var_0.d.x, u_input.a, u_input.a)) % vec4<u32>(32u))), Struct_2(!var_0.b.a, func_5(var_0.b.c, Struct_3(-vec4<i32>(arg_0.d, 5198i, var_0.a.x, arg_0.d), Struct_2(arg_0.c.x, Struct_1(1942f, vec2<bool>(false, true), arg_0.c, u_input.c), var_0.b.b, var_0.a.ywx, false), _wgslsmith_div_vec4_f32(vec4<f32>(2058f, var_0.b.c.a, arg_0.a, 181f), var_0.c), var_0.d), 928i >> (~u_input.b.x % 32u), Struct_1(_wgslsmith_div_f32(arg_0.a, arg_0.a), func_1(var_0.b.b).c.xy, vec3<bool>(arg_0.c.x, false, arg_0.c.x), reverseBits(u_input.c))), arg_0, -vec3<i32>(var_0.a.x, func_1(Struct_1(1536f, arg_0.c.zx, arg_0.c, 2147483647i)).d, 1i), true), var_0.c, vec2<u32>(reverseBits(_wgslsmith_add_u32(_wgslsmith_div_u32(53996u, var_0.d.x), var_0.d.x)), ~(~1u) ^ u_input.b.x));
    var_2 = var_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<i32>(i32(-1i) * -2147483647i, abs(~(-5374i)), select(-2147483647i, _wgslsmith_add_i32(-32348i, -2976i), true), _wgslsmith_div_i32(u_input.c, -1i)) ^ max(vec4<i32>(-2147483647i, u_input.c ^ 2147483647i, u_input.c, u_input.c), ~abs(vec4<i32>(u_input.c, 64588i, u_input.c, 1i))), Struct_2(~(55001u ^ u_input.a) <= max(_wgslsmith_dot_vec3_u32(u_input.b.xwx, u_input.b.zxx), max(u_input.b.x, u_input.a)), Struct_1(_wgslsmith_f_op_f32(trunc(347f)), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(false, false, false)), -(~15394i)), func_6(func_5(func_1(Struct_1(-677f, vec2<bool>(false, false), vec3<bool>(false, true, true), 18254i)), Struct_3(vec4<i32>(u_input.c, 4589i, -23556i, -33251i), Struct_2(true, Struct_1(505f, vec2<bool>(true, false), vec3<bool>(true, false, false), 0i), Struct_1(-740f, vec2<bool>(false, true), vec3<bool>(true, true, true), u_input.c), vec3<i32>(1i, -16652i, 9807i), false), vec4<f32>(2058f, 825f, -1109f, 1731f), u_input.b.zy), _wgslsmith_div_i32(1i, u_input.c), Struct_1(1330f, vec2<bool>(true, false), vec3<bool>(false, true, true), u_input.c))), ~max(vec3<i32>(-954i, 0i, u_input.c), vec3<i32>(3886i, u_input.c, u_input.c)), !any(vec4<bool>(true, false, false, true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-609f, -691f, 283f, 320f), vec4<f32>(601f, 518f, 1741f, 1952f))))))))), select(u_input.b.xx, u_input.b.xy, func_1(func_6(func_6(Struct_1(1482f, vec2<bool>(true, false), vec3<bool>(true, true, true), u_input.c)))).b.x));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1691f))))), !(!func_5(Struct_1(-1040f, vec2<bool>(false, var_0.b.e), vec3<bool>(var_0.b.b.b.x, var_0.b.e, false), u_input.c), Struct_3(var_0.a, Struct_2(var_0.b.b.b.x, var_0.b.c, Struct_1(var_0.c.x, var_0.b.b.b, var_0.b.b.c, -1i), vec3<i32>(-2147483647i, -16720i, -12408i), var_0.b.b.c.x), vec4<f32>(var_0.b.c.a, var_0.c.x, 1000f, 2358f), vec2<u32>(var_0.d.x, var_0.d.x)), ~u_input.c, var_0.b.b).b), func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(min(u_input.a, u_input.b.x), ~var_0.d.x), vec2<u32>(~var_0.d.x, u_input.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0.c.x)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), var_0.b.c, max(var_0.a.x, reverseBits(29989i))).yzz, u_input.c);
    let var_2 = func_1(Struct_1(var_0.b.c.a, !func_5(func_6(Struct_1(-174f, var_1.b, var_1.c, var_0.b.b.d)), var_0, -2147483647i, func_1(var_0.b.c)).c.zz, func_1(var_0.b.c).c, min(var_0.b.b.d, _wgslsmith_dot_vec4_i32(-var_0.a, vec4<i32>(var_0.b.d.x, 1i, var_0.b.d.x, var_0.a.x)))));
    var var_3 = _wgslsmith_div_u32(~u_input.b.x, _wgslsmith_clamp_u32(1u, 26806u, 32980u << (var_0.d.x % 32u)));
    let var_4 = Struct_3(select(vec4<i32>(-2147483647i, var_2.d, var_2.d, 2147483647i), max(_wgslsmith_div_vec4_i32(var_0.a, var_0.a), abs(vec4<i32>(24837i, var_2.d, var_2.d, 2147483647i))) >> (abs(select(u_input.b, u_input.b, vec4<bool>(var_2.b.x, true, true, var_0.b.c.c.x))) % vec4<u32>(32u)), !var_1.c.x || true), var_0.b, vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(step(func_6(var_2).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 399f) * _wgslsmith_f_op_f32(f32(-1f) * -173f)))), var_2.a, var_1.a), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_0.d.x), countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.b.x, 40148u)))) << (u_input.b.yz % vec2<u32>(32u)));
    var_3 = 20228u;
    var var_5 = Struct_3(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(select(var_0.a, vec4<i32>(var_0.b.c.d, -4309i, -2147483647i, var_1.d), var_1.b.x), var_0.a), -var_0.a >> (_wgslsmith_add_vec4_u32(vec4<u32>(35216u, 42574u, 1u, 6387u), u_input.b) % vec4<u32>(32u)), ~var_0.a), var_4.a), Struct_2(!var_1.c.x, Struct_1(func_6(var_4.b.c).a, var_4.b.b.b, var_2.c, var_0.b.c.d), var_4.b.b, -vec3<i32>(_wgslsmith_mod_i32(-1i, -2147483647i), _wgslsmith_dot_vec4_i32(var_4.a, var_0.a), -var_2.d), !(~u_input.c >= 1i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-887f, var_0.b.c.a, var_4.c.x, var_1.a)))), _wgslsmith_f_op_vec4_f32(-var_4.c), !(!vec4<bool>(var_1.b.x, false, var_4.b.a, true)))), var_0.c), vec2<u32>(max(u_input.b.x, firstTrailingBit(firstLeadingBit(var_4.d.x))), ~var_0.d.x));
    let var_6 = _wgslsmith_f_op_f32(abs(1000f));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1871f, var_4.c.x, var_5.b.b.a, -460f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, -555f, var_1.a, 367f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(472f, -551f, var_5.c.x, 1251f))))) * _wgslsmith_f_op_vec4_f32(-var_5.c)), -abs(-(vec4<i32>(0i, var_4.b.b.d, 20711i, 2147483647i) & var_0.a)), _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.a, var_4.d.x, 1u, 4294967295u)), ~vec4<u32>(var_5.d.x, var_4.d.x, 5197u, 26082u)), (_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(u_input.a, 30517u, var_0.d.x, var_5.d.x)) | select(vec4<u32>(35001u, 0u, var_4.d.x, var_0.d.x), vec4<u32>(26128u, 43434u, 4294967295u, var_5.d.x), vec4<bool>(false, var_1.c.x, var_1.b.x, var_4.b.c.c.x))) | abs(countOneBits(u_input.b))));
}

