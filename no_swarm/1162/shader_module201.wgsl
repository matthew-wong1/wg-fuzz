struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    let var_0 = vec3<i32>(reverseBits(u_input.b), max(-13575i, min(min(u_input.b, u_input.a) ^ 0i, u_input.d)), -30914i);
    var var_1 = 228f;
    var var_2 = firstTrailingBit(vec3<u32>(~min(u_input.c.x, 0u), 23662u << (u_input.e % 32u), ~reverseBits(u_input.e)) | vec3<u32>(firstLeadingBit(_wgslsmith_clamp_u32(u_input.e, u_input.c.x, 2803u)), abs(4294967295u), min(u_input.c.x, 2757u)));
    var var_3 = firstLeadingBit(max(vec4<i32>(7626i, firstLeadingBit(select(1i, 20066i, false)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, var_0.x), var_0.yx, vec2<i32>(-2147483647i, 2147483647i)), vec2<i32>(26257i, var_0.x)), 19731i), firstTrailingBit(_wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, u_input.d, var_0.x, var_0.x), firstLeadingBit(vec4<i32>(u_input.a, 42651i, u_input.b, -2147483647i))))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1887f * 1849f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))));
    return vec3<i32>(53142i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, ~13082i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_3.x, var_0.x), var_3.yyx), ~(-2147483647i)), -(~vec4<i32>(-14449i, -31466i, var_0.x, var_0.x))), -var_3.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: f32, arg_3: Struct_4) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(false, 1730f, _wgslsmith_add_i32(arg_1, arg_1)));
    var_0 = arg_3.c;
    var_0 = Struct_2(Struct_1(any(!select(vec2<bool>(var_0.a.a, arg_3.b.a), vec2<bool>(true, false), vec2<bool>(false, true))), var_0.a.b, arg_3.b.c));
    var var_1 = -abs(_wgslsmith_clamp_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.a, -2147483647i), vec3<i32>(24379i, -30232i, -1i)), vec3<i32>(-31293i, _wgslsmith_mod_i32(arg_3.c.a.c, -1i), 1i), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(1i, var_0.a.c, 2147483647i)), vec3<i32>(u_input.d, arg_1, var_0.a.c) ^ vec3<i32>(arg_3.c.a.c, u_input.d, arg_3.b.c))));
    var_1 = min(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(1i, u_input.a, u_input.d), firstLeadingBit(func_3(293f)) ^ min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, var_0.a.c, var_1.x), vec3<i32>(var_0.a.c, var_0.a.c, -21179i), vec3<i32>(1i, 3539i, 23800i)), min(vec3<i32>(u_input.b, var_1.x, arg_1), vec3<i32>(2147483647i, arg_3.c.a.c, arg_1)))), abs(-(_wgslsmith_mult_vec3_i32(vec3<i32>(5802i, -2147483647i, -3804i), vec3<i32>(arg_1, 3147i, -39706i)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(64017u, 1u, u_input.c.x), vec3<u32>(u_input.c.x, 0u, u_input.c.x)) % vec3<u32>(32u)))));
    return arg_3.a.zx;
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec3<u32>, arg_3: vec4<bool>) -> Struct_4 {
    let var_0 = firstLeadingBit(-22754i);
    var var_1 = arg_3.x != (false & arg_0.x);
    let var_2 = vec4<bool>(arg_3.x, ~u_input.e != arg_1, arg_3.x, !any(vec3<bool>(true || arg_3.x, arg_0.x, arg_3.x && true)));
    return Struct_4(vec4<bool>(select(!arg_3.x, arg_0.x, !arg_0.x & any(var_2.zwy)), !any(!arg_3.xy), !(var_2.x & true), !var_2.x), Struct_1((all(vec2<bool>(arg_3.x, var_2.x)) & !arg_0.x) | all(arg_3.yx), -1000f, ~(~var_0)), Struct_2(Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1047f - -590f) + _wgslsmith_f_op_f32(-324f + -2446f)), -1i)));
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = Struct_4(select(vec4<bool>(firstTrailingBit(u_input.c.x) >= u_input.c.x, !(var_0.c.a.b < 797f), (u_input.c.x ^ u_input.c.x) == arg_3, all(vec3<bool>(true, false, true)) || (arg_2 <= -19488i)), var_0.a, vec4<bool>(false, !(32133u == u_input.c.x), arg_0.c.a.a | all(vec3<bool>(true, arg_0.a.x, arg_0.b.a)), !arg_0.b.a)), var_0.b, var_0.c);
    let var_1 = Struct_3(17203i, _wgslsmith_f_op_f32(-arg_0.c.a.b), ~(-1i), func_4(!(!select(var_0.a.xx, vec2<bool>(var_0.b.a, arg_0.a.x), arg_0.a.xx)), reverseBits(~0u), vec3<u32>(firstLeadingBit(u_input.c.x) >> (~1u % 32u), 10414u, _wgslsmith_mult_u32(u_input.e, u_input.c.x) | min(1u, u_input.e)), !var_0.a).c.a, Struct_2(arg_0.b));
    var var_2 = arg_0.c;
    var_2 = func_4(vec2<bool>(true, var_0.b.a), 18144u, vec3<u32>(~26025u, _wgslsmith_mult_u32(1u, arg_3), ~(~arg_3)), func_4(vec2<bool>(all(arg_0.a.xw), arg_0.a.x), u_input.e, _wgslsmith_mod_vec3_u32(firstLeadingBit(abs(vec3<u32>(8123u, u_input.c.x, 0u))), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(0u, arg_3, u_input.e)), select(vec3<u32>(u_input.c.x, 29950u, 4294967295u), vec3<u32>(u_input.c.x, arg_3, 0u), vec3<bool>(var_0.a.x, var_1.d.a, var_1.d.a)))), !(!(!vec4<bool>(var_0.a.x, arg_0.b.a, var_1.e.a.a, var_1.d.a)))).a).c;
    return Struct_1(all(var_0.a.zyx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1214f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(758f, -871f))))), _wgslsmith_add_i32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1180f)).x, -44658i));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    let var_0 = arg_2.b;
    let var_1 = Struct_3(3858i, _wgslsmith_f_op_f32(trunc(arg_2.b)), _wgslsmith_mod_i32(55999i, _wgslsmith_dot_vec3_i32(arg_1.wxy, (arg_1.xwz | vec3<i32>(-2183i, arg_2.c, arg_1.x)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(-17147i, u_input.b, 1266i), arg_1.yyz))), func_5(func_4(select(func_2(vec2<f32>(var_0, -1000f), 20344i, -341f, Struct_4(vec4<bool>(arg_2.a, arg_2.a, arg_0, true), Struct_1(arg_2.a, -1282f, arg_2.c), Struct_2(arg_2))), vec2<bool>(arg_2.a, arg_2.a), all(vec3<bool>(arg_2.a, false, true))), 4294967295u, reverseBits(vec3<u32>(u_input.e, 4294967295u, u_input.c.x) >> (vec3<u32>(4294967295u, u_input.c.x, 4294967295u) % vec3<u32>(32u))), vec4<bool>(u_input.b <= -227i, arg_2.c < arg_1.x, arg_2.a, arg_0)), arg_2.c, u_input.d, 25407u), func_4(vec2<bool>(!(!arg_2.a), false), 1u, _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c.x, u_input.e, 1u) << (min(vec3<u32>(u_input.e, u_input.c.x, 25202u), vec3<u32>(u_input.e, u_input.e, 4652u)) % vec3<u32>(32u)), vec3<u32>(max(u_input.c.x, u_input.c.x), ~u_input.e, abs(4294967295u))), vec4<bool>(arg_0, arg_0, u_input.e >= min(u_input.c.x, 1u), abs(1i) == abs(arg_2.c))).c);
    var var_2 = reverseBits(vec3<i32>(var_1.c, -26025i, -_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 38170i), arg_1.zw)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-558f, _wgslsmith_f_op_f32(trunc(var_0)), func_2(vec2<f32>(arg_2.b, var_0), -19701i, 1000f, Struct_4(vec4<bool>(var_1.d.a, arg_2.a, false, var_1.d.a), Struct_1(arg_0, -1535f, 3775i), Struct_2(var_1.d))).x)))) - _wgslsmith_f_op_f32(max(-1276f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_1.d.b * var_0))))), 1f);
    let var_4 = Struct_4(select(select(select(select(vec4<bool>(var_1.d.a, arg_2.a, true, arg_0), vec4<bool>(var_1.e.a.a, true, false, true), vec4<bool>(true, arg_2.a, true, false)), select(vec4<bool>(var_1.d.a, false, arg_2.a, var_1.e.a.a), vec4<bool>(true, var_1.e.a.a, arg_0, false), true), true), vec4<bool>(!arg_0, false, !arg_0, true), vec4<bool>(arg_2.a, arg_2.a || false, true, true)), vec4<bool>(arg_0, true, var_1.d.a, arg_0), var_1.e.a.a), Struct_1(_wgslsmith_dot_vec2_i32(var_2.zz, vec2<i32>(u_input.d, 1i)) > -22301i, func_4(!func_4(vec2<bool>(false, arg_2.a), 45521u, vec3<u32>(14100u, u_input.c.x, 55852u), vec4<bool>(false, var_1.e.a.a, false, arg_2.a)).a.zx, u_input.e, vec3<u32>(abs(4294967295u), _wgslsmith_div_u32(4294967295u, 23720u), ~u_input.e), !func_4(vec2<bool>(true, arg_2.a), u_input.e, vec3<u32>(u_input.e, u_input.e, 23281u), vec4<bool>(arg_0, var_1.e.a.a, false, false)).a).c.a.b, ~2147483647i), var_1.e);
    return false && (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + var_1.d.b)), -1632f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, -124f)) - arg_2.b)));
}

