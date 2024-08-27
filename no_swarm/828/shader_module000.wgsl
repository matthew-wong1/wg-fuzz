struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_5) -> vec4<f32> {
    let var_0 = Struct_3(vec4<bool>(true, false, false, all(vec3<bool>(true, true, any(vec2<bool>(true, true))))), Struct_2(true, true));
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) - _wgslsmith_f_op_f32(-1000f + arg_0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1057f * _wgslsmith_f_op_f32(f32(-1f) * -649f))), _wgslsmith_div_f32(500f, _wgslsmith_f_op_f32(-604f - _wgslsmith_f_op_f32(max(-911f, arg_0.c.x)))), 591f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_0.zwx)));
    let var_1 = _wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1167f, arg_0.x, var_0.x) + vec4<f32>(var_0.x, arg_1, 727f, arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_5(49539u, vec4<u32>(u_input.e.x, 54730u, u_input.e.x, u_input.b), arg_0.zz)))) * _wgslsmith_f_op_vec4_f32(-arg_0)))));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(arg_3.x), arg_3.x), ~_wgslsmith_div_vec2_i32(arg_3.yz, arg_3.xx)) >> (max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.b), ~vec2<u32>(4294967295u, 42790u)), 31059u) % 32u), 4294967295u, vec3<bool>(arg_2.x, any(select(!arg_2, !vec2<bool>(arg_2.x, true), false)), !(true | arg_2.x) || false), u_input.a, _wgslsmith_f_op_f32(abs(var_1.x)));
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(279f, var_0.x))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.e, arg_0.x)))), Struct_3(vec4<bool>(select(all(vec2<bool>(false, var_2.c.x)), true, any(var_2.c)), ~var_2.d > u_input.e.x, false, arg_2.x), Struct_2(any(vec2<bool>(false, false)), var_2.c.x)), arg_2.x, vec2<u32>(4294967295u, abs(~(var_2.d & 1u))), var_2);
    var var_4 = ~vec2<i32>(countOneBits(27367i), min(-1i, _wgslsmith_mult_i32(-1i, arg_3.x)));
    return var_3;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: vec2<u32>) -> u32 {
    let var_0 = ~select(-9146i << (u_input.c.x % 32u), max(_wgslsmith_dot_vec3_i32(-arg_2, -arg_2), 25645i), abs(arg_0.e.a) > 1i);
    var var_1 = abs(~(~(~select(u_input.d, u_input.d, false))));
    var_1 = ~countOneBits(~(vec3<u32>(5205u, 1u, 6221u) << (vec3<u32>(var_1.x, u_input.a, 11079u) % vec3<u32>(32u)))) >> (vec3<u32>(u_input.e.x, ~(~select(117434u, var_1.x, arg_0.b.b.b)), _wgslsmith_clamp_u32(~u_input.e.x << (0u % 32u), abs(0u), ~var_1.x)) % vec3<u32>(32u));
    var var_2 = _wgslsmith_div_i32(-(i32(-1i) * -2147483647i) & _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, 30883i, 838i, arg_2.x)), ~_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.x, var_0, -1i, arg_0.e.a), vec4<i32>(52084i, var_0, var_0, arg_0.e.a))), 39470i);
    let var_3 = Struct_5(0u, (firstTrailingBit(~vec4<u32>(0u, 4294967295u, 1u, 1u)) | (vec4<u32>(var_1.x, arg_0.e.b, 103068u, arg_3.x) >> (vec4<u32>(u_input.c.x, arg_3.x, arg_3.x, arg_0.e.b) % vec4<u32>(32u)))) | vec4<u32>(arg_0.d.x, ~arg_0.d.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, arg_3.x), vec2<u32>(arg_3.x, 4294967295u)) % 32u), 1u, ~8842u), _wgslsmith_f_op_vec2_f32(-arg_1));
    return (_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.b), var_3.b.yyx)), ~(16107u << (arg_3.x % 32u))) ^ abs(arg_3.x)) << (abs(_wgslsmith_clamp_u32(~(~24369u), ~1u, ~4294967295u << (u_input.c.x % 32u))) % 32u);
}

