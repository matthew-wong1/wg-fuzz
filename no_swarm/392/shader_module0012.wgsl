struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: Struct_3,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: vec3<u32>) -> vec3<f32> {
    let var_0 = Struct_1(firstLeadingBit(4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-160f, 201f, -616f), vec3<f32>(657f, 236f, 366f), false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1169f, -762f, -142f)))))), max(vec2<u32>(u_input.a.x | arg_1.c, _wgslsmith_mult_u32(arg_1.c, u_input.a.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c, 29564u, 0u, 0u), vec4<u32>(u_input.a.x, 87768u, 4294967295u, 1727u)), select(arg_1.c, 0u, arg_1.a))) & vec2<u32>(arg_3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, arg_1.c, arg_1.c), vec3<u32>(u_input.a.x, u_input.a.x, 1u)) << (arg_3.x % 32u)), abs(~(arg_0 >> (arg_3.x % 32u)) ^ arg_1.d), vec4<u32>(arg_3.x & arg_3.x, arg_3.x, abs(~2345u), max(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, 35126u)), ~u_input.a), 15881u)));
    var var_1 = -reverseBits(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, var_0.d), _wgslsmith_sub_i32(arg_1.d, -9086i) << (47080u % 32u)));
    var_1 = -(~(-min(vec2<i32>(1i, 23108i), firstLeadingBit(vec2<i32>(0i, arg_0)))));
    var_1 = vec2<i32>(arg_0 & ~_wgslsmith_sub_i32(i32(-1i) * -1i, var_1.x ^ arg_0), arg_1.d);
    let var_2 = Struct_3(var_0, var_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.b.x)))) * var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), true)), _wgslsmith_div_f32(var_0.b.x, var_0.b.x), min(22675u, arg_1.c));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1034f, 465f, _wgslsmith_div_f32(var_0.b.x, -2487f))));
}

