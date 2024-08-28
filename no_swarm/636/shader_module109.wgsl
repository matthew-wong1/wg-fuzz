struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> f32 {
    let var_0 = ~arg_0.b.x;
    let var_1 = Struct_2(Struct_1(428f, arg_0.b), !any(select(!vec3<bool>(arg_1.x, true, arg_1.x), select(vec3<bool>(false, arg_1.x, arg_1.x), arg_1.yww, arg_1.x), arg_1.wxy)), countOneBits(u_input.b) < 4294967295u);
    var var_2 = firstTrailingBit(~var_1.a.b.x);
    var var_3 = select(vec3<bool>(!arg_1.x, !arg_1.x, !any(vec3<bool>(true, true, var_1.c))), select(vec3<bool>(!all(arg_1), any(!arg_1), !(var_1.b || arg_1.x)), vec3<bool>(select(all(arg_1.yz), !arg_1.x, false), !arg_1.x, select(1853u, u_input.c, true) < ~arg_2), all(!select(vec3<bool>(var_1.b, true, false), vec3<bool>(arg_1.x, arg_1.x, false), false))), !all(!arg_1.zz) & false);
    let var_4 = Struct_1(-1160f, vec3<i32>(-1i) * -vec3<i32>(arg_0.b.x << (3885u % 32u), 1i, ~var_1.a.b.x));
    return var_1.a.a;
}