fn func_6(arg_0: f32, arg_1: bool) -> u32 {
    let var_0 = Struct_4(vec4<bool>(arg_1, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-975f + arg_0)) <= _wgslsmith_f_op_f32(-1629f + arg_0), -1i >= -(-49350i ^ u_input.a)), func_4(!select(select(vec2<bool>(false, arg_1), vec2<bool>(true, true), vec2<bool>(arg_1, arg_1)), vec2<bool>(arg_1, true), vec2<bool>(false, arg_1)), 13423u, ~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, 1u, 140989u), vec3<u32>(u_input.e, u_input.e, 1u), vec3<u32>(u_input.e, u_input.c.x, 4294967295u)), vec3<u32>(u_input.c.x, u_input.e, u_input.c.x) >> (vec3<u32>(31909u, u_input.e, 49973u) % vec3<u32>(32u))), vec4<bool>(true, true, true, select(true, true, arg_1))).b, func_4(func_4(select(func_4(vec2<bool>(arg_1, true), u_input.e, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(false, arg_1, arg_1, false)).a.wz, !vec2<bool>(arg_1, arg_1), false), select(_wgslsmith_div_u32(u_input.e, 5179u), _wgslsmith_mult_u32(u_input.e, u_input.e), true), _wgslsmith_add_vec3_u32(abs(vec3<u32>(31944u, 21055u, u_input.c.x)), vec3<u32>(u_input.e, u_input.c.x, u_input.c.x) & vec3<u32>(u_input.e, u_input.e, u_input.e)), vec4<bool>(true, arg_1, true, arg_1)).a.xz, ~u_input.c.x, reverseBits(vec3<u32>(~u_input.e, 3731u, u_input.c.x | 49189u)), vec4<bool>(all(!vec2<bool>(arg_1, arg_1)), false, false && (-1537f < arg_0), false)).c);
    return ~1u;
}

