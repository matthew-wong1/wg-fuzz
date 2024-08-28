struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec3<bool>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(581f, arg_1));
}

fn func_2(arg_0: f32) -> vec4<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec2<f32>(arg_0, arg_0), Struct_1(20187u, 4294967295u, false), vec2<bool>(true, false), Struct_2(vec4<i32>(u_input.d.x, u_input.b, u_input.b, 27769i)), arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1088f), vec3<bool>(false, false, true)))))), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~u_input.c, u_input.a & u_input.c, select(u_input.a, 7050u, true)), u_input.c, ~(~u_input.c)), u_input.a << (u_input.c % 32u), !any(vec4<bool>(true, true, true, false)) || (all(vec3<bool>(false, true, true)) | true)), vec2<bool>(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true), Struct_2(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(u_input.d, ~vec2<i32>(u_input.b, 4321i)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.d.x, u_input.b, u_input.d.x), vec4<i32>(-2147483647i, -2147483647i, u_input.d.x, u_input.b), vec4<i32>(u_input.d.x, -53701i, -2829i, u_input.d.x)), select(vec4<i32>(u_input.d.x, 0i, 0i, -2147483647i), vec4<i32>(0i, -3419i, 0i, 0i), true)), u_input.d.x)), _wgslsmith_f_op_vec2_f32(func_3(Struct_3(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec2<f32>(arg_0, arg_0), Struct_1(1u, 25410u, true), vec2<bool>(true, true), Struct_2(vec4<i32>(u_input.d.x, 43533i, 12780i, -1i)), arg_0), arg_0, vec3<bool>(true, true, true))), Struct_1(_wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_div_u32(59802u, 4294967295u), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.d.x, u_input.b), vec4<i32>(u_input.b, 22556i, 33500i, 93035i))), _wgslsmith_f_op_f32(round(1f))), -1486f, select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, true)), true, any(vec2<bool>(false, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), true)))).x);
    var_0 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, -550f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.e, arg_0), var_0.a))), _wgslsmith_f_op_vec2_f32(-var_0.a)), var_0.b, !select(!select(var_0.c, vec2<bool>(var_0.c.x, var_0.c.x), true), var_0.c, true), Struct_2(vec4<i32>(-(var_0.d.a.x ^ -70363i), -1i, ~_wgslsmith_div_i32(u_input.d.x, var_0.d.a.x), -_wgslsmith_clamp_i32(var_0.d.a.x, 1i, -1i))), -1063f);
    var_0 = Struct_3(var_0.a, var_0.b, vec2<bool>(any(!vec3<bool>(var_0.b.c, var_0.c.x, var_0.b.c)), var_0.b.c), var_0.d, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)) * arg_0)));
    var var_1 = var_0.b;
    let var_2 = ~select(select(vec3<u32>(1u, ~0u, var_0.b.b), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(u_input.c, var_0.b.a, u_input.a))), false), ~select(abs(vec3<u32>(var_1.a, var_0.b.a, var_0.b.a)), ~vec3<u32>(0u, 4227u, 4294967295u), select(vec3<bool>(var_1.c, var_1.c, false), vec3<bool>(var_1.c, var_0.c.x, true), vec3<bool>(false, false, var_1.c))), vec3<bool>(var_1.c, any(!var_0.c), var_0.b.c));
    return !select(!(!select(vec4<bool>(true, var_0.b.c, false, var_0.c.x), vec4<bool>(false, var_1.c, true, var_0.c.x), false)), !(!(!vec4<bool>(var_0.c.x, true, var_0.b.c, true))), select(vec4<bool>(var_0.b.c, !var_1.c, select(var_0.b.c, true, var_1.c), all(vec3<bool>(var_0.c.x, true, var_1.c))), select(!vec4<bool>(false, var_0.c.x, var_0.c.x, false), !vec4<bool>(true, var_1.c, var_1.c, false), var_1.c), !(!vec4<bool>(var_0.c.x, false, var_0.b.c, false))));
}

