struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: Struct_3,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 12021u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec2<i32>) -> u32 {
    let var_0 = Struct_5(~(i32(-1i) * -50571i) << (~u_input.b.x % 32u), _wgslsmith_div_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(arg_1.x, u_input.b.x, 8200u, u_input.b.x)), firstTrailingBit(~vec4<u32>(arg_0.b.x, 1u, 54262u, arg_1.x)))), arg_0, vec4<f32>(_wgslsmith_f_op_f32(1382f * _wgslsmith_f_op_f32(arg_0.a.e.d + _wgslsmith_f_op_f32(round(131f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.c.d, arg_0.a.a.d), -577f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a.b.x, arg_0.a.d.d))), -1221f), vec3<f32>(_wgslsmith_div_f32(-583f, _wgslsmith_f_op_f32(abs(113f))), arg_0.c.d, _wgslsmith_f_op_f32(sign(329f))));
    global0 = 26814u;
    global0 = 0u;
    global0 = 22043u;
    global0 = 37529u ^ _wgslsmith_clamp_u32(0u, arg_1.x ^ 54537u, arg_1.x);
    return var_0.b;
}

fn func_2() -> Struct_2 {
    global0 = reverseBits(max(func_3(Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 85076u), vec4<i32>(u_input.a, 48809i, 17461i, u_input.c), -19494i, 2433f), vec3<f32>(485f, 555f, 1044f), vec3<f32>(111f, 241f, 161f), Struct_1(u_input.b, vec4<i32>(u_input.a, u_input.a, u_input.c, -22597i), u_input.c, -529f), Struct_1(u_input.b, vec4<i32>(-23893i, u_input.a, u_input.a, u_input.a), u_input.c, 1912f)), vec3<u32>(0u, u_input.b.x, u_input.b.x), Struct_1(vec2<u32>(u_input.b.x, 4294967295u), vec4<i32>(8878i, -2147483647i, 0i, u_input.a), u_input.a, -108f), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.c, u_input.c, 1i), vec4<i32>(2147483647i, -1159i, 0i, u_input.c)), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, 14359u)) ^ select(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b, true), vec2<i32>(43580i, 53921i) >> (min(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b) % vec2<u32>(32u))), 0u));
    var var_0 = vec4<i32>(-(~min(-1i, -2147483647i)), u_input.a, -1i, reverseBits(firstLeadingBit(u_input.a)));
    let var_1 = ~vec4<i32>(u_input.c, abs(-firstTrailingBit(17682i)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(~var_0.x, _wgslsmith_mult_i32(u_input.a, var_0.x)), -31755i), u_input.a);
    let var_2 = Struct_3(Struct_2(Struct_1(u_input.b, vec4<i32>(1i, reverseBits(u_input.c), 11634i, 10033i), -var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(213f, 1000f)) - _wgslsmith_f_op_f32(trunc(-1126f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1516f + 925f), _wgslsmith_f_op_f32(-817f + -114f), _wgslsmith_f_op_f32(f32(-1f) * -1244f)), vec3<f32>(-179f, _wgslsmith_f_op_f32(max(138f, 501f)), -1215f), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1528f, -447f)), vec3<f32>(1f, 1f, 1f), vec3<bool>(true, true, true)))), Struct_1(vec2<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x)), vec4<i32>(-1i, ~28840i, u_input.a, var_0.x), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-401f)))), Struct_1(~(vec2<u32>(27327u, 55766u) | u_input.b), vec4<i32>(var_1.x, firstLeadingBit(0i), var_0.x, ~(-2147483647i)), _wgslsmith_clamp_i32(var_1.x, 2147483647i, -1i), _wgslsmith_f_op_f32(trunc(1950f)))), ~_wgslsmith_mult_vec3_u32(~(vec3<u32>(u_input.b.x, u_input.b.x, 92505u) | vec3<u32>(4294967295u, 1u, u_input.b.x)), vec3<u32>(~u_input.b.x, u_input.b.x >> (33204u % 32u), u_input.b.x << (22436u % 32u))), Struct_1(_wgslsmith_div_vec2_u32(u_input.b, u_input.b), ~(~vec4<i32>(u_input.c, 4694i, var_1.x, u_input.c) >> (vec4<u32>(u_input.b.x, 77117u, 1959u, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_mod_i32(-1i, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1580f * -330f))), vec4<i32>(_wgslsmith_clamp_i32(~(~1i), ~0i, u_input.a), reverseBits(u_input.c) ^ 7751i, -37159i, _wgslsmith_dot_vec3_i32(firstTrailingBit(-var_1.zxw), vec3<i32>(_wgslsmith_div_i32(9236i, var_1.x), var_1.x & -1i, ~var_1.x))), ~countOneBits(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(43344u, 1u, 14631u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 0u, u_input.b.x)) % vec3<u32>(32u))));
    global0 = _wgslsmith_clamp_u32(func_3(Struct_3(Struct_2(Struct_1(vec2<u32>(17435u, 4294967295u), var_1, 1i, var_2.c.d), var_2.a.c, _wgslsmith_f_op_vec3_f32(floor(var_2.a.c)), var_2.c, Struct_1(vec2<u32>(39714u, 28986u), var_1, var_1.x, 795f)), _wgslsmith_div_vec3_u32(var_2.e, var_2.b), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.b, u_input.b), var_1, i32(-1i) * -80006i, var_2.c.d), var_1, var_2.e), ~vec2<u32>(1u | var_2.c.a.x, 78672u << (u_input.b.x % 32u)), countOneBits(-var_2.d.wz)), var_2.c.a.x, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(~(~u_input.b.x), reverseBits(_wgslsmith_div_u32(var_2.a.d.a.x, 4294967295u)))));
    return Struct_2(var_2.c, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.a.e.d, -151f, -535f), vec3<f32>(var_2.c.d, var_2.c.d, 1880f), vec3<bool>(false, true, false))), var_2.a.b) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.a.d, -182f, var_2.c.d), var_2.a.b) * var_2.a.b)))), _wgslsmith_f_op_vec3_f32(select(var_2.a.c, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.d, 2015f, 1201f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_2.a.c, vec3<f32>(1688f, -730f, var_2.a.d.d), vec3<bool>(false, false, false))) * _wgslsmith_f_op_vec3_f32(-var_2.a.c)))), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), -17628i > var_1.x), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))))), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(12954u, 105730u), max(4294967295u, u_input.b.x)), countOneBits(var_2.e.zy)), vec4<i32>(1i ^ firstLeadingBit(var_1.x), countOneBits(0i) & _wgslsmith_dot_vec3_i32(var_0.zwx, var_0.xxw), var_1.x << (var_2.c.a.x % 32u), var_0.x), reverseBits(_wgslsmith_mod_i32(0i, var_0.x)) ^ ~(~var_0.x), var_2.c.d), Struct_1(vec2<u32>(1u, ~_wgslsmith_clamp_u32(var_2.c.a.x, 46108u, 41593u)), (vec4<i32>(var_0.x, 2147483647i, -2147483647i, var_0.x) | _wgslsmith_div_vec4_i32(vec4<i32>(11075i, var_1.x, var_2.a.a.c, var_0.x), var_2.a.e.b)) & -vec4<i32>(u_input.a, var_2.c.b.x, var_0.x, -8725i), max(i32(-1i) * -21043i, ~29282i) & firstLeadingBit(abs(var_0.x)), -294f));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_5 {
    global0 = ~1u;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - func_2().d.d);
    global0 = ~u_input.b.x;
    let var_1 = 1u;
    global0 = ~32060u;
    return Struct_5(min(reverseBits(-102i), u_input.c), 33234u, Struct_3(Struct_2(Struct_1(vec2<u32>(var_1, var_1), ~arg_1.e.b, u_input.a, _wgslsmith_f_op_f32(-arg_1.e.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.b - arg_1.c)), vec3<f32>(var_0, var_0, func_2().c.x), func_2().e, func_2().d), _wgslsmith_add_vec3_u32(vec3<u32>(abs(31496u), ~var_1, _wgslsmith_sub_u32(39844u, u_input.b.x)), vec3<u32>(arg_1.a.a.x, var_1, var_1)), Struct_1(min(vec2<u32>(55542u, arg_1.d.a.x), vec2<u32>(u_input.b.x, var_1)), arg_1.d.b, min(31163i, _wgslsmith_mod_i32(2147483647i, u_input.a)), 275f), abs(select(vec4<i32>(arg_1.d.c, 2147483647i, -2147483647i, -2147483647i) >> (vec4<u32>(89042u, arg_1.d.a.x, 1u, arg_1.d.a.x) % vec4<u32>(32u)), vec4<i32>(u_input.a, arg_1.a.c, arg_1.e.c, u_input.a), select(vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, true, false)))), _wgslsmith_mult_vec3_u32(firstTrailingBit(~vec3<u32>(arg_1.d.a.x, u_input.b.x, 3730u)), ~vec3<u32>(14553u, u_input.b.x, arg_1.e.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.e.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.b.x, var_0, true)), 608f), -1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1000f, var_0, false)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.c + arg_1.c)))))));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_2 {
    return Struct_2(arg_0.c.a.d, func_2().c, vec3<f32>(1991f, arg_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(129f, -1749f)))), func_4(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true & (arg_1.x <= u_input.c)), Struct_2(Struct_1(vec2<u32>(arg_0.b, arg_0.b) | vec2<u32>(368u, 0u), vec4<i32>(arg_1.x, u_input.c, -1i, 1i), ~arg_2.c, _wgslsmith_f_op_f32(478f + arg_0.c.a.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_0.c.a.c)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d, arg_2.d, 528f))), arg_0.d.xxw, arg_2, arg_0.c.a.a)).c.c, Struct_1(vec2<u32>(1u, 1u), vec4<i32>(-(i32(-1i) * -27120i), ~_wgslsmith_add_i32(-11733i, 57573i), _wgslsmith_add_i32(arg_0.c.a.e.c >> (3732u % 32u), firstLeadingBit(-1i)), i32(-1i) * -1549i), -(~_wgslsmith_mod_i32(arg_2.c, arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(897f, 1000f) * arg_0.e.x)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(330f, 986f, -290f, 869f) - vec4<f32>(-637f, -856f, -730f, 1140f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-449f, -1682f, -917f, -1181f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1558f, -1146f, 332f, -1874f))), vec4<f32>(-2387f, -1364f, 219f, -653f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(173f, -1664f, 537f, 1280f) + vec4<f32>(-1000f, 549f, -2668f, -1124f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-187f, -184f, -640f, -211f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1277f, -166f, 1186f, 1074f)), vec4<f32>(-159f, -491f, -459f, 195f)))));
    var var_1 = vec3<i32>(abs(-1i), u_input.a, abs(abs(~firstTrailingBit(2147483647i))));
    var var_2 = _wgslsmith_f_op_f32(abs(var_0.x));
    let var_3 = vec2<i32>(min(arg_1.x, u_input.a), _wgslsmith_sub_i32(-var_1.x, arg_0.x & max(var_1.x, arg_0.x))) & arg_1.zy;
    var var_4 = func_5(func_4(vec3<bool>(true, true, true), func_2()), -((vec4<i32>(-2147483647i, -56850i, arg_0.x, -16058i) | countOneBits(vec4<i32>(-66627i, 1i, -2147483647i, -17448i))) << (vec4<u32>(abs(u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, arg_2.x), func_3(Struct_3(Struct_2(Struct_1(vec2<u32>(1u, 1454u), vec4<i32>(arg_1.x, u_input.c, 24738i, var_1.x), -7889i, var_0.x), var_0.zyy, vec3<f32>(-495f, -1565f, -380f), Struct_1(u_input.b, vec4<i32>(arg_1.x, 34185i, var_1.x, 27966i), var_1.x, var_0.x), Struct_1(u_input.b, vec4<i32>(2147483647i, var_3.x, arg_0.x, var_3.x), 23993i, 1000f)), vec3<u32>(arg_2.x, u_input.b.x, u_input.b.x), Struct_1(u_input.b, vec4<i32>(arg_0.x, 0i, var_1.x, var_3.x), u_input.c, -655f), vec4<i32>(1i, 10362i, var_1.x, 47411i), arg_2), vec2<u32>(arg_2.x, 1u), var_3), 0u) % vec4<u32>(32u))), func_2().d);
    return var_1.x;
}