fn func_7(arg_0: f32, arg_1: vec4<i32>, arg_2: u32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = select(!vec3<bool>(func_4(vec2<bool>(true, true), 0u, arg_3, vec4<bool>(true, true, true, true)).c.a.a, any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false)), true), !(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), true)), !any(vec3<bool>(any(vec4<bool>(false, true, true, true)), arg_0 > -993f, true)));
    var var_1 = select(select(u_input.c, vec2<u32>(~3638u, _wgslsmith_mult_u32(arg_3.x ^ 23934u, func_6(-2301f, var_0.x))), select(var_0.zx, !func_2(vec2<f32>(arg_0, arg_0), arg_1.x, -1211f, Struct_4(vec4<bool>(true, var_0.x, var_0.x, true), Struct_1(false, arg_0, -34551i), Struct_2(Struct_1(false, arg_0, arg_1.x)))), func_1(!var_0.x, vec4<i32>(arg_1.x, -14641i, 1i, arg_1.x), Struct_1(var_0.x, 1000f, arg_1.x)))), ~firstLeadingBit(vec2<u32>(~38532u, 0u)), true);
    var var_2 = vec2<bool>(false, var_0.x);
    let var_3 = func_4(var_0.yx, func_6(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))), func_4(select(select(var_0.yy, vec2<bool>(false, true), true), var_0.xz, var_0.xz), 0u, ~(~vec3<u32>(0u, 1u, 0u)), vec4<bool>(true, true, true, true)).b.a), arg_3, vec4<bool>(false, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(34080u, arg_2, 92118u), arg_3)) >= arg_2, false, true));
    var_1 = vec2<u32>(_wgslsmith_mod_u32(4294967295u, ~select(arg_2, ~1u, any(vec3<bool>(var_0.x, var_0.x, var_2.x)))), arg_2 >> (countOneBits(~(~36069u)) % 32u));
    return func_5(var_3, abs(arg_1.x), var_3.c.a.c, _wgslsmith_mod_u32(max(arg_2, ~(var_1.x ^ u_input.c.x)), func_6(var_3.c.a.b, true)));
}