fn func_5(arg_0: u32) -> Struct_2 {
    var var_0 = select(u_input.c.x, firstTrailingBit(~1u), select(true, true, !any(vec3<bool>(false, true, true)))) >= (8153u ^ _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 1u, 76108u, 55094u), vec4<u32>(1u, 4294967295u, 0u, arg_0)), firstLeadingBit(vec4<u32>(26332u, arg_0, u_input.c.x, arg_0))));
    var_0 = any(!vec2<bool>(any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true))));
    var_0 = select(false, false, false);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1558f), -394f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-571f)) * 337f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(min(848f, -1085f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1442f, -649f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(func_3(Struct_5(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(89960u, arg_0, arg_0)), ~u_input.d), ~vec4<u32>(u_input.c.x, ~arg_0, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.a, arg_0, arg_0)), firstTrailingBit(u_input.b)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1121f, _wgslsmith_f_op_f32(trunc(1245f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(911f, 1601f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-449f, 435f), vec2<f32>(1481f, -2200f)))), true))))).x;
    return func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-867f, -992f))), _wgslsmith_div_f32(-558f, _wgslsmith_f_op_f32(sign(2049f))), _wgslsmith_f_op_f32(f32(-1f) * -1485f)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(546f, 354f, false)), -2470f), -815f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(454f + 1093f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1125f + -380f), -199f)), vec4<bool>(true | any(vec3<bool>(false, false, false)), true, func_2(vec4<f32>(-1000f, -708f, 652f, 1229f), _wgslsmith_f_op_f32(-362f * -158f), vec2<bool>(false, true), vec3<i32>(-1i, -1i, -58348i)).e.c.x, true))), _wgslsmith_f_op_f32(trunc(-608f)), vec2<bool>(!func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-784f, -318f, 1252f, -1355f)), _wgslsmith_f_op_f32(select(-1968f, -1127f, false)), vec2<bool>(true, true), -vec3<i32>(-27035i, 12482i, -251i)).e.c.x, true || all(vec4<bool>(false, false, true, false))), -max(~_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(-2147483647i, 18471i, 2147483647i)), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(27212i, -30099i, -2147483647i), vec3<i32>(1i, 2147483647i, -42488i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -2147483647i, 0i), vec3<i32>(1i, -7769i, 2147483647i)), vec3<i32>(26733i, 1i, -3221i) << (vec3<u32>(0u, 145142u, arg_0) % vec3<u32>(32u))))).b.b;
}

fn func_6(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec3<bool>) -> Struct_4 {
    let var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(2177f, arg_0.c.x, arg_0.c.x, arg_2.a.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-966f, 652f, 857f, arg_2.a.x))))))), _wgslsmith_f_op_f32(f32(-1f) * -1083f), select(!arg_3.zz, vec2<bool>(arg_3.x, true), arg_3.zz), abs(vec3<i32>(-12102i, _wgslsmith_add_i32(~0i, -1i), _wgslsmith_add_i32(0i, _wgslsmith_sub_i32(arg_2.e.a, 2147483647i))))).b;
    let var_1 = select(vec4<bool>(all(arg_1.a.ywz), arg_2.e.a > abs(countOneBits(arg_2.e.a)), var_0.a.x, !arg_1.a.x), func_2(vec4<f32>(arg_2.e.e, 1075f, _wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(trunc(arg_2.e.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(-arg_2.a.x))), arg_3.yz, max(_wgslsmith_add_vec3_i32(vec3<i32>(-31876i, arg_2.e.a, 2147483647i), vec3<i32>(30165i, 58378i, arg_2.e.a)), vec3<i32>(arg_2.e.a, -2147483647i, arg_2.e.a) ^ vec3<i32>(arg_2.e.a, arg_2.e.a, 13823i)) >> (max(vec3<u32>(22420u, 4294967295u, arg_2.e.d), vec3<u32>(arg_2.d.x, 4294967295u, 27508u)) % vec3<u32>(32u))).b.a, !all(var_0.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.x, arg_2.a.x) - arg_2.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, -1212f)))) - arg_0.c) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-437f, arg_2.a.x)))))));
    var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_5(u_input.b, vec4<u32>(35515u, 95242u, 14190u, 34485u), vec2<f32>(-1000f, 450f)))).yx) * arg_0.c)));
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2622f, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(434f - -734f)), _wgslsmith_f_op_f32(1694f * -923f)))), var_2.x, !select(var_0.a.xx, func_2(vec4<f32>(-454f, arg_0.c.x, 435f, arg_0.c.x), _wgslsmith_f_op_f32(-arg_2.a.x), arg_1.a.yw, vec3<i32>(arg_2.e.a, arg_2.e.a, 0i)).e.c.zx, vec2<bool>(any(vec4<bool>(false, arg_1.a.x, true, true)), func_5(16547u).b)), reverseBits(vec3<i32>(3003i, firstLeadingBit(0i), _wgslsmith_div_i32(arg_2.e.a, arg_2.e.a)) | vec3<i32>(arg_2.e.a, 36237i, -arg_2.e.a)));
    return func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.e.e, var_2.x, -1556f, var_3.a.x), vec4<f32>(-1236f, arg_0.c.x, 700f, var_3.e.e)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, 553f, var_2.x, var_2.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.e.e, 647f, arg_2.e.e, -633f))))), arg_2.a.x, !(!var_1.wx), ~(-vec3<i32>(1i, arg_2.e.a, -19696i)));
}

