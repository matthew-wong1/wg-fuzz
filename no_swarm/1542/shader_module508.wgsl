struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * -3476f))));
    var_0 = 196f;
    var_0 = -2055f;
    let var_1 = arg_1;
    var var_2 = !(_wgslsmith_f_op_f32(505f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(443f * arg_2))) > -1642f);
    return 4294967295u;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_2(vec4<i32>(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, abs(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-1i, u_input.a.x, arg_0)))), -977i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, u_input.a.x), u_input.a)), _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), reverseBits(arg_0)))), Struct_1(_wgslsmith_div_vec3_u32(~vec3<u32>(arg_2, 2967u, 0u), vec3<u32>(_wgslsmith_div_u32(82538u, u_input.b.x), abs(14084u), func_3(vec3<bool>(true, true, false), Struct_1(u_input.b.zxy), 264f)))), Struct_1(u_input.b.xxy), u_input.a.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 671f)));
    let var_1 = _wgslsmith_mod_i32(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(131i, -26379i, max(-2147483647i, 9773i) << (u_input.b.x % 32u), -1i), -(~countOneBits(var_0.a))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -207f) - _wgslsmith_f_op_f32(-var_0.e)))), var_0.e, _wgslsmith_div_f32(-318f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -987f) + arg_1))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1181f, _wgslsmith_f_op_f32(f32(-1f) * -1376f), _wgslsmith_f_op_f32(var_0.e + var_0.e), _wgslsmith_f_op_f32(f32(-1f) * -417f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(672f, var_0.e, var_0.e, arg_1), vec4<f32>(var_0.e, arg_1, -218f, -1000f), vec4<bool>(false, false, true, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1092f, -839f, -2396f, var_0.e), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, var_0.e, arg_1, var_0.e), vec4<f32>(2138f, 1251f, -485f, arg_1)))))));
    var var_3 = var_0.c;
    var_3 = var_0.c;
    return Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(84493u, 27878u, var_3.a.x), countOneBits(vec3<u32>(var_0.c.a.x, 3505u, 1u))), ~u_input.b.x, func_3(vec3<bool>(true, true, true), Struct_1(vec3<u32>(u_input.b.x, 1u, u_input.b.x)), arg_1)), select((vec3<u32>(46895u, 0u, 0u) << (vec3<u32>(52567u, u_input.b.x, arg_2) % vec3<u32>(32u))) ^ ~var_0.b.a, var_3.a, vec3<bool>(1u > u_input.b.x, true, true))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> vec4<i32> {
    var var_0 = ~(reverseBits(min(arg_1.b.a.zy, vec2<u32>(arg_0.a.x, 24566u)) >> (~vec2<u32>(arg_0.a.x, 0u) % vec2<u32>(32u))) | vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(49986u, 0u, 0u, arg_1.c.a.x), vec4<u32>(arg_1.c.a.x, 88972u, 4294967295u, arg_1.b.a.x)), ~u_input.b), 4294967295u));
    let var_1 = ~(~abs(_wgslsmith_sub_u32(func_3(vec3<bool>(false, false, false), Struct_1(vec3<u32>(13807u, 33593u, arg_1.b.a.x)), arg_1.e), 1604u)));
    var var_2 = func_2(arg_2, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-878f)), arg_1.e) - arg_1.e), var_1);
    var var_3 = vec3<bool>(all(select(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), all(vec3<bool>(false, true, true))), vec3<bool>(-238f != arg_1.e, any(vec4<bool>(true, true, true, false)), 1u < u_input.b.x), true)), _wgslsmith_f_op_f32(arg_1.e + _wgslsmith_div_f32(-575f, _wgslsmith_f_op_f32(-arg_1.e))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.e - _wgslsmith_f_op_f32(round(-179f))))), all(vec4<bool>(true, true, true, true)));
    var_0 = arg_0.a.xz;
    return countOneBits(vec4<i32>(-3546i, _wgslsmith_add_i32(min(~(-3337i), arg_1.d.x), _wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -71624i, 54570i), vec3<i32>(u_input.a.x, arg_2, 0i)))), _wgslsmith_mult_i32(-(~0i), arg_2), ~(~_wgslsmith_dot_vec3_i32(arg_1.a.zwy, arg_1.a.xyw))));
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    var var_0 = Struct_2(func_4(func_2(-u_input.a.x, -253f, 1u), Struct_2(-_wgslsmith_clamp_vec4_i32(vec4<i32>(19829i, -33657i, u_input.a.x, -45720i), vec4<i32>(u_input.a.x, -7688i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -42767i, u_input.a.x, u_input.a.x)), Struct_1(vec3<u32>(1u, u_input.b.x, 1u)), func_2(i32(-1i) * -2147483647i, -594f, abs(37934u)), u_input.a.xx, -487f), u_input.a.x), Struct_1(u_input.b.zww), func_2(_wgslsmith_clamp_i32(5745i, abs(-u_input.a.x), -3913i), _wgslsmith_f_op_f32(-878f * -132f), arg_0.x), reverseBits(~(vec2<i32>(73765i, -2147483647i) << ((vec2<u32>(0u, u_input.b.x) ^ arg_0) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -866f), _wgslsmith_f_op_f32(-1308f + -1287f))))));
    var_0 = Struct_2(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(~var_0.a, var_0.a), countOneBits(max(vec4<i32>(-31402i, u_input.a.x, 10459i, u_input.a.x), var_0.a)), _wgslsmith_mult_vec4_i32(var_0.a, vec4<i32>(u_input.a.x, var_0.a.x, u_input.a.x, var_0.a.x)) >> (abs(vec4<u32>(57727u, arg_0.x, 5186u, arg_0.x)) % vec4<u32>(32u))), max(~(-vec4<i32>(22888i, 21000i, var_0.d.x, u_input.a.x)), countOneBits(vec4<i32>(u_input.a.x, -24354i, u_input.a.x, u_input.a.x))), _wgslsmith_add_vec4_i32(firstLeadingBit(abs(vec4<i32>(-1i, -27626i, -23737i, u_input.a.x))), _wgslsmith_clamp_vec4_i32(abs(var_0.a), vec4<i32>(1071i, var_0.d.x, 18379i, var_0.d.x), vec4<i32>(var_0.d.x, 23390i, 13175i, u_input.a.x)))), func_2(1i, -575f, ~0u), Struct_1(vec3<u32>(select(arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, var_0.b.a.x, 1u), u_input.b), true), arg_0.x, 33632u)), -var_0.d, var_0.e);
    let var_1 = _wgslsmith_div_i32(-min(~u_input.a.x, -1127i), reverseBits(min(-7663i, ~var_0.a.x))) & var_0.d.x;
    var var_2 = vec3<u32>(~var_0.b.a.x, ~_wgslsmith_dot_vec3_u32(var_0.c.a, var_0.c.a), _wgslsmith_mult_u32(var_0.c.a.x, 1u) << (min(var_0.b.a.x << (countOneBits(23858u) % 32u), 4294967295u) % 32u));
    let var_3 = func_2(min(max(-u_input.a.x, var_0.a.x), -var_1), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0.e, var_0.e)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e, 516f)), 260f, true)))), min(~_wgslsmith_clamp_u32(~0u, u_input.b.x ^ 1u, u_input.b.x), abs(func_2(7540i, -1000f, _wgslsmith_div_u32(var_0.c.a.x, u_input.b.x)).a.x)));
    return _wgslsmith_f_op_f32(-var_0.e);
}

