struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_5(Struct_1(u_input.a.x));
    let var_1 = u_input.a;
    return Struct_1(45895u);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = ~(~countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), vec3<u32>(arg_1.a, 1u, u_input.a.x))));
    var_0 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a.x, arg_1.a)), vec2<u32>(firstLeadingBit(arg_1.a), u_input.a.x)), u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(-arg_0);
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_div_u32(reverseBits(47972u), 18087u), 92650u);
    var_0 = ~0u;
    return Struct_3(vec2<i32>(1i, -20328i), 88880u, false);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    var var_0 = -_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(arg_2.a.x, arg_2.a.x, arg_2.a.x) << (vec3<u32>(arg_2.b, u_input.a.x, 32359u) % vec3<u32>(32u))), abs(vec3<i32>(-2147483647i, 1i, arg_2.a.x))), ~max(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_2.a.x, arg_2.a.x), vec3<i32>(arg_2.a.x, arg_2.a.x, arg_2.a.x)), reverseBits(vec3<i32>(arg_2.a.x, arg_2.a.x, 44148i))));
    let var_1 = abs(-firstLeadingBit(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(arg_2.a.x, -75095i, arg_2.a.x, -2147483647i)), ~vec4<i32>(-33480i, arg_2.a.x, arg_2.a.x, arg_2.a.x))));
    let var_2 = Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-228f + _wgslsmith_f_op_f32(arg_1 + 251f)), _wgslsmith_f_op_f32(round(arg_1)), 835f, _wgslsmith_f_op_f32(round(arg_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), -106f, arg_1) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-823f, arg_1, 334f, 714f) * vec4<f32>(arg_1, arg_1, arg_1, -406f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, -1654f, arg_1, -1549f), vec4<f32>(-1000f, -1715f, arg_1, -507f), arg_0))), vec4<f32>(2167f, _wgslsmith_f_op_f32(max(-1884f, arg_1)), _wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(-290f + arg_1)), select(vec4<bool>(arg_0, false, true, true), select(vec4<bool>(false, false, arg_2.c, arg_2.c), vec4<bool>(arg_2.c, true, arg_2.c, false), true), -420f != arg_1)))), _wgslsmith_mult_vec4_i32(-vec4<i32>(arg_2.a.x, -1i, var_1.x, var_1.x) ^ (var_1 ^ var_1), (_wgslsmith_add_vec4_i32(var_1, var_1) & max(var_1, var_1)) >> (select(~vec4<u32>(u_input.a.x, arg_2.b, arg_2.b, 0u), u_input.a, select(vec4<bool>(false, arg_0, true, true), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(false, false, true, false))) % vec4<u32>(32u))), arg_2, func_3(arg_1, func_2()));
    var var_3 = var_2.e.a;
    var_0 = var_1.x;
    return Struct_1(arg_2.b);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3, arg_3: bool) -> Struct_4 {
    let var_0 = Struct_2(arg_1.e.c, firstTrailingBit(arg_1.c.zyw), -(~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a.x, 39846i, -1i, 28048i), _wgslsmith_add_vec4_i32(arg_1.c, vec4<i32>(-20304i, 47871i, arg_1.c.x, -2147483647i)))));
    var var_1 = arg_1.d.b & ~reverseBits(15457u);
    let var_2 = (_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0.b.x, abs(var_0.b.x), -52897i), ~(arg_2.a.x | arg_2.a.x)) >= 1i) | all(vec4<bool>(all(vec4<bool>(arg_3, false, false, true)), false, func_3(288f, Struct_1(4294967295u)).c && false, true));
    var_1 = ~u_input.a.x;
    let var_3 = u_input.a;
    return Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.x * -901f), -1536f, 221f, -1226f)), _wgslsmith_f_op_vec4_f32(arg_1.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.b.x), arg_1.a))), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(arg_1.c.x, -arg_2.a.x, _wgslsmith_sub_i32(arg_2.a.x, arg_2.a.x), arg_1.e.a.x)), arg_1.c, arg_1.c), Struct_3(-(~arg_2.a), var_3.x, true | all(vec3<bool>(true, arg_3, arg_3))), arg_2);
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = func_5(func_4(all(vec4<bool>(true, !arg_0, all(vec2<bool>(arg_0, arg_0)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -305f) - _wgslsmith_f_op_f32(1671f - 1256f)) * 1f), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1153f - 673f) - -767f), func_2())), Struct_4(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * -221f))), 906f, 655f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1663f + -1522f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(397f, _wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_f32(-521f + -1261f), 827f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-435f, -1866f, 1612f, -262f), vec4<f32>(2017f, -892f, -1560f, -1864f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1502f, -1000f, 3156f, -159f))))), !all(vec2<bool>(false, false)))), firstTrailingBit(firstTrailingBit(vec4<i32>(-1i, arg_1.x, -1i, -2147483647i)) | vec4<i32>(7151i, 14861i, 9120i, arg_1.x)), func_3(_wgslsmith_f_op_f32(179f + _wgslsmith_f_op_f32(step(-487f, 450f))), Struct_1(_wgslsmith_div_u32(u_input.a.x, 6795u))), Struct_3(vec2<i32>(_wgslsmith_add_i32(arg_1.x, arg_1.x), ~arg_1.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 21377u), u_input.a.xy), !arg_0 | (arg_0 && true))), func_3(860f, Struct_1(_wgslsmith_clamp_u32(1u, ~u_input.a.x, 8828u))), arg_0);
    var var_1 = func_5(func_2(), func_5(func_2(), Struct_4(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(step(var_0.a.x, var_0.b.x)), _wgslsmith_div_f32(var_0.b.x, var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1498f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), _wgslsmith_mod_vec4_i32(-vec4<i32>(0i, arg_1.x, 9661i, arg_1.x), reverseBits(var_0.c)), Struct_3(var_0.d.a, var_0.d.b, var_0.d.c), func_5(func_4(false, var_0.a.x, var_0.d), Struct_4(vec4<f32>(-558f, -816f, -1305f, var_0.b.x), var_0.b, vec4<i32>(arg_1.x, var_0.d.a.x, arg_1.x, -1i), Struct_3(var_0.c.ww, var_0.d.b, false), Struct_3(arg_1, 9083u, true)), var_0.d, all(vec2<bool>(arg_0, false))).e), Struct_3(vec2<i32>(~1i, -1i), 0u & firstTrailingBit(34656u), true & arg_0), true), Struct_3(func_5(Struct_1(_wgslsmith_div_u32(u_input.a.x, 52237u)), Struct_4(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.x, var_0.a.x, var_0.b.x, var_0.b.x))), _wgslsmith_div_vec4_f32(vec4<f32>(1930f, -286f, -552f, var_0.a.x), vec4<f32>(var_0.b.x, -1013f, var_0.b.x, 718f)), -var_0.c, Struct_3(var_0.c.xz, 75862u, var_0.d.c), func_5(Struct_1(var_0.d.b), Struct_4(vec4<f32>(var_0.b.x, var_0.b.x, -357f, var_0.b.x), var_0.a, vec4<i32>(arg_1.x, -2147483647i, 7739i, var_0.e.a.x), var_0.e, var_0.d), var_0.d, arg_0).e), func_3(_wgslsmith_f_op_f32(1151f * var_0.b.x), Struct_1(var_0.d.b)), func_3(_wgslsmith_f_op_f32(sign(var_0.a.x)), func_2()).c).c.yw, u_input.a.x, (_wgslsmith_f_op_f32(var_0.b.x - var_0.a.x) > var_0.a.x) && (_wgslsmith_f_op_f32(f32(-1f) * -532f) != _wgslsmith_f_op_f32(var_0.b.x + -435f))), arg_0);
    let var_2 = vec3<bool>(true, arg_0, false);
    var var_3 = vec4<u32>(1u ^ ((4294967295u << (var_0.d.b % 32u)) | ~_wgslsmith_clamp_u32(4608u, 26991u, u_input.a.x)), 28070u, _wgslsmith_dot_vec2_u32(countOneBits(u_input.a.yw), u_input.a.wy | _wgslsmith_mult_vec2_u32(u_input.a.zx, u_input.a.xx)) | u_input.a.x, ~(~abs(var_1.d.b)));
    var var_4 = func_5(func_2(), Struct_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b.x, var_0.a.x, var_1.b.x, -325f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -440f, 621f, var_0.a.x))))), -(~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -1i, -2147483647i, var_0.c.x), vec4<i32>(2147483647i, -18509i, var_1.e.a.x, arg_1.x))), func_3(var_1.a.x, Struct_1(var_0.d.b)), func_5(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_1.d.b, var_0.d.b, 0u), u_input.a)), func_5(func_2(), Struct_4(vec4<f32>(var_1.b.x, -382f, var_1.a.x, 308f), var_0.a, var_1.c, var_1.e, var_0.e), Struct_3(vec2<i32>(9938i, arg_1.x), 4294967295u, var_2.x), arg_0), var_1.d, true).e), var_1.e, arg_0);
    return var_1.d;
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_4) -> vec3<f32> {
    let var_0 = Struct_2(!(!func_1(select(arg_3.e.c, arg_0.c, true), -vec2<i32>(arg_3.c.x, -1i)).c), reverseBits(-_wgslsmith_div_vec3_i32(-vec3<i32>(-2147483647i, 1i, arg_1), _wgslsmith_mult_vec3_i32(arg_3.c.zwy, arg_2.zxz))), ~arg_2);
    let var_1 = func_5(func_4(true, -235f, func_5(Struct_1(1u), Struct_4(_wgslsmith_f_op_vec4_f32(floor(arg_3.b)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1129f, arg_3.a.x, arg_3.a.x, arg_3.a.x), vec4<f32>(-1282f, arg_3.b.x, 237f, arg_3.b.x))), vec4<i32>(12054i, 17135i, 20416i, 2147483647i), Struct_3(arg_2.yx, 0u, var_0.a), arg_3.d), Struct_3(~vec2<i32>(arg_3.d.a.x, arg_0.a.x), arg_3.e.b, arg_3.a.x < arg_3.a.x), true).e), func_5(func_4(false, arg_3.b.x, func_5(func_2(), Struct_4(vec4<f32>(286f, 631f, arg_3.a.x, -1000f), vec4<f32>(arg_3.b.x, 157f, -3431f, arg_3.a.x), vec4<i32>(arg_1, arg_1, arg_3.c.x, -1i), Struct_3(vec2<i32>(arg_0.a.x, var_0.b.x), 0u, var_0.a), arg_0), arg_0, all(vec4<bool>(arg_3.d.c, true, arg_3.d.c, false))).e), func_5(func_2(), arg_3, func_5(func_2(), arg_3, Struct_3(vec2<i32>(26890i, arg_1), arg_0.b, true), all(vec2<bool>(var_0.a, true))).e, any(select(vec3<bool>(true, var_0.a, arg_0.c), vec3<bool>(var_0.a, arg_3.d.c, arg_3.d.c), vec3<bool>(false, arg_3.e.c, arg_0.c)))), arg_0, func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1105f, 231f) * -1000f), func_4(false != var_0.a, _wgslsmith_div_f32(arg_3.a.x, 2223f), arg_0)).c), Struct_3(arg_2.yz, u_input.a.x, true), var_0.a).d.c;
    var var_2 = arg_3.d.b;
    var var_3 = func_5(Struct_1(_wgslsmith_dot_vec2_u32(~u_input.a.yy, vec2<u32>(1u, arg_0.b | arg_0.b))), func_5(Struct_1(_wgslsmith_mod_u32(func_2().a, ~u_input.a.x)), Struct_4(arg_3.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1295f, arg_3.a.x, arg_3.a.x, arg_3.b.x) + _wgslsmith_f_op_vec4_f32(-arg_3.a)), arg_3.c, func_5(Struct_1(arg_0.b), arg_3, func_3(arg_3.b.x, Struct_1(44805u)), true).e, arg_3.d), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1327f), Struct_1(~arg_0.b)), !(_wgslsmith_div_f32(arg_3.b.x, 1118f) >= _wgslsmith_f_op_f32(arg_3.b.x + 1154f))), func_3(arg_3.a.x, func_4(!(arg_3.a.x != -1142f), func_5(func_4(var_1, 520f, Struct_3(arg_3.e.a, 16909u, var_0.a)), func_5(Struct_1(22183u), arg_3, Struct_3(vec2<i32>(6432i, var_0.b.x), u_input.a.x, arg_3.d.c), var_1), Struct_3(vec2<i32>(-1i, -1i), 1u, true), true).a.x, Struct_3(vec2<i32>(0i, 2147483647i), _wgslsmith_div_u32(arg_0.b, 75537u), func_5(Struct_1(74445u), arg_3, arg_0, false).d.c))), !(!arg_3.e.c)).e.c;
    var var_4 = var_0;
    return func_5(func_4(var_0.a, -686f, func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_3.b.x)))), func_4(true, arg_3.a.x, func_5(Struct_1(1u), Struct_4(arg_3.a, arg_3.a, vec4<i32>(arg_2.x, arg_0.a.x, -8404i, arg_2.x), arg_0, Struct_3(vec2<i32>(arg_3.c.x, var_0.c.x), arg_0.b, var_1)), Struct_3(vec2<i32>(0i, 0i), 4294967295u, true), var_4.a).d))), Struct_4(_wgslsmith_f_op_vec4_f32(min(arg_3.b, vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, -787f, var_1)), -1073f, 839f, 205f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_3.a))))), ~min(vec4<i32>(2147483647i, 40674i, 13588i, var_4.c.x), vec4<i32>(0i, arg_1, arg_3.e.a.x, var_0.b.x)), arg_3.d, Struct_3(var_0.b.yy, 33227u, var_0.a)), func_5(Struct_1(firstTrailingBit(1u)), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1025f, arg_3.b.x, arg_3.a.x, -672f)), vec4<f32>(_wgslsmith_f_op_f32(abs(1097f)), 600f, _wgslsmith_f_op_f32(-229f - arg_3.b.x), 1677f), vec4<i32>(arg_0.a.x, arg_2.x, arg_1, ~arg_2.x), Struct_3(-var_0.b.xx, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 43039u, 4294967295u, 1u)), any(vec2<bool>(var_0.a, false))), Struct_3(arg_3.c.zy, arg_0.b, 49498u >= arg_0.b)), Struct_3(~select(arg_0.a, vec2<i32>(-46933i, -39454i), vec2<bool>(var_1, var_1)), _wgslsmith_mult_u32(arg_3.d.b, arg_0.b), all(vec4<bool>(arg_3.e.c, arg_3.e.c, false, var_4.a)) && !var_4.a), var_4.a).d, any(select(!(!vec4<bool>(true, false, arg_3.e.c, var_4.a)), vec4<bool>(-1580f >= arg_3.a.x, var_1, !arg_3.e.c, func_3(931f, Struct_1(arg_0.b)).c), select(select(vec4<bool>(var_1, false, arg_3.d.c, var_1), vec4<bool>(false, arg_0.c, arg_3.d.c, arg_0.c), arg_3.e.c), select(vec4<bool>(true, false, var_0.a, var_4.a), vec4<bool>(var_0.a, var_4.a, true, false), vec4<bool>(true, true, var_4.a, true)), select(vec4<bool>(false, arg_0.c, false, var_4.a), vec4<bool>(true, true, var_4.a, true), vec4<bool>(false, false, var_4.a, var_0.a)))))).b.wxz;
}