fn func_1(arg_0: f32, arg_1: u32) -> i32 {
    var var_0 = func_6(Struct_5(_wgslsmith_dot_vec4_u32(vec4<u32>(7649u, _wgslsmith_dot_vec2_u32(u_input.c, u_input.d.yz), _wgslsmith_mod_u32(arg_1, 38559u), _wgslsmith_mod_u32(42841u, u_input.b)), ~abs(vec4<u32>(0u, 0u, 0u, 17906u))), ((vec4<u32>(arg_1, u_input.d.x, 78240u, 4294967295u) | vec4<u32>(8306u, 1u, u_input.a, u_input.a)) >> (countOneBits(vec4<u32>(arg_1, 0u, 1u, u_input.a)) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_div_u32(arg_1, arg_1), ~25118u, _wgslsmith_clamp_u32(0u, u_input.a, 100042u), ~u_input.d.x) % vec4<u32>(32u)), vec2<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1745f)) + _wgslsmith_f_op_f32(round(arg_0))))), Struct_3(vec4<bool>(!all(vec4<bool>(true, true, true, false)), -1267f != _wgslsmith_f_op_f32(-arg_0), any(vec4<bool>(true, false, false, false)), true), func_5(func_4(func_2(vec4<f32>(arg_0, -988f, arg_0, 856f), 675f, vec2<bool>(true, false), vec3<i32>(-1i, -22042i, -2147483647i)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -1305f))), max(vec3<i32>(-9968i, -8339i, 1i), vec3<i32>(1i, -2147483647i, -2147483647i)), vec2<u32>(arg_1, u_input.b)))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -298f), _wgslsmith_div_f32(-749f, -610f), arg_0) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-109f, 2227f, -730f, 2112f), vec4<f32>(arg_0, arg_0, -550f, 1953f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, -223f, 700f, arg_0))), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-2073f, _wgslsmith_f_op_f32(exp2(arg_0))))), vec2<bool>(-2453f >= _wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_mod_u32(arg_1, u_input.a) > _wgslsmith_div_u32(1u, 5452u)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), countOneBits(vec3<i32>(-9497i, -4454i, 1i))) << (~firstTrailingBit(u_input.d) % vec3<u32>(32u))), !(!func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) * vec4<f32>(-179f, arg_0, -110f, -565f)), _wgslsmith_f_op_f32(f32(-1f) * -1148f), vec2<bool>(true, false), -vec3<i32>(0i, 18669i, 0i)).b.a.wxz));
    var var_1 = func_4(Struct_4(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.e.e))), 1617f), var_0.b, true, ~(~vec2<u32>(7925u, var_0.d.x) & vec2<u32>(var_0.d.x, 1u)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1331f, var_0.a.x, arg_0, var_0.e.e), vec4<f32>(-193f, arg_0, arg_0, -376f)))), _wgslsmith_f_op_f32(1f * -782f), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1209f, var_0.a.x, -1614f, var_0.a.x) + vec4<f32>(arg_0, var_0.a.x, -2148f, var_0.a.x)), _wgslsmith_div_f32(-858f, arg_0), vec2<bool>(var_0.c, var_0.c), min(vec3<i32>(var_0.e.a, 24308i, var_0.e.a), vec3<i32>(25634i, var_0.e.a, -32092i))).e.c.zx, -firstLeadingBit(vec3<i32>(var_0.e.a, var_0.e.a, -42802i))).e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1996f))), _wgslsmith_f_op_f32(arg_0 * 1760f))), (_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(-23458i, -27357i, 44031i)), vec3<i32>(-1i, var_0.e.a, var_0.e.a)) | _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.e.a, var_0.e.a, -46437i) & vec3<i32>(0i, 1i, var_0.e.a), select(vec3<i32>(var_0.e.a, var_0.e.a, var_0.e.a), vec3<i32>(var_0.e.a, var_0.e.a, var_0.e.a), var_0.e.c.x))) & (-select(vec3<i32>(var_0.e.a, var_0.e.a, var_0.e.a), vec3<i32>(var_0.e.a, var_0.e.a, 2147483647i), vec3<bool>(true, true, true)) << (_wgslsmith_mod_vec3_u32(~u_input.d, vec3<u32>(var_0.d.x, 4294967295u, var_0.d.x)) % vec3<u32>(32u))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.e, u_input.c ^ var_0.d) & ~firstTrailingBit(vec2<u32>(1u, 0u)), func_6(Struct_5(_wgslsmith_add_u32(u_input.b, var_0.d.x), vec4<u32>(0u, var_0.e.d, var_0.e.b, 1u), _wgslsmith_f_op_vec2_f32(abs(var_0.a))), Struct_3(var_0.b.a, func_6(Struct_5(u_input.e.x, vec4<u32>(1u, u_input.e.x, 8257u, arg_1), var_0.a), var_0.b, Struct_4(vec2<f32>(var_0.a.x, -411f), Struct_3(var_0.b.a, var_0.b.b), true, var_0.d, Struct_1(1685i, arg_1, vec3<bool>(true, true, false), 1u, arg_0)), vec3<bool>(true, var_0.b.b.b, true)).b.b), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-633f, -112f)), Struct_3(var_0.b.a, Struct_2(false, true)), var_0.b.a.x, vec2<u32>(1u, u_input.a), Struct_1(var_0.e.a, 0u, vec3<bool>(var_0.b.b.a, true, true), u_input.b, arg_0)), vec3<bool>(var_0.c, true, all(var_0.e.c.yz))).d, min(func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1325f, arg_0, 430f, 351f), vec4<f32>(841f, 1396f, -1218f, var_0.a.x), vec4<bool>(false, false, true, var_0.e.c.x))), _wgslsmith_f_op_f32(-arg_0), vec2<bool>(var_0.e.c.x, var_0.b.b.b), select(vec3<i32>(1i, 4732i, 0i), vec3<i32>(var_0.e.a, var_0.e.a, 0i), vec3<bool>(false, true, false))).d, vec2<u32>(25524u, _wgslsmith_mod_u32(122045u, arg_1)))));
    let var_2 = var_0.b.a.x;
    let var_3 = func_6(Struct_5(~(~7440u), reverseBits(vec4<u32>(var_0.e.b, arg_1, var_0.e.d, arg_1)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a.x, arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -326f) - vec2<f32>(arg_0, var_0.e.e))))))), func_2(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(_wgslsmith_div_u32(u_input.b, arg_1), vec4<u32>(4294967295u, arg_1, 4294967295u, 0u), var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1663f)), var_0.e.c.yy, countOneBits(~vec3<i32>(var_0.e.a, -23949i, var_0.e.a)) & vec3<i32>(var_0.e.a, 42992i, abs(var_0.e.a))).b, Struct_4(var_0.a, Struct_3(select(!var_0.b.a, vec4<bool>(true, var_0.b.a.x, true, var_0.c), var_0.c), func_5(arg_1)), var_0.b.b.b, vec2<u32>(firstTrailingBit(func_4(Struct_4(var_0.a, Struct_3(var_0.b.a, Struct_2(var_0.c, var_0.c)), true, vec2<u32>(arg_1, 4294967295u), Struct_1(0i, u_input.c.x, var_0.b.a.xyz, 1u, arg_0)), var_0.a, vec3<i32>(var_0.e.a, var_0.e.a, var_0.e.a), vec2<u32>(arg_1, 44148u))), u_input.d.x), var_0.e), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - var_0.e.e), _wgslsmith_f_op_f32(305f * 462f), _wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * vec4<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -996f), 540f, _wgslsmith_f_op_f32(197f * 852f))), var_0.a.x, !func_2(vec4<f32>(1000f, 893f, var_0.e.e, 400f), _wgslsmith_f_op_vec4_f32(func_3(Struct_5(4294967295u, vec4<u32>(15846u, 74611u, 53752u, 47520u), vec2<f32>(563f, arg_0)))).x, vec2<bool>(var_0.e.c.x, var_0.c), firstTrailingBit(vec3<i32>(-2147483647i, 17626i, var_0.e.a))).b.a.xw, vec3<i32>(-34370i, -1i, _wgslsmith_div_i32(var_0.e.a << (arg_1 % 32u), var_0.e.a))).b.a.xyw);
    var var_4 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(min(select(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.d.x), vec4<u32>(var_0.e.b, var_3.e.b, u_input.b, arg_1), var_0.c), abs(vec4<u32>(0u, u_input.b, var_3.e.d, 55294u))), reverseBits(vec4<u32>(u_input.a, 1u, arg_1, 18665u))), arg_1) != var_3.d.x;
    return min(-1i, _wgslsmith_div_i32(1i, 2147483647i));
}

