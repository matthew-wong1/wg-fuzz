struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    var var_0 = max(max(~(~55442u), _wgslsmith_div_u32(~0u, select(16031u, 4294967295u, false))) & 1u, ~12475u);
    let var_1 = any(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    let var_2 = true;
    var var_3 = Struct_3(u_input.c.x, Struct_2(_wgslsmith_div_u32(31722u, 13849u) >> (1u % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-264f, -1824f, -279f) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-221f, 675f, 836f), vec3<f32>(-556f, -790f, -1726f))))), u_input.a.xz, vec2<bool>(false, true), vec4<f32>(_wgslsmith_f_op_f32(-521f - -2495f), 172f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -421f))), 570f)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-924f + 1856f), _wgslsmith_f_op_f32(abs(-258f)), _wgslsmith_f_op_f32(ceil(-911f)), 926f) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1709f), _wgslsmith_f_op_f32(-1217f + -1000f), _wgslsmith_f_op_f32(sign(1972f)), -968f)), !(!vec2<bool>(var_1, var_1)), ~vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(~0u, countOneBits(27532u), 1u)), 1i));
    var_3 = Struct_3(79256i << (0u % 32u), Struct_2(~1u, vec3<f32>(var_3.c.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1827f), var_3.c.a.x), -570f), ~_wgslsmith_div_vec2_i32(u_input.d, vec2<i32>(0i, var_3.a)) >> (abs(var_3.c.d.zz) % vec2<u32>(32u)), vec2<bool>(any(select(var_3.b.d, var_3.c.b, var_3.c.b)), true), vec4<f32>(316f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.b.b.x))), _wgslsmith_f_op_f32(-1158f - var_3.b.e.x), 453f)), Struct_1(var_3.b.e, !vec2<bool>(false, var_3.c.b.x & var_3.c.b.x), var_3.c.d, _wgslsmith_add_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_3.b.a, var_3.c.c.x), var_3.c.d)), abs(select(vec3<u32>(var_3.c.d.x, 4294967295u, var_3.c.c.x), vec3<u32>(1u, 1u, var_3.c.c.x), false))), ~(var_3.c.e | -26139i) >> (~(~1u) % 32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1037f, var_3.b.e.x) - var_3.c.a.x);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(u_input.b, Struct_2(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 20843u, 2883u), ~vec3<u32>(0u, 4294967295u, 47296u)), abs(_wgslsmith_add_u32(1u, 7760u))), vec3<f32>(-844f, -1000f, _wgslsmith_f_op_f32(-559f + -2096f)), u_input.d, vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-316f, _wgslsmith_f_op_f32(step(1211f, 624f)), _wgslsmith_f_op_f32(270f + -793f), _wgslsmith_f_op_f32(func_3(u_input.c))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-423f, -838f, -585f, 532f))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(446f, 1000f, 498f, 620f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1353f, -2245f, 347f, 1202f))))), vec2<bool>(true, true), reverseBits(vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u), select(2147483647i, firstTrailingBit(~u_input.b), true)));
    var var_1 = firstLeadingBit(vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 6003i, var_0.b.c.x, u_input.b)) & u_input.b), var_0.c.e));
    let var_2 = var_0.b;
    var var_3 = Struct_2(var_0.c.d.x, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec3<i32>(var_0.a, var_2.c.x, -51589i) & u_input.a.yzy)))), _wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.e.x)))), var_2.b.x), vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_2.c.x, 2147483647i) ^ u_input.c, vec3<i32>(var_0.c.e, var_2.c.x, 28178i)), reverseBits(_wgslsmith_add_i32(var_2.c.x, var_0.b.c.x))), vec2<bool>(!(!var_2.d.x), true), var_2.e);
    var var_4 = Struct_2(~0u, var_3.e.yyx, ~abs(vec2<i32>(-1i) * -vec2<i32>(var_3.c.x, var_2.c.x)), select(select(select(var_2.d, !vec2<bool>(var_3.d.x, var_0.b.d.x), vec2<bool>(false, false)), select(vec2<bool>(var_3.d.x, var_2.d.x), !vec2<bool>(var_3.d.x, false), true), select(!vec2<bool>(var_3.d.x, var_2.d.x), !var_3.d, !var_3.d)), var_2.d, var_0.c.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -234f), _wgslsmith_f_op_f32(floor(var_3.e.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(238f, -1001f)))), 1f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-300f, var_2.e.x, 243f, var_0.c.a.x))))));
    return Struct_2(~select(_wgslsmith_add_u32(~1587u, countOneBits(var_2.a)), ~var_0.c.c.x | (var_3.a ^ 1u), true), _wgslsmith_f_op_vec3_f32(step(var_4.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.e.x, -1816f)), _wgslsmith_f_op_f32(max(-578f, -1594f)), _wgslsmith_div_f32(-860f, _wgslsmith_f_op_f32(floor(622f)))))), vec2<i32>(firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_2.c, var_2.c), 0i)), -1i), !(!select(select(var_4.d, var_3.d, var_3.d), var_0.b.d, true)), _wgslsmith_f_op_vec4_f32(var_3.e + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) * _wgslsmith_f_op_f32(-1617f + var_2.e.x)), _wgslsmith_div_f32(1225f, -1745f), var_3.b.x, _wgslsmith_f_op_f32(603f * var_0.b.e.x))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_3 {
    return Struct_3(_wgslsmith_clamp_i32(u_input.b, countOneBits(func_2().c.x), max(-1i << (~arg_1.a % 32u), ~_wgslsmith_mult_i32(u_input.d.x, arg_1.c.x))), func_2(), Struct_1(arg_1.e, !vec2<bool>(false, all(arg_1.d)), abs(vec3<u32>(_wgslsmith_sub_u32(arg_1.a, arg_1.a), _wgslsmith_sub_u32(arg_1.a, 45091u), countOneBits(36548u))), reverseBits(vec3<u32>(arg_1.a, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, 15065u, 1u), vec3<u32>(arg_1.a, 57780u, arg_1.a)))), ~(firstTrailingBit(6459i) << (min(29428u, 0u) % 32u))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    let var_0 = arg_0.b.e.x;
    var var_1 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), arg_0.b.b.x) <= arg_1.e.x);
    var var_2 = arg_0.c;
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - arg_0.b.b.x)))), arg_1.e.x, 1238f, 1070f), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(857f, var_2.a.x, arg_0.b.e.x, var_0))))), arg_1).c.b, _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(27494u, var_2.d.x), _wgslsmith_div_u32(var_2.c.x, arg_1.a), ~arg_1.a), 0u, ~arg_0.c.d.x), vec3<u32>(0u, 4294967295u, countOneBits(64933u))), countOneBits(arg_0.c.d), arg_0.c.e >> (reverseBits(abs(52541u << (1u % 32u))) % 32u));
    let var_4 = arg_0.c;
    return arg_1.e.x;
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: u32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-403f, 322f)) + vec2<f32>(-1514f, _wgslsmith_f_op_f32(step(1265f, arg_0)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(688f, 1000f))));
    let var_1 = 446f;
    var var_2 = func_4(func_2().e, func_4(vec4<f32>(_wgslsmith_f_op_f32(min(var_0.x, -1000f)), arg_0, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -2116f))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(896f, var_1, 714f, 1063f))) - vec4<f32>(var_0.x, arg_0, 447f, 863f)), func_2()).b).b);
    var_2 = Struct_3(var_2.b.c.x, var_2.b, func_4(_wgslsmith_f_op_vec4_f32(-var_2.b.e), var_2.b).c);
    let var_3 = Struct_1(var_2.b.e, !var_2.b.d, _wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(arg_1, arg_2, arg_1), _wgslsmith_mod_vec3_u32(vec3<u32>(41191u, arg_2, arg_1), var_2.c.c)), var_2.c.d), func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1208f, -588f, 2346f, arg_0), var_2.b.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b.e - vec4<f32>(var_0.x, 478f, arg_0, var_0.x))), vec4<bool>(true, false, any(vec4<bool>(false, var_2.c.b.x, var_2.c.b.x, false)), true))), var_2.b).c.c, abs(-_wgslsmith_clamp_i32(~u_input.a.x, ~u_input.d.x, 2147483647i)));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.b.x, _wgslsmith_f_op_f32(var_3.a.x + 982f), _wgslsmith_f_op_f32(func_3(vec3<i32>(0i, -2147483647i, -44440i))), _wgslsmith_f_op_f32(f32(-1f) * -930f)) - vec4<f32>(_wgslsmith_f_op_f32(-var_1), -214f, var_3.a.x, 1416f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_2.b.e - vec4<f32>(var_0.x, -1512f, -143f, var_3.a.x)), _wgslsmith_f_op_vec4_f32(var_2.c.a + vec4<f32>(646f, 867f, -610f, -559f)), var_3.b.x))), _wgslsmith_f_op_vec4_f32(select(var_3.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.c.a + var_3.a)))), true))));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0.e.x, arg_0.e.x, arg_0.b.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-914f, arg_0.e.x, 1054f, 980f) - vec4<f32>(arg_0.b.x, arg_0.e.x, 378f, 1000f))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, arg_0.b.x, -1579f, arg_0.b.x) * vec4<f32>(-1552f, arg_0.b.x, -248f, -246f))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0.e, vec4<f32>(-3174f, -854f, arg_0.e.x, -252f), vec4<bool>(false, arg_0.d.x, false, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1106f, -1425f, arg_0.e.x, arg_0.b.x) * vec4<f32>(arg_0.e.x, -671f, -229f, 631f)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_6(_wgslsmith_f_op_f32(func_5(func_4(vec4<f32>(var_0.x, -273f, var_0.x, -851f), func_2()), Struct_2(~0u, _wgslsmith_f_op_vec3_f32(-arg_0.b), ~vec2<i32>(2147483647i, 470i), arg_0.d, _wgslsmith_div_vec4_f32(arg_0.e, vec4<f32>(776f, arg_0.e.x, -1860f, arg_0.e.x))))), ~(~arg_0.a), _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(77712u, 33889u, arg_0.a), vec3<u32>(arg_0.a, arg_0.a, 10887u)), 41925u))), arg_0.d, ~(~(vec3<u32>(4294967295u, arg_0.a, arg_0.a) ^ vec3<u32>(1u, 1u, arg_0.a))) & ~vec3<u32>(~42963u, 43246u, ~arg_0.a), select(select(~(~vec3<u32>(24309u, 8696u, arg_0.a)), ~reverseBits(vec3<u32>(3594u, arg_0.a, 4294967295u)), false), ~(~vec3<u32>(arg_0.a, 73675u, arg_0.a)), false), arg_0.c.x);
    let var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(~(countOneBits(vec3<u32>(var_1.d.x, var_1.c.x, arg_0.a)) | (var_1.c << (vec3<u32>(1u, var_1.c.x, 88237u) % vec3<u32>(32u)))), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(var_1.d, var_1.d), vec3<u32>(61020u, arg_0.a, 78089u)), var_1.c)), max(44453u, _wgslsmith_dot_vec2_u32(vec2<u32>(49109u, _wgslsmith_mult_u32(1u, 1u)), _wgslsmith_mult_vec2_u32(var_1.c.yy << (var_1.d.xx % vec2<u32>(32u)), vec2<u32>(var_1.c.x, 4294967295u) >> (var_1.c.yy % vec2<u32>(32u))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.e), var_1.b, (~(~var_1.c) << (abs(~vec3<u32>(var_1.d.x, 15168u, 36437u)) % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(~(~vec3<u32>(0u, 44747u, var_2.x)), vec3<u32>(1u, 46760u, ~0u)) % vec3<u32>(32u)), var_1.c, max(max(~0i, 2210i), -36006i) & (i32(-1i) * -_wgslsmith_clamp_i32(-2147483647i, -12263i, arg_0.c.x)));
    var var_3 = ~4294967295u;
    return func_4(var_1.a, arg_0).b;
}

fn func_7(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = select(!vec4<bool>(false, func_1(Struct_2(35742u, vec3<f32>(arg_0.b.x, arg_1.x, -667f), u_input.d, vec2<bool>(arg_0.d.x, arg_0.d.x), arg_0.e)).d.x, arg_0.d.x, arg_2.x), select(!vec4<bool>(arg_0.d.x, 298f < arg_0.b.x, arg_0.d.x, true), !(!select(vec4<bool>(false, true, false, arg_0.d.x), vec4<bool>(true, arg_2.x, true, arg_0.d.x), vec4<bool>(false, false, arg_2.x, true))), select(vec4<bool>(true, func_4(arg_0.e, arg_0).c.b.x, arg_2.x, false), !(!vec4<bool>(true, false, arg_0.d.x, arg_0.d.x)), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, arg_2.x, true), vec4<bool>(false, arg_0.d.x, arg_2.x, false)))), arg_2.x);
    let var_1 = Struct_3(_wgslsmith_sub_i32(u_input.b, func_2().c.x), arg_0, func_4(_wgslsmith_f_op_vec4_f32(-arg_0.e), arg_0).c);
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_6(_wgslsmith_f_op_f32(arg_1.x * -390f), var_1.c.c.x, abs(_wgslsmith_add_u32(86661u, 0u)))).x, _wgslsmith_f_op_f32(abs(-1126f)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(round(arg_0.e)), var_1.b).c.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -239f), func_1(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_3.x, 1308f))), arg_0).b).d, var_1.c.d, firstTrailingBit(~select(vec3<u32>(var_1.b.a, 90426u, 36402u), min(var_1.c.d, vec3<u32>(var_1.c.d.x, arg_0.a, 1u)), select(var_0.zwy, var_0.wzz, arg_2.x))), ~reverseBits(max(u_input.b, -var_1.a)));
    var_2 = var_1.c;
    var_2 = Struct_1(var_1.b.e, vec2<bool>(var_0.x, true), func_4(var_2.a, Struct_2(1u, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -559f), -2453f, func_4(var_2.a, arg_0).c.a.x), ~vec2<i32>(-10653i, u_input.a.x), select(!vec2<bool>(arg_0.d.x, var_2.b.x), !vec2<bool>(var_0.x, arg_0.d.x), arg_0.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1458f, -1271f, arg_1.x, var_1.c.a.x))))).c.c, vec3<u32>(1u, reverseBits(arg_0.a), abs(48520u) & _wgslsmith_add_u32(~var_2.d.x, arg_0.a)), ~1832i);
    return func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.c.a.x, arg_0.b.x, var_1.c.a.x, arg_1.x), arg_0.e)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, 639f, -1285f, arg_1.x) - arg_0.e))), var_2.a, select(select(!var_0, var_0, var_0), vec4<bool>(all(vec4<bool>(true, var_1.b.d.x, true, arg_0.d.x)), false, false, !arg_2.x), !var_0))), func_4(vec4<f32>(arg_1.x, 465f, _wgslsmith_f_op_f32(exp2(func_4(var_1.c.a, Struct_2(2524u, vec3<f32>(-1120f, arg_1.x, 726f), var_1.b.c, vec2<bool>(var_2.b.x, true), var_2.a)).c.a.x)), 472f), var_1.b).b).c;
}