fn func_5(arg_0: vec4<f32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))));
    let var_1 = Struct_2(vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, i32(-1i) * -3108i), u_input.a), _wgslsmith_clamp_i32(35207i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-25684i, 1i), u_input.a.zy), 26379i >> (1u % 32u)), u_input.a.x ^ select(func_4(Struct_1(vec3<u32>(arg_2, 26898u, arg_2)), Struct_2(vec4<i32>(29251i, 0i, u_input.a.x, 2147483647i), Struct_1(vec3<u32>(106791u, u_input.b.x, 1u)), Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec2<i32>(u_input.a.x, u_input.a.x), arg_1), u_input.a.x).x, -u_input.a.x, true)), func_2(~1i, _wgslsmith_f_op_f32(f32(-1f) * -116f), ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(34333u, arg_2, 4294967295u), ~u_input.b.x)), func_2(~_wgslsmith_div_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 1u, 78913u), u_input.b.xww) << (~vec3<u32>(42716u, u_input.b.x, 0u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_2, arg_2) >> (u_input.b.wyy % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(u_input.b.x, 794u, arg_2))))), u_input.a.zz, 149f);
    let var_2 = u_input.a.x >> (_wgslsmith_sub_u32(0u, u_input.b.x) % 32u);
    var var_3 = var_1.b.a.x;
    var var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(-var_1.d.x), -select(-39332i, var_1.d.x, true)) & _wgslsmith_add_vec2_i32(u_input.a.yy, var_1.a.xz), abs(-u_input.a.xz));
    return Struct_1(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~u_input.b.wzz, ~var_1.b.a), var_1.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = Struct_1(~_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(1u, u_input.b.x, u_input.b.x)), u_input.b.yzx, _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, 31730u), u_input.b.zwy), vec3<u32>(58509u, u_input.b.x, 24136u))));
    let var_2 = func_5(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(187f, _wgslsmith_f_op_f32(func_1(u_input.b.xw)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1745f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) * 936f)), vec4<f32>(_wgslsmith_f_op_f32(func_1(u_input.b.zx)), _wgslsmith_f_op_f32(select(350f, -764f, true)), var_0, _wgslsmith_div_f32(-804f, _wgslsmith_f_op_f32(1163f * var_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))), select(_wgslsmith_mult_u32(var_1.a.x, 23129u), ~(~44110u | var_1.a.x), true));
    var var_3 = Struct_2(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(20373i), u_input.a.x, _wgslsmith_mult_i32(1i, -2468i), ~(-8785i)), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, 8169i, 6750i)), firstLeadingBit(vec4<i32>(1i, -200i, u_input.a.x, u_input.a.x))))), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1196f, 1055f, 485f, var_0)))), 653f, u_input.b.x), var_1, vec2<i32>(~u_input.a.x ^ u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(-var_0));
    var var_4 = u_input.a.x;
    let var_5 = all(vec2<bool>(any(vec2<bool>(true, true)) && all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), select(var_0 >= _wgslsmith_f_op_f32(var_0 * 864f), all(vec2<bool>(true, true)), all(vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.e, var_3.e, var_3.e, var_3.e), vec4<f32>(var_0, 715f, var_0, -1364f))))))))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_3.c.a.x, var_1.a.x), u_input.b.x), ~var_3.b.a.x >> (28319u % 32u), _wgslsmith_mult_u32(33514u, 2720u), _wgslsmith_mult_u32(var_2.a.x, _wgslsmith_div_u32(1u, 36636u))), u_input.b), -967f, min(vec3<i32>(0i, _wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(var_3.d.x, -28739i)), max(-35483i, var_3.a.x)) | reverseBits(~u_input.a), u_input.a), 1000f);
}

