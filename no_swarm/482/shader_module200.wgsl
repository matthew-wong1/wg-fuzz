struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: vec2<i32>) -> bool {
    let var_0 = ~(~vec2<u32>(~u_input.b, u_input.b));
    var var_1 = vec4<i32>(~select(firstLeadingBit(firstTrailingBit(1841i)), ~13126i, true), min(countOneBits(arg_1.x), max(~u_input.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1145u, 0u, 71668u, 62623u), vec4<u32>(var_0.x, u_input.b, u_input.b, u_input.b)) % 32u), -arg_1.x)), _wgslsmith_mult_i32(~u_input.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.x, arg_3.x, 3137i), countOneBits(select(vec3<i32>(arg_1.x, arg_1.x, -1i), vec3<i32>(26662i, u_input.a, 0i), false)))), -_wgslsmith_sub_i32(arg_3.x | firstTrailingBit(u_input.a), -arg_1.x));
    let var_2 = select(select(select(!vec3<bool>(arg_2.x, arg_2.x, arg_2.x), !(!vec3<bool>(arg_2.x, false, true)), select(select(vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(false, true, true), vec3<bool>(arg_2.x, arg_2.x, false)), select(vec3<bool>(false, true, arg_2.x), vec3<bool>(arg_2.x, false, arg_2.x), false), u_input.a == 2147483647i)), select(select(!vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(arg_2.x, true, true), true), !select(vec3<bool>(arg_2.x, false, true), vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(arg_2.x, false, arg_2.x)), select(!vec3<bool>(arg_2.x, true, arg_2.x), vec3<bool>(true, true, true), arg_2.x)), arg_2.x), select(select(select(!vec3<bool>(true, arg_2.x, true), vec3<bool>(true, arg_2.x, arg_2.x), !vec3<bool>(true, true, arg_2.x)), select(vec3<bool>(false, false, true), vec3<bool>(arg_2.x, false, true), all(vec3<bool>(false, arg_2.x, true))), vec3<bool>(true, true, true)), select(!select(vec3<bool>(true, arg_2.x, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(false, true, arg_2.x), vec3<bool>(!arg_2.x, arg_2.x, !arg_2.x)), any(!(!arg_2))), select(vec3<bool>(true, arg_2.x, arg_2.x), select(!(!vec3<bool>(true, arg_2.x, arg_2.x)), !select(vec3<bool>(false, true, arg_2.x), vec3<bool>(false, arg_2.x, true), false), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, arg_2.x, true))), vec3<bool>(all(!vec4<bool>(arg_2.x, true, true, arg_2.x)), arg_2.x, arg_2.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1140f, -1000f))) + _wgslsmith_f_op_vec2_f32(ceil(arg_0)));
    var var_4 = Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1827f * 1133f) + _wgslsmith_f_op_f32(round(929f))), arg_0.x)))), _wgslsmith_f_op_f32(-var_3.x), Struct_1(_wgslsmith_mult_i32(arg_1.x, 1i), _wgslsmith_clamp_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, arg_3.x, arg_3.x, u_input.a), vec4<i32>(-2147483647i, arg_1.x, 0i, -2371i), vec4<i32>(-2147483647i, var_1.x, var_1.x, -2147483647i)), select(-vec4<i32>(u_input.a, -2147483647i, 1i, arg_1.x), ~vec4<i32>(0i, 2147483647i, 1i, arg_3.x), all(var_2.xz)), vec4<i32>(0i, -1i, _wgslsmith_clamp_i32(1i, u_input.a, u_input.a), 1i)), vec4<bool>(false, any(vec2<bool>(false, var_2.x)), arg_0.x < _wgslsmith_f_op_f32(step(-555f, -695f)), false), -353f));
    return !(!(var_4.c.b.x >= firstLeadingBit(var_1.x)));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(u_input.a, -reverseBits(abs(countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)))), vec4<bool>(true, _wgslsmith_f_op_f32(ceil(-252f)) > _wgslsmith_f_op_f32(f32(-1f) * -339f), true, all(vec4<bool>(true, true, true, true))), 352f);
    let var_1 = -var_0.b.x;
    let var_2 = Struct_4(-2169f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-725f, _wgslsmith_f_op_f32(var_0.d + -1562f), -25802i != u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(698f - var_0.d)))), Struct_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(2147483647i, u_input.a << (65733u % 32u)), -2147483647i), _wgslsmith_clamp_vec4_i32(var_0.b, -_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 0i, -2147483647i, u_input.a), var_0.b), max(_wgslsmith_add_vec4_i32(var_0.b, var_0.b), -vec4<i32>(var_0.b.x, var_0.b.x, var_0.a, u_input.a))), !vec4<bool>(true, true, func_3(vec2<f32>(var_0.d, var_0.d), var_0.b.zx, var_0.c.wz, var_0.b.xz), all(vec2<bool>(var_0.c.x, var_0.c.x))), 1000f));
    var var_3 = any(var_2.c.c.wy);
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.d, -865f))))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d + -137f)))));
    return _wgslsmith_div_u32(~u_input.b, 1051u);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(arg_3, Struct_2(_wgslsmith_f_op_f32(-arg_3.a)), vec4<bool>(any(select(vec4<bool>(false, arg_0.c.x, false, arg_0.c.x), select(arg_0.c, arg_0.c, vec4<bool>(true, arg_0.c.x, true, arg_0.c.x)), arg_0.c)), false, arg_0.c.x, true));
    var var_1 = arg_3.a;
    var_1 = _wgslsmith_f_op_f32(arg_3.a * _wgslsmith_f_op_f32(min(1f, -865f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.a, arg_0.b.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b.a, -529f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(926f, -507f) * vec2<f32>(1000f, arg_3.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a, arg_3.a)))))));
    var_1 = var_2.x;
    return Struct_2(695f);
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = func_4(Struct_3(Struct_2(969f), Struct_2(134f), select(vec4<bool>(u_input.b < u_input.b, select(arg_0.c.x, false, arg_0.c.x), true, true), select(arg_0.c, vec4<bool>(false, false, true, false), true), any(vec3<bool>(true, arg_0.c.x, true)))), u_input.b, func_2(), Struct_2(1021f));
    let var_1 = arg_0.c;
    let var_2 = abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, max(u_input.b, 1u), 31579u, _wgslsmith_div_u32(4294967295u, u_input.b)), ~(vec4<u32>(0u, 4294967295u, u_input.b, u_input.b) ^ vec4<u32>(u_input.b, 4294967295u, 1u, 1u)), ~(~vec4<u32>(24938u, u_input.b, 4294967295u, u_input.b)))) | vec4<u32>(u_input.b, 67519u, u_input.b, 4294967295u);
    let var_3 = !all(select(!select(var_1.xz, vec2<bool>(true, false), var_1.x), arg_0.c.xz, vec2<bool>(arg_0.c.x, var_1.x)));
    var var_4 = true;
    return func_3(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -380f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-875f, 246f))))), arg_0.b.wy, !select(var_1.xz, var_1.xx, var_1.wy), arg_0.b.yw) == var_1.x;
}