fn func_7(arg_0: vec4<f32>, arg_1: i32, arg_2: bool, arg_3: u32) -> StorageBuffer {
    let var_0 = arg_2;
    var var_1 = !vec3<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-2148f)))) > -1586f, true, true);
    var var_2 = u_input.d.xz;
    var var_3 = Struct_1(arg_1, 1u, !vec3<bool>(17799u > _wgslsmith_mod_u32(var_2.x, 1u), var_1.x, true), ~abs(0u << (var_2.x % 32u)) << (arg_3 % 32u), -1111f);
    var_1 = func_6(Struct_5(~arg_3, vec4<u32>(~arg_3, _wgslsmith_dot_vec2_u32(u_input.c, u_input.e | u_input.c), ~(96477u ^ u_input.e.x), abs(_wgslsmith_add_u32(var_3.b, u_input.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.x, arg_0.x), arg_0.zx)), vec2<f32>(-414f, -998f), vec2<bool>(true, true))) * arg_0.xz)), func_2(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -237f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.e) - _wgslsmith_f_op_f32(arg_0.x + arg_0.x))), var_3.c.xz, vec3<i32>(var_3.a, ~min(0i, arg_1), -2147483647i)).b, func_2(_wgslsmith_f_op_vec4_f32(floor(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_6(Struct_5(arg_3, vec4<u32>(30932u, 0u, u_input.e.x, 4294967295u), arg_0.zw), Struct_3(vec4<bool>(arg_2, var_1.x, var_1.x, true), Struct_2(true, var_0)), Struct_4(vec2<f32>(var_3.e, var_3.e), Struct_3(vec4<bool>(true, var_0, false, false), Struct_2(false, false)), var_1.x, vec2<u32>(var_3.b, arg_3), Struct_1(1i, 1u, vec3<bool>(var_3.c.x, false, var_3.c.x), var_3.b, var_3.e)), var_3.c).e.e)) + arg_0.x), vec2<bool>(all(var_3.c.zx), var_0), -vec3<i32>(1i, var_3.a, abs(arg_1))), !(!select(var_3.c, var_3.c, false))).b.a.xwy;
    return StorageBuffer(55091u, ~_wgslsmith_sub_i32(arg_1, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a, 25387i, -2147483647i, -16987i), vec4<i32>(var_3.a, arg_1, var_3.a, 1i)), 2147483647i, _wgslsmith_sub_i32(-27249i, 35588i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-763f, 1005f)) - 186f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(358f * -1445f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(157f, -980f), 2116f, true)), 583f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1905f)), _wgslsmith_f_op_f32(-1000f + -1360f))) * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1303f, 1010f))))))), func_1(1f, u_input.b), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), 16983u >> (1u % 32u));
}