fn func_2(arg_0: vec3<bool>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(918f * _wgslsmith_f_op_f32(f32(-1f) * -322f)));
    var var_1 = !any(!(!vec4<bool>(false, true, arg_0.x, true))) || (arg_0.x & ((select(0i, -7412i, true) | 2147483647i) == 1i));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1080f, -598f, false)) + _wgslsmith_f_op_f32(-491f * 215f)))) + _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(ceil(1000f)), vec3<i32>(0i, 1i, -66480i)), vec4<bool>(true, true, true, true), firstLeadingBit(u_input.c >> (4294967295u % 32u))))), firstTrailingBit(~(~vec3<i32>(-2147483647i, -34553i, 10495i)) ^ _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(-1i, 1i, -13172i)), vec3<i32>(9856i, -791i, -1i) >> (u_input.d.yyw % vec3<u32>(32u)))));
    let var_3 = var_2;
    let var_4 = var_3;
    return var_2.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = 0i;
    var var_1 = arg_0.a;
    let var_2 = arg_1.a;
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.a), _wgslsmith_f_op_f32(828f - _wgslsmith_f_op_f32(-var_1.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-227f, _wgslsmith_f_op_f32(sign(arg_1.a.a)))) - arg_0.a.a)), arg_2.zwx);
    return Struct_1(var_2.a, abs(arg_0.a.b));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-190f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.a, arg_0.a.a))) + func_4(Struct_2(arg_1.a, arg_1.c, arg_0.c), Struct_2(func_4(Struct_2(Struct_1(-410f, arg_1.a.b), true, true), arg_0, vec4<i32>(arg_1.a.b.x, 78083i, -8634i, -1i), vec3<i32>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x)), arg_0.b, -1675f >= arg_1.a.a), -(~vec4<i32>(arg_1.a.b.x, arg_1.a.b.x, 62896i, 0i)), max(vec3<i32>(-2147483647i, -2147483647i ^ arg_0.a.b.x, ~0i), arg_0.a.b)).a);
    var var_1 = u_input.d.x << (~24821u % 32u);
    let var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(299f, -799f), vec2<f32>(var_0, arg_1.a.a))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.a, 157f) + vec2<f32>(-803f, -1649f))), vec2<f32>(var_0, _wgslsmith_f_op_f32(-var_2.a.a))))) - vec2<f32>(1577f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.a.a + var_2.a.a), _wgslsmith_f_op_f32(floor(-1010f)), true))))));
    var var_4 = vec4<i32>(-(_wgslsmith_mod_i32(1i, arg_0.a.b.x) << (abs(1u) % 32u)), firstTrailingBit(-1i) >> (1u % 32u), _wgslsmith_add_i32(7139i, var_2.a.b.x), -_wgslsmith_mult_i32(-var_2.a.b.x, func_4(arg_1, Struct_2(var_2.a, false, true), vec4<i32>(2147483647i, var_2.a.b.x, -405i, arg_0.a.b.x), vec3<i32>(arg_0.a.b.x, 0i, arg_1.a.b.x)).b.x)) ^ vec4<i32>(arg_1.a.b.x, select(arg_0.a.b.x, -1i, arg_1.c), arg_0.a.b.x, _wgslsmith_add_i32(-2147483647i, 0i));
    return _wgslsmith_f_op_f32(f32(-1f) * -1135f);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_2(func_4(Struct_2(Struct_1(1483f, vec3<i32>(0i, -6402i, 24667i)), false, true), Struct_2(Struct_1(-1454f, vec3<i32>(2147483647i, -2147483647i, 14811i)), false, true), vec4<i32>(1i, 2147483647i, 1i, -50930i), func_2(vec3<bool>(false, true, false))), any(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, false), false))), Struct_2(Struct_1(func_4(Struct_2(Struct_1(1125f, vec3<i32>(58568i, -29637i, -22954i)), true, true), Struct_2(Struct_1(1814f, vec3<i32>(-33454i, 21227i, -2147483647i)), false, true), vec4<i32>(-44764i, 1i, -25251i, -2147483647i), vec3<i32>(-53111i, -10962i, 0i)).a, min(vec3<i32>(16537i, 2147483647i, 4152i), vec3<i32>(-3724i, -1979i, 48709i))), true, true || select(true, true, false)))));
    var var_1 = -(~(~1i & _wgslsmith_mod_i32(firstTrailingBit(1i), max(-6797i, 8904i))));
    let var_2 = _wgslsmith_clamp_u32(~(~(~(~u_input.a))), 0u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(abs(u_input.d.xww), vec3<u32>(u_input.c, u_input.d.x, u_input.b)), ~(~vec3<u32>(0u, u_input.a, u_input.d.x))) ^ u_input.c);
    var_1 = ~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, -66924i, -725i, 0i) >> (vec4<u32>(var_2, 80107u, 59407u, u_input.c) % vec4<u32>(32u))) >> (u_input.d % vec4<u32>(32u)), ~countOneBits(vec4<i32>(29602i, 14264i, 2147483647i, -1i)));
    var var_3 = func_4(Struct_2(Struct_1(491f, vec3<i32>(1i, 1i, 1i)), true, true), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -543f), -reverseBits(vec3<i32>(-81548i, 1i, -1443i))), false, true), vec4<i32>(1i, -(~select(-83060i, -2914i, false)), -7035i, -6629i), _wgslsmith_sub_vec3_i32(-reverseBits(func_2(vec3<bool>(false, true, false))), vec3<i32>(1i, 1i, 1i)));
    return func_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(580f, var_3.a))), vec3<i32>(var_3.b.x, var_3.b.x, i32(-1i) * -1i)), true, true), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_0) + _wgslsmith_f_op_f32(-var_3.a)), func_4(Struct_2(Struct_1(-1221f, var_3.b), false, true), Struct_2(Struct_1(-303f, vec3<i32>(var_3.b.x, var_3.b.x, 0i)), false, false), vec4<i32>(0i, var_3.b.x, -9489i, var_3.b.x) << (u_input.d % vec4<u32>(32u)), vec3<i32>(13054i, var_3.b.x, var_3.b.x)).b), select(true, true, all(vec2<bool>(false, false))), !(false & select(false, false, true))), _wgslsmith_mod_vec4_i32(-vec4<i32>(~(-2147483647i), var_3.b.x, -10919i, _wgslsmith_add_i32(var_3.b.x, var_3.b.x)), ~vec4<i32>(max(2147483647i, 2147483647i), _wgslsmith_clamp_i32(-39178i, 3344i, var_3.b.x), 14359i, -var_3.b.x)), var_3.b << (countOneBits(u_input.d.wyw) % vec3<u32>(32u)));
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = arg_0.a;
    var var_1 = arg_3;
    var var_2 = -vec4<i32>(max(-var_0.b.x, arg_0.a.b.x) >> (var_1.x % 32u), countOneBits(reverseBits(func_4(Struct_2(Struct_1(var_0.a, arg_0.a.b), false, false), Struct_2(Struct_1(var_0.a, vec3<i32>(44191i, arg_2.x, 33248i)), true, arg_1), vec4<i32>(25039i, -1i, -6454i, var_0.b.x), arg_2).b.x)), ~arg_2.x, arg_0.a.b.x);
    let var_3 = Struct_2(func_4(Struct_2(var_0, !(1000f != var_0.a), false), arg_0, -vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0.a.b, arg_2), ~(-44604i), 0i, func_2(vec3<bool>(arg_1, arg_0.b, false)).x), var_2.wxx), any(vec3<bool>(arg_0.c, !arg_1 & any(vec2<bool>(true, false)), arg_0.c)), !any(select(!vec3<bool>(true, arg_1, true), select(vec3<bool>(true, arg_0.c, false), vec3<bool>(true, arg_0.b, arg_1), arg_1), false && arg_0.b)));
    let var_4 = arg_0.a;
    return func_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(step(-847f, _wgslsmith_f_op_f32(-2077f + -211f))), ~(~var_0.b)), arg_0.b || !(-62118i == var_3.a.b.x), arg_0.c), Struct_2(var_4, all(vec3<bool>(true, any(vec2<bool>(arg_0.c, arg_1)), false)), var_3.b & var_3.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(25624i, ~(-1i), firstLeadingBit(var_4.b.x), ~var_4.b.x), -((vec4<i32>(18966i, 1i, var_3.a.b.x, 1i) | vec4<i32>(-2545i, 1i, 93i, var_4.b.x)) >> (vec4<u32>(91110u, var_1.x, 4294967295u, u_input.b) % vec4<u32>(32u))), vec4<i32>(-(1i >> (u_input.a % 32u)), var_0.b.x, _wgslsmith_sub_i32(firstLeadingBit(var_4.b.x), reverseBits(var_2.x)), ~(-11475i))), firstTrailingBit(arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, ~1u == u_input.a, true), vec4<bool>(true, true, true, true)));
    let var_1 = _wgslsmith_add_u32(max(u_input.b | ~41302u, u_input.d.x), ~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c, 4294967295u), _wgslsmith_add_u32(u_input.a, u_input.d.x))) & 1u;
    let var_2 = func_6(Struct_2(func_1(), var_0, var_0), true, func_2(!(!(!vec3<bool>(var_0, var_0, var_0)))), ~select(~firstLeadingBit(vec3<u32>(1u, 32880u, 5075u)), vec3<u32>(10581u, _wgslsmith_mod_u32(u_input.a, 5672u), ~var_1), true));
    let var_3 = func_4(Struct_2(var_2, var_2.a <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(346f)))), false), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-221f))), vec3<i32>(-var_2.b.x, max(var_2.b.x, var_2.b.x), func_2(vec3<bool>(false, var_0, true)).x)), var_0, all(vec4<bool>(var_0 & false, var_0, !var_0, true))), _wgslsmith_mod_vec4_i32(abs((vec4<i32>(var_2.b.x, -48813i, var_2.b.x, -2147483647i) & vec4<i32>(var_2.b.x, var_2.b.x, var_2.b.x, 1i)) << (reverseBits(u_input.d) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(~(-vec4<i32>(var_2.b.x, 7075i, -1i, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.b.x, 2147483647i, -2147483647i, var_2.b.x), vec4<i32>(var_2.b.x, var_2.b.x, -14601i, var_2.b.x)) | _wgslsmith_mult_vec4_i32(vec4<i32>(-35651i, var_2.b.x, var_2.b.x, 22751i), vec4<i32>(23175i, 2147483647i, -2147483647i, -2147483647i)))), abs(vec3<i32>(var_2.b.x, -15843i, var_2.b.x)));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a))))), var_2.b);
    var var_5 = vec3<i32>(var_3.b.x, var_2.b.x, max(-1i, ~(~(-1i))));
    var_4 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(var_4.a - var_3.a), countOneBits(var_4.b)), select(select(vec4<bool>(true, false, var_0, true), vec4<bool>(true, var_0, false, var_0), var_0), !vec4<bool>(var_0, var_0, var_0, false), !vec4<bool>(var_0, var_0, var_0, var_0)), var_1)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.a, -1315f, false)), _wgslsmith_f_op_f32(-var_4.a)) - _wgslsmith_f_op_f32(floor(var_2.a))))), var_4.b);
    var var_6 = vec3<f32>(func_6(Struct_2(func_4(Struct_2(var_2, true, var_0), Struct_2(var_3, false, true), -vec4<i32>(-33606i, -16250i, var_2.b.x, var_4.b.x), vec3<i32>(var_5.x, 64035i, var_4.b.x)), true, var_0), true, vec3<i32>(min(var_3.b.x, var_3.b.x) | 1i, func_2(!vec3<bool>(var_0, var_0, true)).x, ~_wgslsmith_sub_i32(-21154i, var_5.x)), min(_wgslsmith_mod_vec3_u32(u_input.d.yxx, u_input.d.xyz), firstTrailingBit(countOneBits(u_input.d.wxz)))).a, _wgslsmith_f_op_f32(var_4.a + _wgslsmith_f_op_f32(step(1233f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(497f + 217f), var_2.a)))), _wgslsmith_f_op_f32(-var_4.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(-var_4.b, _wgslsmith_mult_vec3_i32(var_4.b, ~vec3<i32>(0i, var_2.b.x, var_2.b.x))), ~var_3.b), 0u, u_input.d.wwz, min(var_5.zx, ~var_4.b.xz), 4294967295u);
}

