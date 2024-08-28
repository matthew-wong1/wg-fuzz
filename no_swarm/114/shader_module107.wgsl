struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_2,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = Struct_1(u_input.a.x);
    var var_1 = vec4<u32>(countOneBits(abs(arg_0)), var_0.a, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(80149u, u_input.a.x, 49777u, var_0.a)), vec4<u32>(4294967295u, 79956u, u_input.a.x, 19998u)), ~countOneBits(vec4<u32>(var_0.a, var_0.a, 68079u, 1u))), ~vec4<u32>(4294967295u, u_input.a.x, 46538u, 4464u) ^ ~select(vec4<u32>(var_0.a, 29760u, var_0.a, 1u), vec4<u32>(67031u, 4294967295u, 0u, arg_0), vec4<bool>(true, true, true, false))), ~4294967295u >> (~(4294967295u & _wgslsmith_sub_u32(arg_0, 7789u)) % 32u));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-849f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-671f + -1297f) - -1915f) - 1041f), false))));
    var_1 = vec4<u32>(~_wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(var_1.yzz, u_input.a), ~vec3<u32>(var_0.a, 52561u, 23151u)), 21697u, 4294967295u, var_0.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(481f - var_2)))), var_2) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-168f, 1340f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) - vec2<f32>(var_2, var_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-378f, 391f)), vec2<bool>(true, true))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + _wgslsmith_f_op_f32(abs(var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2, -758f, false)))))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_3.x, var_3.x))));
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_1 = ~reverseBits(~vec4<u32>(u_input.a.x, u_input.a.x | 18820u, 0u, countOneBits(4294967295u)));
    var_1 = ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_1.x, 36229u, 16272u), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 16923u, 86905u, u_input.a.x) | vec4<u32>(var_1.x, 4294967295u, 20842u, 38720u), select(vec4<u32>(var_1.x, 46354u, u_input.a.x, 4294967295u), vec4<u32>(29617u, var_1.x, var_1.x, 0u), vec4<bool>(false, false, true, false))), (vec4<u32>(var_1.x, var_1.x, var_1.x, 0u) >> (vec4<u32>(u_input.a.x, var_1.x, 72869u, 19123u) % vec4<u32>(32u))) ^ vec4<u32>(u_input.a.x, 53734u, var_1.x, var_1.x)) | _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a.x, var_1.x, 0u) << (vec4<u32>(4294967295u, 0u, 31556u, 10973u) % vec4<u32>(32u)), vec4<u32>(32956u, 52915u, 1u, 5300u)), ~(~vec4<u32>(60768u, var_1.x, 70968u, u_input.a.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + _wgslsmith_f_op_vec2_f32(var_0.wz * _wgslsmith_f_op_vec2_f32(-var_0.wx))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - _wgslsmith_f_op_f32(func_2(u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) * _wgslsmith_f_op_f32(min(var_0.x, var_0.x)))), vec2<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-716f + -1804f), var_0.x)), vec2<bool>(all(vec4<bool>(true, true, true, true)), true)))));
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1012f)), _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-671f, var_2.x, false)) * -296f), -249f))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-186f + var_2.x)), -573f))));
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_add_vec4_i32(min(vec4<i32>(firstLeadingBit(u_input.b.x), u_input.b.x & u_input.b.x, -5753i << (u_input.a.x % 32u), u_input.b.x) ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 2572i, u_input.b.x), vec4<i32>(u_input.b.x, -20904i, 2147483647i, -52i) << (vec4<u32>(0u, 68363u, 51518u, 0u) % vec4<u32>(32u))), vec4<i32>(41073i, u_input.b.x, u_input.b.x, _wgslsmith_mult_i32(u_input.b.x & 1i, u_input.b.x >> (41968u % 32u)))), -max(vec4<i32>(-4298i, -13314i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(u_input.b.x, 32374i)), abs(u_input.b.x)), vec4<i32>(reverseBits(-2147483647i), u_input.b.x << (u_input.a.x % 32u), 20608i, u_input.b.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1099f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -695f), _wgslsmith_f_op_f32(func_2(u_input.a.x))))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-114f - 1198f), -2107f, _wgslsmith_f_op_f32(2013f * -791f), _wgslsmith_f_op_f32(1446f + 275f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(420f, -447f, -1151f, -533f), vec4<f32>(-1078f, 1414f, -100f, -856f)))))));
    let var_2 = vec2<f32>(-729f, _wgslsmith_f_op_f32(var_1.x - var_1.x));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(func_3()), (var_0.x >> (36840u % 32u)) & _wgslsmith_mod_i32(_wgslsmith_div_i32(~(-17880i), i32(-1i) * -1i), -14133i), vec4<bool>(true, any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), true)), false, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)))), Struct_1(0u));
    var_3 = Struct_2(var_2, 2147483647i, !(!(!select(var_3.c, vec4<bool>(var_3.c.x, false, var_3.c.x, var_3.c.x), vec4<bool>(var_3.c.x, true, var_3.c.x, true)))), Struct_1(1u));
    return Struct_4(Struct_3(var_3.a.x, Struct_2(vec2<f32>(var_1.x, -1870f), firstTrailingBit(_wgslsmith_dot_vec3_i32(var_0.yyz, vec3<i32>(var_0.x, u_input.b.x, 56631i))), !vec4<bool>(false, true, var_3.c.x, var_3.c.x), var_3.d)), abs(var_3.b), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_2)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1239f, 273f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(var_3.a, var_1.ww, var_3.c.x))))), var_3.b, !var_3.c, Struct_1(u_input.a.x)), min(-2147483647i, -2147483647i), abs(vec4<i32>(u_input.b.x ^ var_0.x, u_input.b.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.d.a, var_3.d.a), vec2<u32>(var_3.d.a, 28290u)) % 32u), _wgslsmith_add_i32(~var_3.b, _wgslsmith_sub_i32(u_input.b.x, var_0.x)), reverseBits(var_0.x))));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    let var_0 = (~max(4294967295u, ~arg_0.a.b.d.a) >= 1u) & all(!vec2<bool>(true, arg_0.c.c.x));
    var var_1 = Struct_1(0u);
    var var_2 = func_1().c.d;
    let var_3 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(-vec4<i32>(-1i, arg_0.a.b.b, arg_0.b, u_input.b.x)), vec4<i32>(arg_0.a.b.b, -20088i, -37551i, 0i) | _wgslsmith_sub_vec4_i32(arg_0.e, arg_0.e), arg_0.e), _wgslsmith_div_vec4_i32(vec4<i32>(~1i, -u_input.b.x, _wgslsmith_sub_i32(arg_0.a.b.b, arg_0.d), _wgslsmith_div_i32(74622i, u_input.b.x)), arg_0.e));
    let var_4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a.b.a.x, 736f, arg_0.a.a)))))));
    return arg_0.a;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    var var_0 = !func_4(Struct_4(func_1().a, ~(-28362i), arg_1.b, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(22030i, arg_1.b.b, arg_1.b.b, 3140i), vec4<i32>(1813i, -20158i, u_input.b.x, -44860i)), u_input.b.x), reverseBits(vec4<i32>(-7443i, arg_1.b.b, arg_3.b.b, arg_1.b.b) & vec4<i32>(arg_0.b.b, 45206i, -1i, arg_0.b.b)))).b.c;
    var var_1 = ~u_input.a.yy;
    let var_2 = !select(select(vec3<bool>(all(arg_0.b.c.wy), any(vec2<bool>(var_0.x, arg_3.b.c.x)), all(vec2<bool>(arg_2, true))), arg_3.b.c.yzz, true), func_1().a.b.c.yyx, vec3<bool>(all(arg_3.b.c.xz), select(any(var_0.wz), !arg_0.b.c.x, all(arg_3.b.c)), true));
    let var_3 = 91227u;
    var_1 = vec2<u32>(4294967295u, ~arg_0.b.d.a);
    return arg_1;
}

