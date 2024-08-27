struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32) -> vec4<f32> {
    let var_0 = arg_1;
    var var_1 = Struct_3(!all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), u_input.a.x);
    var var_2 = Struct_1(var_1.a, vec3<bool>(true, true, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1794f)), _wgslsmith_f_op_vec2_f32(-var_0.a.wy), vec2<bool>(false, false))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-631f, -1000f) - vec2<f32>(_wgslsmith_f_op_f32(-871f * 1507f), _wgslsmith_f_op_f32(arg_0.a.x - -1732f)))), -(~u_input.c));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_1.a), vec4<f32>(arg_1.a.x, 534f, -799f, arg_0.a.x))))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.a))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -951f, var_0.a.x, arg_0.a.x)))))), arg_1.a, vec4<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, var_2.a, true), var_1.a)), var_2.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-34890i, u_input.c, var_2.d, u_input.c), vec4<i32>(0i, -26824i, u_input.c, -17424i)) >= (u_input.c ^ var_2.d), var_2.a))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 234f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(ceil(-378f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(692f, 1000f), -711f, -1027f, -1095f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_4(vec4<f32>(-968f, 570f, 1045f, 551f)), Struct_4(vec4<f32>(-523f, 487f, -110f, 2241f)), u_input.a.x))))));
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 852f, var_0.a.x, 1495f))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(round(445f)))))));
    let var_1 = Struct_3(!all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), all(vec2<bool>(true, true)))), _wgslsmith_dot_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(55888u, u_input.b, 80223u, u_input.a.x), vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 63608u))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 117218u, u_input.a.x, 4294967295u), vec4<u32>(0u, u_input.b, u_input.b, 0u))) ^ countOneBits(vec4<u32>(28748u, 43339u, 1u, 0u) ^ vec4<u32>(4294967295u, 1u, 1u, u_input.a.x))));
    let var_2 = var_1;
    let var_3 = !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.x - 662f), 1007f, var_1.a)) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x * 450f)))) & var_1.a;
    return Struct_1(any(vec3<bool>(false && var_1.a, any(select(vec4<bool>(var_3, var_3, true, true), vec4<bool>(true, var_2.a, var_2.a, var_2.a), vec4<bool>(false, true, false, false))), (var_1.a || false) && true)), select(select(!(!vec3<bool>(var_2.a, var_1.a, true)), !(!vec3<bool>(var_2.a, true, false)), var_3), select(vec3<bool>(var_3, !var_1.a, true || var_1.a), vec3<bool>(true, all(vec4<bool>(true, false, var_2.a, false)), true), false), all(!select(vec2<bool>(false, var_2.a), vec2<bool>(var_3, true), false))), var_0.a.zz, select(-2147483647i, u_input.c, true));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = arg_0.c.x;
    let var_1 = Struct_1(true, func_2().b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.c.x, arg_2.a.x)))))))), 1009i);
    let var_2 = Struct_2(func_2(), vec4<f32>(1116f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1254f) + -973f), -1663f, _wgslsmith_f_op_f32(select(arg_0.c.x, 520f, reverseBits(4294967295u) > firstTrailingBit(17255u)))), arg_3.b, func_2(), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(~(-1i), u_input.c, 0i) | vec3<i32>(~39408i, _wgslsmith_sub_i32(2147483647i, u_input.c), firstTrailingBit(-216i))));
    let var_3 = vec3<u32>(var_2.c, 23455u, var_2.c);
    var var_4 = Struct_3(any(vec2<bool>(true, true)), _wgslsmith_div_u32(~_wgslsmith_div_u32(arg_3.b, _wgslsmith_add_u32(1u, var_3.x)), 1u));
    return vec4<bool>(all(vec2<bool>(var_1.a, arg_3.a)), arg_3.a, var_4.a, true);
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: f32) -> vec2<u32> {
    var var_0 = Struct_1(all(vec2<bool>(0u == abs(u_input.b), true)), !(!vec3<bool>(false, any(vec2<bool>(arg_1.x, false)), any(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(994f, arg_2), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, arg_2), vec2<f32>(-1271f, -595f)))))))), 35745i);
    var_0 = Struct_1(arg_2 <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1001f * var_0.c.x) - var_0.c.x))), vec3<bool>(var_0.a, !all(!arg_1.xx), any(func_2().b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c)))), 1370i);
    var_0 = Struct_1(select(!var_0.a, !arg_1.x, arg_1.x), !arg_1, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1963f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-994f))))), (_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0, var_0.d, arg_0) >> (vec4<u32>(u_input.a.x, u_input.b, 4294967295u, u_input.b) % vec4<u32>(32u)), ~vec4<i32>(var_0.d, u_input.c, var_0.d, 1426i)) & -1i) ^ 0i);
    var_0 = Struct_1(true, var_0.b, var_0.c, -func_2().d);
    let var_1 = select(vec3<u32>(u_input.b & u_input.b, u_input.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(28241u, 0u), u_input.a.xy)), u_input.a, !vec3<bool>(arg_1.x, func_2().a, all(select(arg_1.zx, vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(arg_1.x, arg_1.x)))));
    return vec2<u32>(~firstTrailingBit(0u), u_input.a.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: u32, arg_3: bool) -> Struct_2 {
    var var_0 = -16357i ^ (u_input.c & abs(-u_input.c));
    var var_1 = func_5(u_input.c, vec3<bool>(all(vec2<bool>(arg_0.x, any(vec4<bool>(arg_0.x, arg_0.x, false, arg_3)))), arg_0.x, any(func_4(func_2(), _wgslsmith_f_op_vec4_f32(vec4<f32>(102f, arg_1.x, 398f, arg_1.x) * vec4<f32>(arg_1.x, -1708f, 1100f, -684f)), Struct_4(vec4<f32>(-368f, arg_1.x, 707f, arg_1.x)), Struct_3(false, 70524u)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-430f - _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(max(arg_1.x, 1208f)))), arg_1.x)));
    var var_2 = func_2();
    var var_3 = Struct_2(Struct_1(any(var_2.b), vec3<bool>(true, !(arg_0.x && false), !arg_0.x), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_2.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.x, -193f) + arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-259f, var_2.c.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) - vec2<f32>(-1063f, var_2.c.x)))), abs(1i)), vec4<f32>(117f, -1537f, var_2.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-967f)), _wgslsmith_f_op_f32(round(457f)), !(!arg_0.x)))), arg_2, func_2(), ~(-31722i));
    var var_4 = -9164i;
    return Struct_2(Struct_1((arg_3 && false) | all(vec4<bool>(var_3.d.b.x, arg_0.x, true, false)), var_2.b, var_3.b.ww, 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_3.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.b * var_3.b) - vec4<f32>(591f, -223f, 780f, var_3.b.x))))), ~_wgslsmith_mult_u32(88800u, _wgslsmith_mod_u32(u_input.a.x, 1u)), Struct_1(true, !var_3.d.b, vec2<f32>(_wgslsmith_f_op_f32(-func_2().c.x), var_2.c.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-1i, var_2.d)), abs(_wgslsmith_sub_i32(var_3.a.d, var_3.d.d)))), var_3.d.d);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = func_1(vec2<bool>(false, func_2().d != (i32(-1i) * -u_input.c)), _wgslsmith_f_op_vec2_f32(-arg_1.a.c), ~firstLeadingBit(arg_1.c), arg_0.x);
    var_0 = Struct_2(arg_1.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.b + vec4<f32>(-1458f, -675f, 1763f, var_0.a.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.c.x, 269f, 2016f, var_0.a.c.x)) + _wgslsmith_f_op_vec4_f32(func_3(Struct_4(vec4<f32>(var_0.a.c.x, 1286f, arg_1.b.x, -2751f)), Struct_4(arg_1.b), 24603u))), func_4(func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.b + vec4<f32>(var_0.d.c.x, var_0.d.c.x, arg_1.b.x, 1090f)) * vec4<f32>(1588f, 1254f, 1843f, var_0.b.x)), Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -155f, arg_1.a.c.x, -472f) * vec4<f32>(arg_1.b.x, 1151f, var_0.b.x, -644f))), Struct_3(arg_1.a.b.x && arg_0.x, _wgslsmith_div_u32(0u, var_0.c))))), var_0.c, Struct_1(arg_1.a.a, var_0.d.b, _wgslsmith_f_op_vec2_f32(floor(arg_1.a.c)), u_input.c), var_0.e);
    let var_1 = _wgslsmith_add_u32(7642u, 0u);
    let var_2 = select(~(~18743i), var_0.a.d, !(!(1u >= var_0.c)));
    let var_3 = arg_0.zz;
    return !arg_0.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(184f - -389f)))));
    var var_1 = Struct_3(any(!func_6(vec3<bool>(true, false, false), func_1(vec2<bool>(true, true), vec2<f32>(-182f, -1487f), u_input.b, false))), u_input.a.x);
    let var_2 = ~_wgslsmith_clamp_u32(~var_1.b, ~(~1u), var_1.b);
    let var_3 = func_1(vec2<bool>(func_6(!(!vec3<bool>(var_1.a, true, var_1.a)), func_1(select(vec2<bool>(var_1.a, false), vec2<bool>(var_1.a, var_1.a), false), _wgslsmith_f_op_vec2_f32(vec2<f32>(-191f, -255f) + vec2<f32>(1179f, 633f)), func_1(vec2<bool>(var_1.a, var_1.a), vec2<f32>(493f, 624f), 79581u, false).c, false)).x, var_1.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-756f * -151f), _wgslsmith_f_op_f32(ceil(351f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(458f, -143f), _wgslsmith_f_op_vec4_f32(func_3(Struct_4(vec4<f32>(483f, -753f, 1071f, -588f)), Struct_4(vec4<f32>(-468f, 1256f, 1202f, -1696f)), 3131u)).xx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1997f, 2678f))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(842f, 1265f))))))), func_1(func_2().b.xx, vec2<f32>(682f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-720f, -153f)))), ~min(0u, abs(1u)), true | !var_1.a).c, u_input.c < u_input.c);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * 1000f), 2156f))) - _wgslsmith_f_op_f32(func_2().c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.d.c.x)) + _wgslsmith_f_op_f32(796f * var_3.b.x)))));
    var_1 = Struct_3(!var_3.d.b.x, 18302u);
    var_1 = Struct_3(true, min(3860u, 81912u));
    let var_4 = reverseBits(-(i32(-1i) * -var_3.e)) ^ ~(-1i);
    var_1 = Struct_3(var_3.d.a && false, var_3.c | 13281u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_3.b.x, _wgslsmith_f_op_f32(step(1561f, 190f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1077f - 1631f)), vec2<i32>(firstTrailingBit(func_2().d), 1i));
}