fn func_7(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = arg_1.wy;
    let var_1 = Struct_5(func_2());
    var var_2 = any(arg_1);
    let var_3 = Struct_2(true, -max(firstTrailingBit(firstLeadingBit(vec3<i32>(arg_2.a.x, arg_2.a.x, -1i))), ~firstTrailingBit(vec3<i32>(arg_2.a.x, 31616i, -35380i))), vec4<i32>(~arg_2.a.x, arg_2.a.x, -1i, arg_2.a.x));
    var var_4 = !(!select(vec4<bool>(false, true, arg_1.x == var_0.x, select(var_0.x, arg_1.x, false)), select(select(vec4<bool>(true, var_3.a, true, var_3.a), arg_1, arg_2.c), select(arg_1, arg_1, var_0.x), vec4<bool>(var_3.a, var_3.a, true, var_3.a)), var_0.x));
    return u_input.a.wx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(u_input.a.x, ~0u), u_input.a.x), func_7(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_6(func_1(true, vec2<i32>(39515i, 63296i)), 1i, vec4<i32>(22215i, 39921i, 1240i, 0i), func_5(Struct_1(1u), Struct_4(vec4<f32>(-386f, -1102f, 1888f, 202f), vec4<f32>(369f, 278f, 1125f, 515f), vec4<i32>(0i, 949i, 32265i, 1i), Struct_3(vec2<i32>(2147483647i, 1i), 66861u, false), Struct_3(vec2<i32>(0i, 1i), 40768u, true)), Struct_3(vec2<i32>(2147483647i, -1i), 1u, true), true))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1510f, 153f) + vec3<f32>(244f, 1000f, 1722f)))), !any(vec3<bool>(false, true, true)))), vec4<bool>((u_input.a.x ^ u_input.a.x) >= ~u_input.a.x, any(vec2<bool>(true, true)) | true, true, all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)))), func_1(true, vec2<i32>(20023i, _wgslsmith_dot_vec3_i32(vec3<i32>(-11058i, 0i, -5302i), vec3<i32>(0i, -2147483647i, 2147483647i))))));
    var var_1 = Struct_1(46979u);
    var var_2 = select(~vec2<i32>(~1i, ~(i32(-1i) * -15079i)), vec2<i32>(61979i, reverseBits(func_5(Struct_1(var_0.x), Struct_4(vec4<f32>(-1758f, 719f, 249f, -501f), vec4<f32>(-489f, 2239f, 1000f, -2135f), vec4<i32>(-40179i, 1i, -32210i, -17941i), Struct_3(vec2<i32>(-2147483647i, -2147483647i), 1u, false), Struct_3(vec2<i32>(-2147483647i, 14121i), 4294967295u, false)), Struct_3(vec2<i32>(-31120i, -1i), 0u, false), true).d.a.x)), true);
    let var_3 = func_7(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-448f + 1214f), _wgslsmith_f_op_f32(min(-1487f, 1000f))), _wgslsmith_f_op_f32(-func_5(Struct_1(1u), Struct_4(vec4<f32>(-714f, 176f, 433f, 601f), vec4<f32>(361f, -1028f, -1000f, 1288f), vec4<i32>(2147483647i, -9377i, var_2.x, var_2.x), Struct_3(vec2<i32>(1i, -2147483647i), 1u, true), Struct_3(vec2<i32>(var_2.x, var_2.x), 25267u, true)), Struct_3(vec2<i32>(var_2.x, var_2.x), u_input.a.x, true), false).b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-658f * -1015f)))))), select(vec4<bool>(true, true, true, true), vec4<bool>((u_input.a.x ^ u_input.a.x) != ~4294967295u, true, true, false), (~u_input.a.x << (var_1.a % 32u)) < _wgslsmith_div_u32(var_0.x, 4871u)), func_5(func_2(), func_5(Struct_1(38406u), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1550f, -1058f, 449f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-148f, -1130f, 435f, 258f)), firstLeadingBit(vec4<i32>(1i, -87972i, -28460i, var_2.x)), func_3(-1127f, Struct_1(u_input.a.x)), Struct_3(vec2<i32>(-1i, -4158i), 0u, true)), func_5(func_2(), Struct_4(vec4<f32>(-2743f, -1200f, 944f, -929f), vec4<f32>(-1000f, 442f, -191f, -800f), vec4<i32>(1i, var_2.x, var_2.x, -1i), Struct_3(vec2<i32>(-9388i, 0i), var_1.a, true), Struct_3(vec2<i32>(56376i, var_2.x), var_1.a, true)), Struct_3(vec2<i32>(var_2.x, 1i), 4294967295u, true), any(vec3<bool>(true, false, true))).e, true), Struct_3(~select(vec2<i32>(var_2.x, -31920i), vec2<i32>(1i, var_2.x), false), ~u_input.a.x, select(true, true, true)), false).d);
    var var_4 = select(_wgslsmith_clamp_vec4_u32(u_input.a, ~(~u_input.a), vec4<u32>(var_0.x, 1u, func_4(true, _wgslsmith_div_f32(329f, 1000f), Struct_3(vec2<i32>(var_2.x, var_2.x), var_0.x, false)).a, var_1.a)), firstLeadingBit(firstLeadingBit(~vec4<u32>(var_0.x, var_3.x, 4294967295u, 83393u)) | u_input.a), vec4<bool>(true, false, all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false))) && true, true));
    let var_5 = -(_wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -12205i, i32(-1i) * -2147483647i), -vec2<i32>(var_2.x, var_2.x)) << (~(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a, var_4.x), vec2<u32>(107771u, var_3.x))) % vec2<u32>(32u)));
    let var_6 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(825f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -856f) + _wgslsmith_f_op_f32(515f * -714f)))), -1396f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -983f)) * _wgslsmith_f_op_f32(max(-438f, -233f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-789f, _wgslsmith_f_op_f32(350f + 642f)))))), 1344f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_6.x, -576f)))), var_3.x, vec3<u32>(~(~0u), u_input.a.x, 4294967295u >> (_wgslsmith_div_u32(1u, var_3.x) % 32u)) & ~(vec3<u32>(var_3.x, var_1.a, 71466u) >> (~var_4.zxy % vec3<u32>(32u))));
}