fn func_6(arg_0: i32, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = select(select(!vec4<bool>(true, true, false, u_input.a > u_input.a), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(vec3<bool>(false, true, true))), select(vec4<bool>(~1u >= select(u_input.b.x, 4294967295u, true), true, true, -u_input.c < 28125i), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, -756f < arg_1.x, all(vec3<bool>(true, false, false)), true)), !any(vec3<bool>(false, true, false))), !((abs(u_input.b.x) | _wgslsmith_mod_u32(0u, 4294967295u)) == u_input.b.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x)))))) - arg_1.x);
    let var_2 = select(var_0.zwz, vec3<bool>(var_0.x, false | (true && any(vec3<bool>(var_0.x, true, var_0.x))), true | var_0.x), !(!var_0.xyw));
    let var_3 = Struct_4(vec3<bool>(all(var_2.zx), true, all(!(!vec2<bool>(var_2.x, var_2.x)))), func_5(Struct_5(_wgslsmith_clamp_i32(_wgslsmith_div_i32(14499i, 33493i), min(-2147483647i, arg_0), u_input.a), ~1u, func_4(var_2, func_5(Struct_5(-10455i, u_input.b.x, Struct_3(Struct_2(Struct_1(u_input.b, vec4<i32>(u_input.c, -1800i, -1i, -1i), u_input.a, -462f), vec3<f32>(-252f, -432f, arg_1.x), vec3<f32>(arg_1.x, arg_1.x, 133f), Struct_1(vec2<u32>(u_input.b.x, 4294967295u), vec4<i32>(arg_0, 1i, -1i, u_input.a), -2147483647i, arg_1.x), Struct_1(u_input.b, vec4<i32>(14170i, arg_0, 19971i, u_input.c), arg_0, 557f)), vec3<u32>(u_input.b.x, u_input.b.x, 22731u), Struct_1(vec2<u32>(4294967295u, u_input.b.x), vec4<i32>(-6727i, -32509i, 9626i, -1i), u_input.a, arg_1.x), vec4<i32>(u_input.a, arg_0, 1i, -33938i), vec3<u32>(u_input.b.x, 40902u, 31885u)), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec3<f32>(arg_1.x, -188f, -1000f)), vec4<i32>(-1i, arg_0, 0i, u_input.c), Struct_1(u_input.b, vec4<i32>(1i, arg_0, 0i, u_input.c), 24196i, arg_1.x))).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, arg_1.x, -1026f, 261f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -557f, arg_1.x) * vec3<f32>(arg_1.x, -1096f, 390f)) - vec3<f32>(603f, arg_1.x, arg_1.x))), vec4<i32>(abs(21463i), -1i, abs(reverseBits(arg_0)), 29288i), Struct_1(vec2<u32>(54772u, 1u), -(vec4<i32>(-10711i, u_input.c, -777i, u_input.a) >> (vec4<u32>(u_input.b.x, 1u, 0u, u_input.b.x) % vec4<u32>(32u))), 9390i, 1562f)));
    var_1 = _wgslsmith_f_op_f32(arg_1.x - arg_1.x);
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec3<bool>(true, true, true), func_6(_wgslsmith_clamp_i32(u_input.c, -func_1(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(-2147483647i, 1i, u_input.c), vec3<u32>(29848u, 4294967295u, u_input.b.x)), _wgslsmith_div_i32(select(u_input.a, u_input.c, true), -21313i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1415f, -598f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(241f, 166f))) * _wgslsmith_f_op_vec2_f32(round(func_2().b.xz)))));
    global0 = 43420u;
    var var_1 = Struct_3(var_0.b, ~(~(~(~vec3<u32>(26979u, 52353u, var_0.b.d.a.x)))), var_0.b.d, countOneBits(~vec4<i32>(var_0.b.d.c, abs(var_0.b.d.c), -19524i, ~var_0.b.e.b.x)), firstLeadingBit(vec3<u32>(reverseBits(var_0.b.a.a.x) >> (_wgslsmith_div_u32(4294967295u, 41782u) % 32u), ~1u, 4294967295u)));
    global0 = _wgslsmith_mod_u32(u_input.b.x, func_6(-u_input.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1366f, -1768f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.b.c.zz))))).d.a.x);
    global0 = ~215u;
    let var_2 = var_1.b;
    var var_3 = vec3<bool>(!var_0.a.x, true, !all(!var_0.a.yy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(14649i, var_1.c.b.x), var_0.b.e.a ^ var_1.e.yx);
}

