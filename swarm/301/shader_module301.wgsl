struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec2<bool>) -> f32 {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(~(u_input.a >> (u_input.a % 32u)), u_input.a) << (1u % 32u), ~u_input.a, _wgslsmith_add_u32(max(max(u_input.a, 11353u >> (u_input.a % 32u)), u_input.a), ~u_input.a), 53105u);
    var var_1 = Struct_2(arg_2.x, u_input.a, firstLeadingBit(var_0.zy));
    global0 = -2147483647i;
    global0 = u_input.b.x;
    var var_2 = reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.c, vec2<u32>(abs(u_input.a), 1u)), var_1.c.x));
    return _wgslsmith_f_op_f32(-308f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-947f * 662f), -488f))))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(all(!vec4<bool>(true, true, true, any(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1312f) + -200f))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(563f, -868f, true)) * -451f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, false, vec2<bool>(true, true)))), vec4<f32>(-1665f, _wgslsmith_f_op_f32(trunc(-794f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -368f) + _wgslsmith_f_op_f32(1473f * 1699f)), 313f)));
    let var_1 = ~(~reverseBits(~vec3<u32>(u_input.a, 4294967295u, 4294967295u)) << (abs(vec3<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), u_input.a, ~u_input.a)) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_dot_vec3_u32(var_1, var_1) | var_1.x;
    var var_3 = (countOneBits(var_1.x ^ _wgslsmith_div_u32(var_1.x, 4294967295u)) << (u_input.a % 32u)) & firstTrailingBit(u_input.a);
    var var_4 = select(select(vec2<bool>(~6150u == max(u_input.a, u_input.a), true), !(!(!vec2<bool>(var_0.c, var_0.a))), select(vec2<bool>(true, var_0.c), select(!vec2<bool>(var_0.c, var_0.a), vec2<bool>(var_0.c, var_0.c), select(vec2<bool>(var_0.c, true), vec2<bool>(var_0.a, var_0.c), var_0.c)), all(select(vec2<bool>(false, false), vec2<bool>(var_0.a, var_0.c), true)))), !(!select(vec2<bool>(false, var_0.a), vec2<bool>(true, var_0.c), false)), !vec2<bool>(false, !var_0.a));
    return Struct_3(true, -740f, true, var_0.e.b.x, var_0.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_4 {
    global0 = u_input.b.x;
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_3.e.b.wz, arg_1.e.b.wx))));
    global0 = firstLeadingBit(~(-arg_2.x));
    var var_1 = Struct_5(-_wgslsmith_add_vec4_i32(vec4<i32>(34118i, max(-2537i, -6916i), 2147483647i, -arg_2.x), ~select(vec4<i32>(2147483647i, 0i, u_input.b.x, 44005i), vec4<i32>(0i, arg_2.x, -1987i, arg_2.x), arg_1.c)), max(abs(_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.a, 20770u, u_input.a, 0u)), vec4<u32>(8295u, u_input.a, u_input.a, u_input.a))), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(43866u, u_input.a, 50744u, 4294967295u), vec4<u32>(25716u, 3211u, 31732u, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, 23478u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 9428u, 39208u, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, 7194u)))), Struct_3(!(!arg_3.a && !arg_3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1653f, arg_1.b) * -992f)), false, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(1214f + var_0.x)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1390f * arg_3.e.a))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-212f, 199f, 654f, var_0.x), arg_0.b))))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -502f);
    return Struct_4(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(71316u, 5584u)), countOneBits(vec2<u32>(1u, var_1.b.x)))) << (31953u % 32u), !vec3<bool>(true, true, var_1.c.c), func_2().e, !vec3<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 56017u), vec2<u32>(u_input.a, u_input.a)) >= var_1.b.x, !any(vec2<bool>(false, true)), arg_3.c));
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> Struct_1 {
    let var_0 = func_4(arg_0.c, func_2(), min(select(vec2<i32>(2147483647i, u_input.b.x), vec2<i32>(u_input.b.x, 2147483647i), !arg_0.b.zy), ~vec2<i32>(u_input.b.x, 1i) ^ -vec2<i32>(u_input.b.x, u_input.b.x)) >> (~vec2<u32>(0u, abs(u_input.a)) % vec2<u32>(32u)), Struct_3(arg_0.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -574f)))), arg_1, arg_0.c.b.x, Struct_1(_wgslsmith_f_op_f32(454f * _wgslsmith_f_op_f32(f32(-1f) * -1304f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.b.x, arg_0.c.b.x, arg_0.c.b.x, -566f)))));
    global0 = 1i;
    let var_1 = select(select(vec4<bool>(arg_0.d.x, func_4(Struct_1(-961f, var_0.c.b), func_2(), _wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x)), Struct_3(true, var_0.c.a, true, var_0.c.a, arg_0.c)).b.x, all(vec2<bool>(true, var_0.b.x)) & !arg_1, var_0.d.x), vec4<bool>(true, any(var_0.b), var_0.d.x, false), select(vec4<bool>(!arg_0.b.x, arg_0.d.x, arg_0.b.x, true), vec4<bool>(!arg_1, true, true, !arg_0.d.x), arg_0.b.x)), !select(select(vec4<bool>(var_0.d.x, false, var_0.b.x, true), select(vec4<bool>(arg_0.b.x, var_0.d.x, arg_1, true), vec4<bool>(arg_1, false, false, false), true), arg_0.b.x), select(!vec4<bool>(arg_1, arg_0.b.x, arg_0.b.x, false), vec4<bool>(false, var_0.d.x, arg_1, arg_0.d.x), !vec4<bool>(var_0.b.x, false, arg_1, true)), arg_1), !all(var_0.d.zx));
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1347f), vec4<f32>(-270f, -206f, _wgslsmith_f_op_f32(-arg_0.c.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.a) + arg_0.c.a))), func_2(), _wgslsmith_div_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(18715i, u_input.b.x), abs(vec2<i32>(2147483647i, u_input.b.x))), _wgslsmith_div_vec2_i32(vec2<i32>(~(-1i), 0i), select(-u_input.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b, vec2<i32>(u_input.b.x, u_input.b.x)), var_0.d.zz))), Struct_3(!arg_0.b.x, _wgslsmith_div_f32(var_0.c.a, arg_0.c.b.x), true, -794f, Struct_1(-1500f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c.b + vec4<f32>(var_0.c.b.x, arg_0.c.a, arg_0.c.b.x, var_0.c.b.x)) * arg_0.c.b)))).c;
    let var_3 = _wgslsmith_div_f32(-503f, _wgslsmith_f_op_f32(-750f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b.x))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * 1f)) - -415f), _wgslsmith_f_op_vec4_f32(select(arg_0.c.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-113f, var_3, -1000f, var_3), _wgslsmith_f_op_vec4_f32(-func_4(Struct_1(-2245f, arg_0.c.b), Struct_3(true, var_0.c.a, arg_1, 1263f, arg_0.c), vec2<i32>(u_input.b.x, u_input.b.x), Struct_3(arg_0.d.x, -896f, arg_0.b.x, 1000f, arg_0.c)).c.b), var_1)), vec4<bool>(false, any(!vec4<bool>(true, arg_1, arg_1, arg_1)), func_4(Struct_1(1000f, arg_0.c.b), func_2(), max(u_input.b, vec2<i32>(-2147483647i, -2147483647i)), func_2()).b.x, true))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_5) -> vec4<u32> {
    global0 = ~(-2147483647i);
    let var_0 = arg_2.b.x;
    var var_1 = Struct_2(true, ~93918u, arg_2.b.yz);
    global0 = -1i;
    global0 = min(abs(u_input.b.x), -25411i);
    return vec4<u32>(_wgslsmith_mod_u32(~_wgslsmith_mult_u32(1u, var_0 | u_input.a), var_0 ^ min(~56663u, 1u)), var_1.b, var_0, ~(~min(_wgslsmith_div_u32(75963u, u_input.a), firstTrailingBit(u_input.a))));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec4<bool>) -> f32 {
    global0 = -17379i;
    let var_0 = Struct_5(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), arg_0, Struct_3(func_2().c, _wgslsmith_f_op_f32(func_4(func_4(Struct_1(-2645f, vec4<f32>(-1242f, -832f, 376f, 1267f)), Struct_3(true, 1217f, arg_1.x, 2161f, Struct_1(-1572f, vec4<f32>(-1000f, 1440f, 1048f, -1232f))), vec2<i32>(u_input.b.x, 2147483647i), Struct_3(false, -352f, true, 1000f, Struct_1(-272f, vec4<f32>(-1229f, 714f, 1265f, 1000f)))).c, func_2(), vec2<i32>(u_input.b.x, u_input.b.x), func_2()).c.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -566f))), !(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.b.x) <= _wgslsmith_add_i32(-2147483647i, u_input.b.x)), _wgslsmith_f_op_f32(select(-1248f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -452f) + _wgslsmith_f_op_f32(f32(-1f) * -196f)), false)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-474f, -334f)), 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-446f, -1000f, 464f, -577f) + vec4<f32>(-829f, -297f, -558f, 1117f))))));
    let var_1 = arg_0.x;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.e.b.x), _wgslsmith_f_op_f32(func_3(true, any(select(vec3<bool>(arg_1.x, false, false), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.xyy)), vec2<bool>(all(func_4(var_0.c.e, var_0.c, var_0.a.ww, Struct_3(true, 1270f, false, var_0.c.d, var_0.c.e)).d), var_0.c.a)))));
    var var_3 = reverseBits(select(vec4<i32>(_wgslsmith_dot_vec4_i32(var_0.a, _wgslsmith_sub_vec4_i32(var_0.a, vec4<i32>(var_0.a.x, var_0.a.x, 12015i, -2147483647i))), -reverseBits(var_0.a.x), -var_0.a.x ^ _wgslsmith_sub_i32(-1i, u_input.b.x), 0i), vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, 12475i, var_0.a.x), var_0.a.x, (u_input.b.x ^ u_input.b.x) >> (24707u % 32u), -u_input.b.x | _wgslsmith_mult_i32(u_input.b.x, -26782i)), all(vec2<bool>(any(vec2<bool>(arg_1.x, false)), true))));
    return 192f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(~(0u << (u_input.a % 32u)) << (4639u % 32u), u_input.a), 0u);
    global0 = max(~u_input.b.x, 1i);
    var var_2 = _wgslsmith_f_op_f32(func_6(~firstTrailingBit(func_5(~vec4<i32>(u_input.b.x, u_input.b.x, -9916i, u_input.b.x), func_1(Struct_4(var_1, vec3<bool>(false, var_0, var_0), Struct_1(184f, vec4<f32>(-860f, -254f, 1530f, -721f)), vec3<bool>(var_0, true, true)), var_0), Struct_5(vec4<i32>(u_input.b.x, 282i, -2147483647i, -46558i), vec4<u32>(var_1, var_1, u_input.a, u_input.a), Struct_3(var_0, -487f, false, -361f, Struct_1(-718f, vec4<f32>(1813f, 1798f, 318f, 421f)))))), !(!vec4<bool>(false, true, var_0, true))));
    var var_3 = select(vec4<bool>(var_0, any(!vec4<bool>(true, var_0, false, var_0)), false, !any(select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), var_0))), vec4<bool>(true, var_0, !var_0, !(!func_4(Struct_1(-1654f, vec4<f32>(-1332f, -607f, -1000f, -2230f)), Struct_3(false, 704f, false, 371f, Struct_1(1000f, vec4<f32>(-1000f, 750f, 139f, 248f))), vec2<i32>(-16681i, 2147483647i), Struct_3(var_0, -411f, true, -187f, Struct_1(740f, vec4<f32>(-425f, -738f, -280f, 158f)))).b.x)), !vec4<bool>(var_0 || var_0, var_0, _wgslsmith_div_u32(var_1, 11688u) < abs(u_input.a), !func_4(Struct_1(-229f, vec4<f32>(-1966f, 984f, 882f, 133f)), Struct_3(var_0, -765f, var_0, 1000f, Struct_1(1000f, vec4<f32>(325f, -425f, 1789f, 1000f))), vec2<i32>(u_input.b.x, u_input.b.x), Struct_3(var_0, -2158f, true, -1000f, Struct_1(-1710f, vec4<f32>(142f, 1370f, 1000f, -313f)))).d.x));
    var_3 = !(!select(vec4<bool>(var_3.x, true, true, !var_3.x), select(!vec4<bool>(var_0, var_3.x, true, false), vec4<bool>(var_0, var_0, false, var_3.x), vec4<bool>(var_3.x, var_3.x, var_0, var_0)), true));
    global0 = _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(i32(-1i) * -22420i, u_input.b.x >> (34442u % 32u)), firstTrailingBit(countOneBits(u_input.b.x)))) >> (22660u % 32u);
    var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1023f)) - 1f)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(74166i), 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1106f)) + _wgslsmith_f_op_f32(func_6(select(countOneBits(vec4<u32>(u_input.a, var_1, 4294967295u, 0u)), select(vec4<u32>(u_input.a, 4294967295u, var_1, 24304u), vec4<u32>(var_1, var_1, u_input.a, u_input.a), false), true), vec4<bool>(true, true, any(vec4<bool>(var_0, var_0, true, false)), true)))));
}