fn func_2() -> vec4<u32> {
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec2_i32(firstTrailingBit(abs(vec2<i32>(-1i, -1i))), _wgslsmith_add_vec2_i32(abs(vec2<i32>(-1i, 9041i)), vec2<i32>(2147483647i, 1i) << (u_input.a % vec2<u32>(32u))))) != max(-55958i, 0i);
    let var_1 = Struct_2(var_0, -(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(20897i, 25548i), vec2<i32>(-4082i, -1i)), max(-1i, -47031i))), Struct_1(~38251u, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mult_i32(~(-10431i), _wgslsmith_mult_i32(1i, -29153i)), Struct_4(var_0, !var_0, 4294967295u, -2147483647i, var_0), !vec3<bool>(false, var_0, true), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 0u, 0u), vec3<u32>(u_input.a.x, u_input.a.x, 43295u)))), ~reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x))), 30272i, abs(vec4<u32>(_wgslsmith_mult_u32(11695u, u_input.a.x), ~u_input.a.x, ~53607u, abs(u_input.a.x)))), Struct_1(firstTrailingBit(~u_input.a.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))), vec2<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x) & min(13782u, u_input.a.x), 0u), -6346i, _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(139812u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 0u, 6784u, 80033u)), ~vec4<u32>(13584u, 1u, 9682u, u_input.a.x)), ~vec4<u32>(u_input.a.x, 25752u, u_input.a.x, 0u))), select(select(true, true, true), false, false));
    var var_2 = Struct_2(14953i <= var_1.d.d, ~(-(~(-var_1.b))), Struct_1(_wgslsmith_add_u32(~(~var_1.c.e.x), firstTrailingBit(var_1.c.e.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(var_1.d.b)))), var_1.d.e.ww, var_1.c.d << (4294967295u % 32u), var_1.c.e), Struct_1(73478u, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.d.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -430f), 1053f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.b.x) - -1464f)), vec2<u32>(var_1.d.e.x & 1u, countOneBits(var_1.d.a)), -2147483647i, ~((vec4<u32>(71590u, var_1.d.a, u_input.a.x, 4294967295u) ^ vec4<u32>(1u, 4294967295u, var_1.c.a, 28253u)) ^ vec4<u32>(14899u, 6306u, u_input.a.x, u_input.a.x))), true);
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(16996i, var_2.d.d, _wgslsmith_mult_i32(16818i, var_2.c.d), var_2.b.x), abs(abs(select(-vec4<i32>(17139i, var_1.d.d, -11630i, 18097i), _wgslsmith_mult_vec4_i32(vec4<i32>(46463i, 2147483647i, 0i, var_1.c.d), vec4<i32>(0i, var_2.b.x, var_1.c.d, 1i)), false))));
    var_2 = Struct_2(select(!var_1.a, false, var_2.a), var_1.b, Struct_1(87851u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1319f, var_2.d.b.x, -944f) * _wgslsmith_f_op_vec3_f32(-var_1.c.b)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.d.b.x, var_2.d.b.x, 651f)))), vec2<u32>(_wgslsmith_mult_u32(var_1.d.e.x, u_input.a.x), 88021u) & ~select(var_1.c.c, var_1.c.c, vec2<bool>(var_1.e, true)), reverseBits(1i), ~(~vec4<u32>(var_2.d.a, var_1.c.c.x, 27010u, u_input.a.x))), Struct_1(min(u_input.a.x, ~(~var_2.d.c.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_1.d.b))), var_1.d.c, 1i, vec4<u32>(_wgslsmith_sub_u32(1u, select(40598u, 4294967295u, var_1.e)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.c.x, 44425u, var_2.d.e.x), var_2.d.e.wwy), var_1.c.c.x, var_1.d.c.x)), all(select(vec4<bool>(false, var_1.e | true, any(vec3<bool>(var_1.e, false, var_0)), true), !select(vec4<bool>(var_1.a, true, var_1.e, var_2.e), vec4<bool>(var_0, var_0, var_1.a, true), true), !select(vec4<bool>(var_1.a, var_2.e, var_2.a, var_0), vec4<bool>(true, var_2.e, var_2.a, true), vec4<bool>(true, var_2.e, false, var_0)))));
    return var_1.c.e;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_3.c.b), _wgslsmith_f_op_vec3_f32(-arg_3.c.b))) * vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(~arg_3.c.d, Struct_4(true, false, 24356u, -26682i, true), select(vec3<bool>(true, false, arg_3.e), vec3<bool>(true, false, true), vec3<bool>(false, arg_3.a, arg_1.e)), abs(arg_2.wyw))).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(-37129i, arg_1, vec3<bool>(false, arg_3.e, false), arg_3.d.e.zyw)).x)), _wgslsmith_f_op_f32(-arg_3.d.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_3.d.b * vec3<f32>(1033f, 1284f, 1196f)))) - arg_3.c.b)));
    return vec2<bool>(!all(!vec2<bool>(arg_3.e, false)) && (arg_3.a && any(select(vec2<bool>(arg_1.a, false), vec2<bool>(true, arg_3.a), vec2<bool>(arg_3.a, true)))), (true & (arg_3.c.b.x == arg_3.d.b.x)) | !arg_3.a);
}

