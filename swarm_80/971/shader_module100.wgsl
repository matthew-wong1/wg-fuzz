struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1347f, 1000f, 792f))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(1000f, 144f), _wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(-292f + 1000f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1111f, 1405f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_0.x)))) - _wgslsmith_f_op_vec2_f32(max(var_0.zz, vec2<f32>(var_0.x, _wgslsmith_f_op_f32(max(-1000f, var_0.x)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(var_0.x)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yy), var_0.yy)));
    var var_2 = 40650u;
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.xx + var_0.zx) - vec2<f32>(1f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(step(var_1.x, var_0.x))))), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), _wgslsmith_f_op_vec2_f32(-var_0.yx))));
    var var_4 = Struct_3(Struct_2(Struct_1(~(~vec4<u32>(3138u, u_input.b, 0u, u_input.b))), ~(~(vec2<u32>(20785u, 105339u) >> (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u)))), Struct_1(firstTrailingBit(~vec4<u32>(8315u, u_input.b, u_input.b, 1u))), vec4<bool>(true, all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), max(0u, 4294967295u) < u_input.b), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, -466f))), _wgslsmith_f_op_f32(-1952f + _wgslsmith_f_op_f32(step(545f, -386f))), _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-662f - 1747f))), Struct_2(Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 12755u, u_input.b), vec4<u32>(81039u, 1u, u_input.b, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 76925u, u_input.b, u_input.b), vec4<u32>(u_input.b, 0u, 25005u, u_input.b)))), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b, 2444u), countOneBits(vec2<u32>(9949u, u_input.b)), ~vec2<u32>(u_input.b, 4294967295u)), Struct_1(vec4<u32>(0u, _wgslsmith_sub_u32(u_input.b, 76225u), ~26918u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 28568u), vec4<u32>(80455u, u_input.b, 1u, 3767u)))), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), u_input.b < 11769u), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1542f, 1041f, -514f, 1179f) * vec4<f32>(-481f, var_1.x, var_1.x, var_0.x)))))), reverseBits(vec4<u32>(_wgslsmith_mod_u32(u_input.b, 4294967295u), 4294967295u, u_input.b, _wgslsmith_clamp_u32(u_input.b, 22983u, firstTrailingBit(47175u)))));
    return 16726u ^ _wgslsmith_mod_u32(u_input.b, countOneBits(_wgslsmith_add_u32(max(24893u, var_4.a.a.a.x), 1u)));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(Struct_1(vec4<u32>(1u, 1u, 4294967295u, ~(u_input.b & 26609u))), -46413i >> (~(35220u ^ u_input.b) % 32u), -9165i);
    var var_1 = Struct_4(var_0.a, var_0.b, -var_0.c);
    var_1 = Struct_4(Struct_1(var_1.a.a), u_input.c, var_0.c >> (~func_3(vec4<i32>(var_0.b, -1i, -13990i, 27086i) & vec4<i32>(var_0.b, -23276i, -60141i, u_input.a)) % 32u));
    var_0 = Struct_4(Struct_1(var_1.a.a), _wgslsmith_dot_vec2_i32(max(select(min(vec2<i32>(-2147483647i, -1i), vec2<i32>(57555i, var_0.b)), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.c, -1i), vec2<i32>(2147483647i, u_input.c)), vec2<bool>(false, true)), _wgslsmith_sub_vec2_i32(~vec2<i32>(var_0.b, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, var_0.b), vec2<i32>(-1i, -8445i), vec2<i32>(2147483647i, var_1.c)))), vec2<i32>(firstTrailingBit(-1i), max(_wgslsmith_mult_i32(var_0.b, var_0.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-33569i, -2147483647i), vec2<i32>(-1i, u_input.a))))), abs(_wgslsmith_mod_i32(1i, ~var_0.c)));
    var_0 = Struct_4(Struct_1(vec4<u32>(1u, abs(func_3(vec4<i32>(2147483647i, 1i, 19097i, 2147483647i))), var_0.a.a.x, _wgslsmith_div_u32(var_0.a.a.x, ~u_input.b))), ~(_wgslsmith_sub_i32(u_input.c & -12456i, i32(-1i) * -1781i) | firstLeadingBit(1i)), -select(-2147483647i, firstTrailingBit(1i), any(vec3<bool>(true, true, true))));
    return Struct_4(var_1.a, _wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, -2147483647i, var_1.b, 2776i), vec4<i32>(var_0.c, var_0.c, u_input.c, var_0.b)), _wgslsmith_sub_i32(-(~var_1.c), 2147483647i)), 1i);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_u32(arg_1.a.a, arg_1.a.a)) >> (~vec4<u32>(4294967295u, 1u, 47803u, 13315u) % vec4<u32>(32u))), vec2<u32>(u_input.b, ~func_2().a.a.x & u_input.b), Struct_1(vec4<u32>(~_wgslsmith_add_u32(u_input.b, arg_1.a.a.x), firstLeadingBit(_wgslsmith_mult_u32(arg_1.a.a.x, arg_1.a.a.x)), reverseBits(0u), _wgslsmith_mult_u32(u_input.b, min(arg_1.a.a.x, u_input.b)))), vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, false), false)) | all(vec3<bool>(true, true, true)), true, false, all(vec2<bool>(select(false, true, true), true))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_0), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) * _wgslsmith_f_op_f32(arg_0.x + -665f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(384f - arg_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1366f))), 364f))));
    var_0 = Struct_2(Struct_1(arg_1.a.a), arg_1.a.a.wx, func_2().a, var_0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e), vec4<f32>(2497f, _wgslsmith_f_op_f32(-arg_0.x), var_0.e.x, arg_0.x))));
    let var_1 = !var_0.d.x;
    var_0 = Struct_2(arg_1.a, var_0.c.a.zz, func_2().a, var_0.d, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.e))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(var_0.e, arg_0), vec4<f32>(arg_0.x, 2682f, var_0.e.x, -1824f)))))));
    var var_2 = _wgslsmith_dot_vec4_u32(abs(var_0.a.a), ~max(func_2().a.a, var_0.a.a));
    return arg_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> bool {
    var var_0 = Struct_3(Struct_2(arg_0, ~vec2<u32>(arg_1.c.x, ~1u), func_2().a, arg_1.a.d, arg_1.b.e), arg_1.a, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-253f, _wgslsmith_f_op_f32(ceil(1192f)), _wgslsmith_f_op_f32(round(1060f)), _wgslsmith_f_op_f32(535f + -171f)) - arg_1.b.e), func_2()).a);
    var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(countOneBits(var_0.a.c.a), ~var_0.b.a.a)), func_4(var_0.b.e, Struct_4(func_2().a, -16196i, _wgslsmith_clamp_i32(u_input.c, u_input.a, -1i))).a.xx, arg_0, !var_0.a.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_1.b.e)))), var_0.b, countOneBits(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(21882u, 4294967295u, arg_1.c.x, 1u)), vec4<u32>(4294967295u, u_input.b >> (var_0.a.c.a.x % 32u), arg_0.a.x, var_0.c.x << (1690u % 32u)))));
    var var_1 = abs(-2147483647i);
    var var_2 = _wgslsmith_f_op_f32(max(1313f, arg_1.b.e.x));
    var_2 = _wgslsmith_f_op_f32(-var_0.a.e.x);
    return true;
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: i32, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-688f, 1921f, 1638f, arg_1)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-699f, -701f, arg_1, -412f))), Struct_4(func_2().a, u_input.c, arg_2 >> (74809u % 32u))), _wgslsmith_sub_vec2_u32(~firstLeadingBit(arg_3), arg_3), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1066f, arg_1, 1000f, 860f)), Struct_4(Struct_1(vec4<u32>(arg_0, 1u, u_input.b, 21284u)), u_input.c, -arg_2)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)), select(true, true, false)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 1785f, arg_1, -170f), vec4<f32>(arg_1, arg_1, arg_1, 460f)))), Struct_2(func_2().a, select(firstLeadingBit(vec2<u32>(arg_3.x, arg_0)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_3.x), vec2<u32>(u_input.b, arg_0)), _wgslsmith_mod_u32(arg_3.x, 4294967295u)), vec2<bool>(true, true)), func_2().a, select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(4294967295u > arg_0, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_1, -649f, 679f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, 565f, arg_1, -410f))))))), select(vec4<u32>(~countOneBits(67677u), ~u_input.b, select(arg_3.x, 41698u, false) & arg_3.x, 68660u), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(123f, arg_1, -505f, arg_1) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1399f, arg_1, arg_1, arg_1))), func_2()).a, true));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -529f);
    var var_2 = 2147483647i;
    let var_3 = var_0.b;
    return Struct_1(~countOneBits(vec4<u32>(var_0.a.a.a.x, ~arg_3.x, _wgslsmith_add_u32(0u, u_input.b), ~126183u)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    var var_0 = func_6(firstTrailingBit(~1u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(852f - 637f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-167f, -489f)))))), select(firstLeadingBit(min(_wgslsmith_mod_i32(-1i, 108631i), countOneBits(u_input.a))), 56299i, func_5(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1083f, -544f, 1000f, -3031f)), func_2()), Struct_3(Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 2066u, arg_0.x)), arg_0.xy, Struct_1(vec4<u32>(4294967295u, 21745u, u_input.b, 1u)), vec4<bool>(true, false, false, true), vec4<f32>(197f, 1085f, 641f, 984f)), Struct_2(Struct_1(vec4<u32>(63427u, arg_0.x, 54491u, arg_0.x)), arg_0.yz, Struct_1(vec4<u32>(23786u, 46434u, arg_0.x, 4294967295u)), vec4<bool>(true, true, true, false), vec4<f32>(580f, 612f, -1220f, -1661f)), ~vec4<u32>(arg_0.x, arg_0.x, 14575u, 1u)), false)), arg_0.xy);
    var_0 = func_6(~(~4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-152f, -455f) * _wgslsmith_f_op_f32(f32(-1f) * -225f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1788f, 538f) + _wgslsmith_f_op_f32(-573f - 2348f)))), ~_wgslsmith_mult_i32(max(u_input.c, u_input.a) | u_input.c, -15347i), func_4(vec4<f32>(-337f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(ceil(-120f)))), _wgslsmith_f_op_f32(-3106f - _wgslsmith_f_op_f32(f32(-1f) * -405f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1013f))), func_2()).a.zy);
    let var_1 = !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(308f + 485f) * _wgslsmith_f_op_f32(step(551f, -580f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(496f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = Struct_1(~(~(vec4<u32>(arg_0.x, arg_0.x, 4952u, 0u) & func_4(vec4<f32>(346f, 431f, 968f, 1000f), Struct_4(Struct_1(var_0.a), 1i, u_input.a)).a)));
    var_0 = Struct_1(~vec4<u32>(arg_0.x ^ func_6(85812u, 976f, 0i, var_0.a.wx).a.x, 1u, ~func_2().a.a.x, 1u));
    return func_2();
}

fn func_7(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: Struct_2) -> i32 {
    var var_0 = func_2();
    let var_1 = -_wgslsmith_dot_vec4_i32(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.b, 33968i, -35964i, var_0.c), vec4<i32>(15123i, 0i, arg_1.x, 2147483647i))), ~_wgslsmith_mod_vec4_i32(-vec4<i32>(-2147483647i, var_0.b, arg_2.b, var_0.b), abs(vec4<i32>(u_input.c, 1723i, var_0.c, 26113i))));
    var var_2 = arg_3.e.x;
    let var_3 = vec3<i32>(-arg_1.x, ~var_0.b, var_0.c & arg_1.x) >> (arg_3.a.a.xxw % vec3<u32>(32u));
    let var_4 = _wgslsmith_div_f32(arg_3.e.x, _wgslsmith_f_op_f32(step(arg_3.e.x, _wgslsmith_f_op_f32(ceil(1f)))));
    return -((arg_1.x << (arg_0 % 32u)) << (_wgslsmith_mod_u32(73507u, firstLeadingBit(arg_3.b.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = Struct_1(~(~vec4<u32>(_wgslsmith_add_u32(1u, 0u), u_input.b, 46915u | u_input.b, u_input.b << (u_input.b % 32u))));
    let var_2 = vec4<i32>(u_input.a, -((u_input.c | ~2147483647i) << (~var_1.a.x % 32u)), max(func_7(abs(var_1.a.x), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, u_input.c)), ~u_input.a), func_1(var_1.a.www), Struct_2(func_6(31603u, 542f, u_input.a, var_1.a.wz), ~vec2<u32>(u_input.b, u_input.b), func_2().a, vec4<bool>(false, false, false, false), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-399f, 225f, 2553f, 666f), vec4<f32>(1782f, 202f, 2152f, 1064f), true)))), 40069i), u_input.a);
    var var_3 = var_1.a.wzz | var_1.a.wzw;
    var var_4 = func_2();
    var var_5 = var_4.a.a.ww;
    let var_6 = Struct_3(Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(var_4.a.a, ~vec4<u32>(var_5.x, 4294967295u, 62226u, u_input.b))), var_3.yx, func_1(reverseBits(vec3<u32>(var_4.a.a.x, 123611u, var_1.a.x))).a, select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), false), vec4<bool>(true, func_5(Struct_1(var_1.a), Struct_3(Struct_2(Struct_1(vec4<u32>(24707u, var_4.a.a.x, 1u, u_input.b)), var_1.a.yx, Struct_1(var_1.a), vec4<bool>(true, true, true, true), vec4<f32>(-1000f, 835f, -1009f, 1023f)), Struct_2(Struct_1(var_1.a), var_1.a.xy, Struct_1(vec4<u32>(0u, u_input.b, var_4.a.a.x, var_4.a.a.x)), vec4<bool>(true, false, true, true), vec4<f32>(1205f, -471f, -1236f, 257f)), vec4<u32>(var_1.a.x, 72921u, 79127u, 110842u)), true), true, any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1100f, 577f, -1032f, -229f), vec4<f32>(578f, -841f, 1177f, 283f), vec4<bool>(true, false, false, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 453f, -704f, -1570f)), vec4<bool>(true, false, false, true))))), Struct_2(Struct_1(vec4<u32>(87u, firstTrailingBit(0u), _wgslsmith_div_u32(var_5.x, var_3.x), var_4.a.a.x)), func_1(reverseBits(var_1.a.yzw >> (vec3<u32>(var_3.x, 19759u, 0u) % vec3<u32>(32u)))).a.a.wx, Struct_1(vec4<u32>(var_1.a.x, ~var_5.x, var_3.x, var_3.x)), vec4<bool>(false, true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-453f, 1694f, -244f, -971f), vec4<f32>(1521f, 1346f, -1642f, 435f))))), vec4<u32>(var_4.a.a.x, var_3.x << (~var_5.x % 32u), max(func_6(abs(14659u), _wgslsmith_f_op_f32(sign(145f)), ~23636i, min(var_3.yy, vec2<u32>(4294967295u, var_3.x))).a.x, ~u_input.b << ((22948u >> (var_4.a.a.x % 32u)) % 32u)), abs(~(~4294967295u))));
    var var_7 = var_6.a.d.xzy;
    let var_8 = Struct_3(var_6.a, var_6.a, vec4<u32>(var_4.a.a.x, 15422u, u_input.b, 5141u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-_wgslsmith_add_i32(~u_input.c, 2147483647i), u_input.c & -2147483647i), var_8.a.e.zxx);
}