fn func_6(arg_0: bool, arg_1: Struct_4, arg_2: f32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, -510f, 576f, arg_1.c.a.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(182f, arg_1.c.a.x, arg_2, arg_2), vec4<f32>(-160f, arg_1.c.a.x, 478f, arg_1.c.a.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-325f, -881f, 1667f, arg_1.c.a.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.b.a.x, -1482f, arg_1.a.a, -717f), vec4<f32>(arg_1.c.a.x, arg_1.c.a.x, -1211f, -556f)))))));
    let var_1 = vec3<i32>(_wgslsmith_mult_i32(arg_1.e.x, u_input.b.x), ~1i, u_input.b.x ^ ~(abs(u_input.b.x) >> (40812u % 32u)));
    var var_2 = arg_1.a.b.d;
    var_2 = arg_1.c.d;
    var var_3 = _wgslsmith_sub_u32(~countOneBits(func_1().c.d.a), 17873u);
    return StorageBuffer(0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-274f + _wgslsmith_f_op_f32(-313f * 1135f)) - 1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-790f))))));
    let var_1 = _wgslsmith_add_i32(~(~u_input.b.x), max(_wgslsmith_div_i32(2147483647i, u_input.b.x), 46757i) >> (25120u % 32u));
    let var_2 = vec2<i32>(1i, 36878i | ~var_1);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1172f)))))));
    var var_4 = _wgslsmith_dot_vec3_i32(-firstLeadingBit(~vec3<i32>(var_2.x, 853i, u_input.b.x)), reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 1i, 49510i), vec3<i32>(u_input.b.x, -2147483647i, var_1)), ~vec3<i32>(24011i, -34245i, 0i)), -2147483647i, -16979i)));
    let x = u_input.a;
    s_output = func_6(!(0u != _wgslsmith_add_u32(firstLeadingBit(u_input.a.x), ~u_input.a.x)), Struct_4(func_5(func_4(func_1()), func_1().a, any(vec4<bool>(false, false, true, true)), Struct_3(-102f, func_1().a.b)), -_wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, 1i, -64508i), abs(12913i)), Struct_2(vec2<f32>(1f, 1f), _wgslsmith_mult_i32(38671i, 51693i), vec4<bool>(true, true, false, true), func_1().c.d), var_2.x, vec4<i32>(abs(1i), 1i, -25265i, abs(-45654i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1056f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -487f)), _wgslsmith_f_op_f32(ceil(func_4(Struct_4(Struct_3(-283f, Struct_2(vec2<f32>(2345f, 850f), -11169i, vec4<bool>(true, true, false, true), Struct_1(u_input.a.x))), -28784i, Struct_2(vec2<f32>(-1272f, -349f), u_input.b.x, vec4<bool>(false, true, false, false), Struct_1(1u)), 1i, vec4<i32>(2147483647i, u_input.b.x, 21457i, u_input.b.x))).a)), false))));
}