fn func_5(arg_0: bool, arg_1: i32) -> Struct_4 {
    var var_0 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b, ~83791u), ~abs(~vec2<u32>(89601u, 44303u) & vec2<u32>(u_input.b, u_input.b)), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 4294967295u) | vec2<u32>(u_input.b, u_input.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(6668u, u_input.b), vec2<u32>(u_input.b, 0u))), _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, u_input.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, 14748u)))) & ((~vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(751f + 2420f) * _wgslsmith_f_op_f32(1513f + _wgslsmith_f_op_f32(537f - -367f))));
    var_0 = ~vec2<u32>(~countOneBits(8424u), _wgslsmith_mult_u32(u_input.b, abs(4294967295u)) >> (u_input.b % 32u));
    var_0 = ~select(vec2<u32>(1u, ~4294967295u & (var_0.x | 37468u)), vec2<u32>(u_input.b, 3102u) | vec2<u32>(var_0.x, 53760u), (false && arg_0) == (arg_0 != true));
    var_0 = _wgslsmith_div_vec2_u32((vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, 0u), vec3<u32>(var_0.x, 50362u, 13202u)), ~649u) ^ _wgslsmith_add_vec2_u32(~vec2<u32>(0u, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(36010u, u_input.b), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.b, 4294967295u)))) | countOneBits(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, u_input.b), vec2<u32>(var_0.x, var_0.x))), vec2<u32>(~var_0.x, 1u));
    return Struct_4(_wgslsmith_div_f32(-788f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(ceil(-624f)), arg_0))), -296f, Struct_1(u_input.a, abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(15629i, u_input.a, 1i, u_input.a), vec4<i32>(arg_1, arg_1, -1i, -2147483647i), vec4<i32>(-7524i, arg_1, -1i, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, 18876i, -2147483647i, arg_1), vec4<i32>(1i, u_input.a, 2147483647i, u_input.a)), vec4<i32>(1i, 18403i, 1i, 32411i))), !select(vec4<bool>(true, arg_0, false, false), !vec4<bool>(arg_0, true, arg_0, arg_0), select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(false, true, true, false), arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(286f, func_4(Struct_3(var_1, Struct_2(var_1.a), vec4<bool>(true, arg_0, arg_0, false)), 1u, u_input.b, var_1).a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1730f), _wgslsmith_f_op_f32(-var_1.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(any(vec4<bool>(true, func_1(Struct_1(u_input.a, vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<bool>(false, true, false, true), -900f)), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-467f, -404f)), select(vec2<i32>(0i, u_input.a), vec2<i32>(-2147483647i, -1i), false), vec2<bool>(true, false), vec2<i32>(u_input.a, u_input.a) & vec2<i32>(u_input.a, u_input.a)), all(vec2<bool>(true, true)))), 2147483647i);
    var_0 = Struct_4(var_0.b, var_0.c.d, func_5(var_0.c.c.x, min(abs(~var_0.c.a), u_input.a)).c);
    let var_1 = abs(41412u);
    var_0 = Struct_4(_wgslsmith_f_op_f32(var_0.a * -458f), _wgslsmith_f_op_f32(trunc(var_0.a)), Struct_1(2147483647i, (-vec4<i32>(var_0.c.a, var_0.c.a, u_input.a, 1i) << (vec4<u32>(22858u, 1u, u_input.b, u_input.b) % vec4<u32>(32u))) ^ vec4<i32>(2147483647i, 4679i, var_0.c.b.x, 1i), vec4<bool>(~4294967295u != _wgslsmith_clamp_u32(22143u, u_input.b, var_1), func_5(true, -1i).c.c.x, true, false), -890f));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -920f))) + _wgslsmith_f_op_f32(floor(var_0.b)));
    let var_3 = -1000f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-539f, var_0.c.d))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(11788i, _wgslsmith_mult_i32(27424i, u_input.a)), u_input.a & var_0.c.a, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3, _wgslsmith_div_f32(var_0.c.d, _wgslsmith_f_op_f32(-1694f + var_3)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + var_3))), var_0.b))));
}