fn func_8(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, _wgslsmith_div_f32(arg_1.a.x, 106f), arg_1.a.x, arg_1.a.x)) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, -683f, arg_1.a.x, -1000f), vec4<f32>(-568f, arg_1.a.x, arg_1.a.x, -1356f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -535f, 881f, arg_1.a.x)))), func_1(Struct_2(_wgslsmith_add_u32(arg_1.c.x, arg_1.d.x) ^ min(arg_1.c.x, 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.a.x, -1278f, 454f))) - _wgslsmith_f_op_vec3_f32(-arg_1.a.xzz)), u_input.d, func_4(_wgslsmith_f_op_vec4_f32(-arg_1.a), func_1(Struct_2(arg_1.d.x, vec3<f32>(1119f, arg_1.a.x, -404f), u_input.a.yz, vec2<bool>(arg_1.b.x, true), arg_1.a))).c.b, vec4<f32>(-444f, 1f, _wgslsmith_f_op_f32(1837f * -852f), _wgslsmith_f_op_f32(trunc(-298f))))).d, arg_1.c, ~vec3<u32>(func_1(Struct_2(18066u, vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec2<i32>(2996i, 2147483647i), vec2<bool>(true, arg_1.b.x), arg_1.a)).a, arg_1.c.x, arg_1.c.x) ^ (countOneBits(firstTrailingBit(vec3<u32>(arg_1.d.x, arg_1.c.x, 17617u))) & arg_1.c), u_input.a.x);
    var var_1 = var_0.b.x;
    var var_2 = _wgslsmith_dot_vec2_u32(arg_1.c.zy, ~abs(arg_1.d.xy));
    let var_3 = ~(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, arg_1.a.x, var_0.a.x, var_0.a.x)), func_4(arg_1.a, func_1(Struct_2(arg_1.d.x, vec3<f32>(var_0.a.x, var_0.a.x, arg_1.a.x), vec2<i32>(var_0.e, arg_1.e), vec2<bool>(var_0.b.x, true), vec4<f32>(123f, 1000f, arg_1.a.x, var_0.a.x)))).b).b.c.x & var_0.e);
    var_1 = !func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-414f, arg_1.a.x, -1017f, arg_1.a.x)), func_4(arg_1.a, Struct_2(0u, vec3<f32>(var_0.a.x, arg_1.a.x, -1386f), vec2<i32>(20535i, 22810i), var_0.b, arg_1.a)).b).b.d.x & false;
    return Struct_1(arg_1.a, !(!vec2<bool>(!var_0.b.x, select(arg_1.b.x, arg_1.b.x, arg_1.b.x))), vec3<u32>(~_wgslsmith_mult_u32(var_0.c.x, _wgslsmith_mult_u32(67708u, arg_1.c.x)), arg_1.d.x, var_0.c.x), vec3<u32>(arg_1.c.x, var_0.c.x, 0u), func_1(func_2()).c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(vec2<i32>(-10435i, u_input.a.x), func_7(func_1(Struct_2(_wgslsmith_div_u32(1u, 1u), vec3<f32>(1f, 1f, 1f), vec2<i32>(u_input.a.x, 2147483647i), vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(793f, -893f, -229f, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1426f, -802f, -790f) + vec3<f32>(-500f, 1088f, -351f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(955f, 1891f, -1000f)))), !vec3<bool>(func_4(vec4<f32>(663f, 1075f, -391f, -1125f), Struct_2(1u, vec3<f32>(-274f, 377f, 139f), vec2<i32>(-7267i, 4833i), vec2<bool>(false, false), vec4<f32>(-404f, -1827f, 735f, -221f))).c.b.x, all(vec4<bool>(false, true, true, true)), func_1(Struct_2(61849u, vec3<f32>(498f, -1153f, 1214f), u_input.a.yx, vec2<bool>(true, true), vec4<f32>(530f, 373f, -834f, -1879f))).d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(225f, 350f, 1597f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1795f, 182f, -1000f), vec3<f32>(-247f, -719f, 1332f)))))));
    var var_1 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1597f, 1007f, var_0.a.x, 322f)), _wgslsmith_f_op_vec4_f32(-var_0.a)), vec4<f32>(_wgslsmith_f_op_f32(max(1000f, var_0.a.x)), _wgslsmith_div_f32(var_0.a.x, 446f), var_0.a.x, _wgslsmith_f_op_f32(ceil(-559f)))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), _wgslsmith_f_op_f32(1092f + var_0.a.x)), var_0.a)), func_4(var_0.a, Struct_2(firstLeadingBit(4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.xzw)), u_input.c.zx, func_2().d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)))).b);
    let var_2 = _wgslsmith_clamp_i32(-2147483647i, 1i, u_input.d.x);
    var var_3 = var_1.c;
    var var_4 = _wgslsmith_div_vec2_i32(~vec2<i32>(-(-1i & var_3.e), var_3.e), vec2<i32>(var_0.e, _wgslsmith_add_i32(-(~var_3.e), -32717i)));
    var_3 = func_4(_wgslsmith_f_op_vec4_f32(-var_3.a), Struct_2(var_1.c.d.x, _wgslsmith_f_op_vec4_f32(func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.e.x * var_1.c.a.x) + _wgslsmith_f_op_f32(-var_0.a.x)), ~func_4(vec4<f32>(2298f, var_1.b.e.x, -384f, 518f), var_1.b).c.d.x, 40281u)).wyw, var_1.b.c, func_1(var_1.b).d, var_1.c.a)).c;
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -981f));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