fn func_1(arg_0: u32, arg_1: bool) -> f32 {
    var var_0 = 1000f;
    let var_1 = true;
    var var_2 = all(select(func_2(-2475f), !select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, var_1, var_1, false), vec4<bool>(false, true, true, true)), all(func_2(656f)))) | (-1535f >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2176f - 1000f))));
    var_2 = true;
    var var_3 = select(select(vec3<bool>(var_1, true, all(func_2(1541f).ywy)), func_2(-192f).xyy, !(!select(vec3<bool>(false, arg_1, var_1), vec3<bool>(true, false, var_1), var_1))), !select(vec3<bool>(true, true, true), !select(vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, var_1, false), var_1), vec3<bool>(var_1 && false, true, var_1)), !(var_1 & (any(vec2<bool>(true, false)) & arg_1)));
    return _wgslsmith_f_op_f32(select(2072f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1108f, -1296f), -389f, true))))), false));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(4294967295u, min(u_input.c, 75042u), false);
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0)))), arg_0), Struct_1(~(arg_1 | ~4294967295u), 1u & ~_wgslsmith_mult_u32(var_0.b, 0u), true == (arg_1 >= _wgslsmith_mod_u32(arg_1, 0u))), arg_2, Struct_2(vec4<i32>(_wgslsmith_dot_vec4_i32(arg_3.a, select(arg_3.a, vec4<i32>(arg_3.a.x, u_input.b, -1i, 2147483647i), var_0.c)), arg_3.a.x, _wgslsmith_add_i32(-29846i, -64890i), -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0, -1989f, false)), _wgslsmith_f_op_f32(step(1496f, -914f))) * arg_0)));
    var var_2 = Struct_1(select(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(45572u, arg_1), 1u, var_0.a), _wgslsmith_mod_u32(u_input.a, ~4294967295u), false), countOneBits(u_input.c), arg_3.a.x <= -(~_wgslsmith_mod_i32(-2572i, var_1.d.a.x)));
    var_2 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(select(~var_2.a, 0u, false), countOneBits(var_0.a) ^ 81055u, ~var_1.b.a), firstLeadingBit(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a, 22156u, 46165u), vec3<u32>(59335u, var_1.b.b, var_2.b))))), ~(var_1.b.b >> (var_1.b.a % 32u)), all(!(!select(vec4<bool>(var_1.c.x, var_0.c, true, arg_2.x), vec4<bool>(var_2.c, var_0.c, arg_2.x, true), false))));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-var_1.a), var_1.b, select(vec2<bool>(all(vec4<bool>(false, arg_2.x, var_0.c, var_1.c.x)), !var_1.b.c), arg_2, var_2.c), Struct_2(var_1.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-395f))))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-546f)), _wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_vec2_f32(-var_1.a)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -678f), 251f)), Struct_1(countOneBits(reverseBits(var_2.a)), _wgslsmith_mod_u32(~var_0.a, firstTrailingBit(~var_0.b)), var_0.c), !vec2<bool>(all(!vec3<bool>(false, false, var_1.b.c)), u_input.d.x > -2147483647i), Struct_2(vec4<i32>(arg_3.a.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-51305i, arg_3.a.x), ~1i, i32(-1i) * -14529i), arg_3.a.x, -14925i ^ u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -847f) + _wgslsmith_f_op_f32(-var_1.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -978f) + _wgslsmith_f_op_f32(floor(-1688f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-259f - 1535f) * _wgslsmith_f_op_f32(max(-2468f, 190f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_1(u_input.c, false)))))), u_input.a, !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(all(vec4<bool>(false, true, false, true)), all(vec3<bool>(true, false, true))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true)), Struct_2(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.d.x, 2147483647i, u_input.b), vec4<i32>(-32562i, 34924i, u_input.b, u_input.d.x), vec4<i32>(u_input.d.x, 1i, u_input.b, -2147483647i)) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 87850u, 4294967295u, 45001u), vec4<u32>(u_input.c, u_input.c, 20829u, u_input.a)) % vec4<u32>(32u)), ~vec4<i32>(u_input.d.x, u_input.b, u_input.d.x, 0i))));
    var_0 = func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(1u, true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(900f - var_0.a.x))))), var_0.b.b, var_0.c, Struct_2(var_0.d.a));
    let var_1 = var_0.b.c || var_0.c.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(950f, 1381f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-110f * _wgslsmith_f_op_f32(-var_0.e)) + _wgslsmith_f_op_f32(-var_0.e))));
    var var_3 = select(false, true, false);
    var var_4 = Struct_5(Struct_1(firstLeadingBit(var_0.b.a), firstTrailingBit(166u), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.x, -1005f, var_0.e), vec3<f32>(-776f, -1840f, 1275f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -825f, var_2))))));
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-874f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_4.b.zy * var_4.b.yx), var_0.a)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a.x, -338f)))))) * _wgslsmith_f_op_vec2_f32(-func_4(_wgslsmith_f_op_f32(f32(-1f) * -391f), var_4.a.a, !var_0.c, Struct_2(var_0.d.a)).a)), max(abs(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.d.a.xy, vec2<i32>(var_0.d.a.x, u_input.b), vec2<i32>(1i, var_0.d.a.x)), abs(vec2<i32>(var_0.d.a.x, var_0.d.a.x)))), abs(select(func_4(532f, 0u, vec2<bool>(var_1, var_4.a.c), var_0.d).d.a.zw, u_input.d, var_0.c))));
}