fn func_1() -> Struct_1 {
    let var_0 = 8318u;
    var var_1 = func_4(~vec3<i32>(i32(-1i) * -40836i, select(-2147483647i, -24386i, false) ^ _wgslsmith_sub_i32(-12928i, -1i), 1i), Struct_4(true, true, u_input.a.x, ~34939i, true), func_2(), Struct_2(true, min(max(vec2<i32>(-9537i, 2147483647i), vec2<i32>(37922i, -24266i)) << (select(u_input.a, vec2<u32>(61569u, 4294967295u), vec2<bool>(false, true)) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(235i, 1i), vec2<i32>(-9334i, 4146i)), max(vec2<i32>(-1i, 104540i), vec2<i32>(-2147483647i, 1i)))), Struct_1(_wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, var_0), 56692u >> (var_0 % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(106f, 663f, 1023f)))), ~u_input.a, firstTrailingBit(abs(2147483647i)), _wgslsmith_sub_vec4_u32(vec4<u32>(9756u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(46929u, var_0, 7560u, 8366u)) ^ ~vec4<u32>(83675u, 74284u, 1u, 0u)), Struct_1(~(~4294967295u), vec3<f32>(258f, -415f, -1587f), vec2<u32>(41249u, _wgslsmith_div_u32(u_input.a.x, 0u)), _wgslsmith_mod_i32(abs(11152i), ~1i), vec4<u32>(_wgslsmith_add_u32(0u, 40182u), 0u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(3059u, 88330u, var_0, var_0), vec4<u32>(0u, var_0, var_0, 24878u)))), _wgslsmith_div_u32(~37845u, 3781u) > _wgslsmith_mod_u32(35263u, var_0)));
    let var_2 = 0i >> (~var_0 % 32u);
    var var_3 = ~firstLeadingBit(~(-vec2<i32>(-5647i, var_2)) ^ max(min(vec2<i32>(2147483647i, var_2), vec2<i32>(50066i, var_2)), vec2<i32>(-21427i, -1i)));
    let var_4 = _wgslsmith_div_i32(var_3.x, 1i);
    return Struct_1(max(~reverseBits(270u >> (var_0 % 32u)), 45494u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-471f, -218f, 264f))))), u_input.a, 1567i, ~vec4<u32>(countOneBits(~u_input.a.x), u_input.a.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(4294967295u, 1u)), u_input.a.x, ~var_0), 100463u));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_5) -> bool {
    var var_0 = arg_1;
    var_0 = arg_2.b;
    var_0 = arg_2.b;
    var_0 = Struct_2(!arg_2.e.b, vec2<i32>(_wgslsmith_mod_i32(var_0.b.x, min(-1i, ~65633i)), 27857i), Struct_1(firstTrailingBit(4394u), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(var_0.c.b, arg_1.c.b)), _wgslsmith_f_op_vec3_f32(floor(arg_1.d.b)))))), ~abs(abs(var_0.c.c)), -4661i, arg_1.d.e), func_1(), false);
    var var_1 = vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(-30773i, 18084i, -arg_1.d.d, -arg_2.e.d), min(vec4<i32>(arg_2.d.a.d, 10522i, var_0.c.d, var_0.c.d) << (var_0.c.e % vec4<u32>(32u)), ~vec4<i32>(898i, -9433i, 22453i, 9161i)));
    return any(select(arg_0, arg_0, func_4(-var_1.yyz, Struct_4(false, false, var_0.d.c.x, -52616i, arg_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.c.c.x, arg_2.b.c.e.x, var_0.c.c.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, 0u, 4294967295u)), Struct_2(true, vec2<i32>(-1i, 0i), arg_1.d, Struct_1(var_0.d.a, var_0.d.b, vec2<u32>(arg_2.e.c, var_0.d.a), -1i, vec4<u32>(75059u, 52086u, arg_2.d.b, arg_1.c.a)), true)).x)) && var_0.e;
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> f32 {
    let var_0 = arg_0.c.e.zzx;
    let var_1 = -26213i >> (1u % 32u);
    var var_2 = arg_0.c;
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_6(Struct_2(true, vec2<i32>(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(22170i, 1i), abs(vec2<i32>(20488i, 0i)))), Struct_1(4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(464f, 440f, 1000f) - vec3<f32>(1000f, 643f, -797f))), vec2<u32>(4294967295u, ~u_input.a.x), ~(6729i >> (u_input.a.x % 32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 8394u, 0u, u_input.a.x), vec4<u32>(18909u, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<u32>(4294967295u, 15485u, 0u, u_input.a.x))), Struct_1(~4294967295u, vec3<f32>(119f, _wgslsmith_f_op_f32(-870f - -1865f), _wgslsmith_f_op_f32(f32(-1f) * -445f)), _wgslsmith_mult_vec2_u32(u_input.a, u_input.a), reverseBits(countOneBits(1i)), vec4<u32>(61000u, 4294967295u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.a.x ^ u_input.a.x)), func_5(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_2(false, vec2<i32>(0i, -7870i), Struct_1(1u, vec3<f32>(-1086f, -2397f, -198f), vec2<u32>(14857u, 153858u), -2147483647i, vec4<u32>(19221u, 62466u, u_input.a.x, 0u)), func_1(), false), Struct_5(true, Struct_2(false, vec2<i32>(87138i, -47662i), Struct_1(38663u, vec3<f32>(-554f, 622f, -1134f), vec2<u32>(0u, u_input.a.x), -36212i, vec4<u32>(9911u, u_input.a.x, 37242u, 19423u)), Struct_1(u_input.a.x, vec3<f32>(207f, -212f, -1084f), vec2<u32>(u_input.a.x, u_input.a.x), 5321i, vec4<u32>(36425u, 25930u, 1u, u_input.a.x)), false), any(vec2<bool>(true, false)), Struct_3(Struct_1(1u, vec3<f32>(-679f, 1000f, -289f), vec2<u32>(u_input.a.x, 4294967295u), 13435i, vec4<u32>(u_input.a.x, 14030u, 1u, 0u)), u_input.a.x, 979f, 1000f, 12404u), Struct_4(false, true, 4294967295u, -39975i, false)))), all(func_4(countOneBits(firstLeadingBit(vec3<i32>(0i, 36476i, 2147483647i))), Struct_4(true, true, 0u, 1i, true), ~vec4<u32>(u_input.a.x, 11334u, 37799u, u_input.a.x) & ~vec4<u32>(49541u, 2577u, u_input.a.x, u_input.a.x), Struct_2(u_input.a.x > 0u, vec2<i32>(74296i, -2147483647i) << (u_input.a % vec2<u32>(32u)), func_1(), Struct_1(u_input.a.x, vec3<f32>(1868f, 868f, -1081f), vec2<u32>(u_input.a.x, u_input.a.x), -4677i, vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), all(vec3<bool>(true, true, true)))))));
    var var_1 = Struct_4(true, !(true & (func_4(vec3<i32>(2147483647i, -1i, -39449i), Struct_4(true, false, 58496u, -37953i, true), vec4<u32>(u_input.a.x, 1u, 101234u, 1u), Struct_2(false, vec2<i32>(-1i, -18886i), Struct_1(44156u, vec3<f32>(771f, 394f, 884f), u_input.a, 1i, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(u_input.a.x, vec3<f32>(661f, -660f, -128f), vec2<u32>(u_input.a.x, 44482u), 7184i, vec4<u32>(u_input.a.x, u_input.a.x, 109114u, u_input.a.x)), true)).x || any(vec2<bool>(true, false)))), u_input.a.x, -10081i, false);
    var_0 = -1854f;
    var var_2 = (_wgslsmith_div_i32(~1i, 11063i) == select(-_wgslsmith_mod_i32(var_1.d, var_1.d), countOneBits(_wgslsmith_mod_i32(-12106i, var_1.d)), !var_1.e)) | func_5(select(vec2<bool>(44878i < var_1.d, all(vec2<bool>(var_1.a, var_1.e))), vec2<bool>(all(vec4<bool>(var_1.e, false, true, var_1.b)), true), var_1.a), Struct_2((var_1.d ^ 10363i) != _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, var_1.d), vec3<i32>(var_1.d, var_1.d, 40498i)), vec2<i32>(max(49244i, -33677i), _wgslsmith_clamp_i32(11113i, 42458i, var_1.d)), func_1(), Struct_1(u_input.a.x, vec3<f32>(-250f, 604f, -215f), ~vec2<u32>(var_1.c, u_input.a.x), _wgslsmith_div_i32(-6903i, var_1.d), vec4<u32>(var_1.c, var_1.c, var_1.c, u_input.a.x) & vec4<u32>(u_input.a.x, 6977u, 0u, 0u)), false), Struct_5(true, Struct_2(true, ~vec2<i32>(var_1.d, -47312i), func_1(), Struct_1(14117u, vec3<f32>(-527f, 1139f, 880f), vec2<u32>(17455u, var_1.c), var_1.d, vec4<u32>(38862u, 29930u, u_input.a.x, 24187u)), var_1.e), var_1.a & true, Struct_3(Struct_1(0u, vec3<f32>(1023f, 519f, 111f), vec2<u32>(u_input.a.x, 0u), -2147483647i, vec4<u32>(0u, var_1.c, u_input.a.x, var_1.c)), max(2307u, var_1.c), _wgslsmith_f_op_f32(min(927f, -1156f)), _wgslsmith_f_op_f32(min(-768f, -629f)), ~u_input.a.x), Struct_4(var_1.e && var_1.a, all(vec3<bool>(var_1.a, true, var_1.e)), 1u, 10943i, !var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-674f, -484f), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(151f, 2031f, true)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f)))), -110f, _wgslsmith_f_op_f32(sign(1f))), -18337i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1433f, -183f, 2012f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(626f, 308f, 2736f) - vec3<f32>(-1222f, 383f, 624f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1124f, 1953f, 551f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1783f, -1503f, -1012f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(293f, -787f, 738f)))), vec3<f32>(-175f, -127f, 2129f))));
}