fn func_8(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = func_4(vec2<bool>(true, true), 4294967295u, select(~vec3<u32>(13145u, func_6(arg_0.b, false), ~0u), ~vec3<u32>(~u_input.e, 0u >> (u_input.c.x % 32u), _wgslsmith_div_u32(u_input.e, 0u)), !vec3<bool>(true, arg_1, true)), !(!(!(!vec4<bool>(true, arg_0.a, arg_0.a, arg_1)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b, var_0.b.b, arg_0.b, arg_2.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-577f, var_0.b.b, arg_2.x, arg_2.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1483f, arg_0.b, arg_2.x, arg_2.x) * vec4<f32>(-582f, var_0.c.a.b, arg_0.b, -852f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1064f, arg_2.x, arg_0.b, 1093f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b, -1397f, arg_2.x, 1062f), vec4<f32>(-1831f, arg_0.b, -168f, 925f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-199f, arg_2.x, var_0.b.b, 647f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.b, 379f, -1444f, 425f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.a.b, arg_2.x, arg_2.x, 1896f), vec4<f32>(191f, var_1.x, -299f, var_0.b.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1153f, 538f, 347f, var_0.b.b) * vec4<f32>(1000f, var_1.x, -327f, -973f)))))) + vec4<f32>(577f, -258f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1227f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1481f - 301f))));
    let var_2 = Struct_3(31162i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b, 317f, _wgslsmith_f_op_f32(-var_1.x) <= _wgslsmith_f_op_f32(abs(var_1.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -881f)), u_input.d, func_5(Struct_4(vec4<bool>(true, arg_0.c != 0i, false, var_0.a.x), Struct_1(var_0.b.a, _wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)), var_0.c.a.c), func_4(var_0.a.wx, _wgslsmith_add_u32(20245u, u_input.e), ~vec3<u32>(65722u, u_input.e, 0u), var_0.a).c), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(arg_0.c, 9680i)), vec2<i32>(1i, ~(-21004i))), func_5(func_4(vec2<bool>(true, arg_0.a), u_input.e, vec3<u32>(78419u, u_input.c.x, 2065u), var_0.a), -74236i & arg_0.c, 2147483647i | u_input.d, u_input.c.x).c << ((u_input.c.x ^ ~56641u) % 32u), 4294967295u), func_4(var_0.a.zz, 7398u << (_wgslsmith_clamp_u32(~4294967295u, _wgslsmith_clamp_u32(76299u, u_input.e, 0u), select(43109u, u_input.c.x, true)) % 32u), vec3<u32>(_wgslsmith_mod_u32(firstTrailingBit(3566u), ~4294967295u), 1541u, (u_input.c.x >> (12219u % 32u)) & u_input.e), var_0.a).c);
    let var_3 = vec2<i32>(~(~max(var_0.c.a.c, 1809i)), -23536i & _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.b, ~var_0.b.c, 2147483647i, var_0.b.c), firstLeadingBit(~vec4<i32>(2147483647i, var_2.c, 1i, u_input.b))));
    return func_5(var_0, -17622i, arg_0.c, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(func_7(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(258f + 1525f)))), ~select(vec4<i32>(2147483647i, u_input.b, u_input.a, -39933i), vec4<i32>(-1i, u_input.d, u_input.b, u_input.d) ^ vec4<i32>(u_input.d, -2147483647i, 2147483647i, -6541i), vec4<bool>(true, true, true, true)), ~func_6(-235f, func_1(false, vec4<i32>(-17227i, u_input.d, 0i, u_input.a), Struct_1(false, -193f, 2147483647i))), vec3<u32>(~u_input.c.x ^ 1u, ~_wgslsmith_mod_u32(0u, u_input.c.x), ~u_input.c.x)), min(_wgslsmith_dot_vec2_u32(u_input.c, ~vec2<u32>(1u, u_input.e)), u_input.c.x) != u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(abs(733f)), -161f, 195f)))));
    var var_1 = ~_wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), u_input.e << (8265u % 32u), u_input.c.x), vec3<u32>(u_input.e, u_input.e, reverseBits(~14491u)));
    var var_2 = Struct_3(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -819f)))) - var_0.b), -u_input.a, Struct_1(var_0.a, func_7(_wgslsmith_f_op_f32(round(var_0.b)), countOneBits(vec4<i32>(8876i, -1i, 28380i, -2656i) << (vec4<u32>(u_input.e, u_input.c.x, var_1.x, var_1.x) % vec4<u32>(32u))), ~34374u, countOneBits(select(vec3<u32>(4294967295u, 49266u, 4294967295u), vec3<u32>(u_input.e, var_1.x, 29165u), var_0.a))).b, 34265i), Struct_2(Struct_1(!select(var_0.a, false, var_0.a), var_0.b, u_input.a)));
    var_1 = ~vec3<u32>(func_6(-640f, _wgslsmith_mult_u32(44397u, u_input.e) > 0u), var_1.x, ~(~(21114u << (0u % 32u))));
    var var_3 = Struct_4(vec4<bool>(true, false, var_2.e.a.a, !(-2147483647i == reverseBits(var_0.c))), Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.e.a.b - _wgslsmith_div_f32(var_2.b, var_0.b)), -507f), 1i), var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1362f, func_5(Struct_4(vec4<bool>(var_3.c.a.a, false, true, var_0.a), var_3.c.a, Struct_2(var_2.d)), var_3.c.a.c, -2147483647i, var_1.x).b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1466f, var_2.e.a.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 568f)))))), vec2<i32>(1i, abs(~0i)) >> (_wgslsmith_mod_vec2_u32(var_1.xx & min(vec2<u32>(var_1.x, 51163u), var_1.zy), countOneBits(vec2<u32>(var_1.x, 1u))) % vec2<u32>(32u)), select(_wgslsmith_mult_i32(func_8(var_2.d, var_3.c.a.a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.c.a.b, var_3.b.b, var_0.b)))).c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c.a.c, 1i, var_3.b.c, var_0.c), min(vec4<i32>(26199i, var_0.c, var_0.c, -23755i), vec4<i32>(var_2.a, var_0.c, var_0.c, -2147483647i)))), -31402i, func_4(!func_4(vec2<bool>(true, false), u_input.c.x, vec3<u32>(96190u, var_1.x, 0u), vec4<bool>(true, true, var_2.d.a, true)).a.zx, var_1.x, vec3<u32>(1u, 21865u, var_1.x & u_input.c.x), func_4(vec2<bool>(false, true), ~u_input.e, ~vec3<u32>(var_1.x, var_1.x, 5247u), var_3.a).a).b.a), -countOneBits(-select(vec3<i32>(666i, var_2.e.a.c, 33243i), vec3<i32>(-2147483647i, var_3.b.c, var_3.b.c), var_3.b.a)), 1705f);
}

