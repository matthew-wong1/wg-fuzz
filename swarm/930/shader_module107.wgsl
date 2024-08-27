struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true));

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3) -> vec3<i32> {
    var var_0 = abs(~28002u);
    var var_1 = Struct_2(49909u, 284f, Struct_1(~(~_wgslsmith_div_u32(4294967295u, 81206u)), 7671u, vec3<u32>(_wgslsmith_mod_u32(max(67781u, 24956u), _wgslsmith_sub_u32(u_input.c, 0u)), _wgslsmith_sub_u32(u_input.d.x, 70803u) & u_input.e.x, 4294967295u), -1219f <= _wgslsmith_f_op_f32(-625f + arg_0.b)), 23935i);
    return ((vec3<i32>(-2147483647i >> (var_1.c.c.x % 32u), firstLeadingBit(var_1.d), min(u_input.a.x, u_input.a.x)) & -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), vec3<i32>(18403i, 2147483647i, -2147483647i))) | (vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, var_1.d, 6064i), -u_input.a.x) ^ vec3<i32>(-1i, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, var_1.d, var_1.d), vec4<i32>(-22152i, -1i, var_1.d, u_input.a.x))))) >> (vec3<u32>(abs(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(var_1.c.c.x, 29796u))), ~1u, var_1.a) % vec3<u32>(32u));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: f32) -> i32 {
    global1 = firstTrailingBit(i32(-1i) * -2147483647i) | firstLeadingBit(arg_1.x);
    var var_0 = true;
    let var_1 = Struct_1(~0u, firstTrailingBit((u_input.c & 1u) ^ 1u), _wgslsmith_div_vec3_u32(~(vec3<u32>(u_input.d.x, u_input.b, 83061u) << (~vec3<u32>(u_input.d.x, 24983u, u_input.c) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(u_input.e.x, 1u)), 0u, 22835u), min(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 30201u, 8575u), vec3<u32>(76402u, 0u, 0u)), select(vec3<u32>(1u, u_input.d.x, 0u), vec3<u32>(u_input.c, u_input.e.x, 25173u), false)), vec3<u32>(1039u, select(90509u, u_input.c, false), 0u))), true == (any(vec2<bool>(false, true)) | any(vec4<bool>(true, true, true, true))));
    var_0 = !(arg_0.x == arg_1.x);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 + 607f), arg_2) - _wgslsmith_f_op_f32(1000f + -272f)))), arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1094f));
    return select(8279i, 1i, any(select(vec2<bool>(true, true), !vec2<bool>(false, var_1.d), vec2<bool>(true, true))) || true);
}

fn func_2() -> vec2<f32> {
    global1 = func_4(abs(~(-vec4<i32>(2147483647i, u_input.a.x, 30400i, 35031i))) ^ min(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), vec4<i32>(2147483647i, u_input.a.x, 28350i, -17900i) & (vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -22291i) << (vec4<u32>(0u, u_input.c, 4294967295u, u_input.b) % vec4<u32>(32u)))), func_3(Struct_3(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1160f * 1353f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2246f, -992f, -430f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(299f, 798f, 345f, -645f)))))), _wgslsmith_f_op_f32(f32(-1f) * -885f));
    var var_0 = _wgslsmith_f_op_f32(abs(1185f));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1017f))));
    var var_1 = 817f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(964f)))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-896f, 127f))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(-1000f, 109f))))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstLeadingBit(u_input.c), 0u), 1u, ~_wgslsmith_clamp_u32(u_input.e.x, 0u, 0u)), (36055u >> (max(3881u, u_input.b) % 32u)) & firstLeadingBit(~47513u)), min(18760u, u_input.d.x), false), 7u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()));
    var var_2 = Struct_1(u_input.b, min(25889u, ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.d.x), vec3<u32>(u_input.d.x, u_input.e.x, u_input.c)))), vec3<u32>(~2739u, max(firstLeadingBit(u_input.e.x), _wgslsmith_mod_u32(16302u, ~0u)), ~u_input.b), !(((true | var_0.x) || true) && any(select(global0[_wgslsmith_index_u32(4294967295u, 7u)], vec3<bool>(true, var_0.x, false), false))));
    global1 = 1i;
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-1106f + -488f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(890f + var_1.x), var_1.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), arg_0)));
    return Struct_1(~(~min(0u, u_input.b)) | u_input.e.x, _wgslsmith_mod_u32(u_input.e.x, abs(95461u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.b, 19851u), max(min(~vec3<u32>(0u, 4294967295u, var_2.b), ~var_2.c), var_2.c)), var_2.d);
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    let var_0 = ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 47478u), abs(_wgslsmith_mod_u32(5126u, 67829u ^ u_input.d.x)));
    global1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, ~func_3(Struct_3(arg_0.d, -1386f, vec4<f32>(413f, 1028f, 326f, -1000f))).x, u_input.a.x, abs(abs(-u_input.a.x))), vec4<i32>(_wgslsmith_div_i32(abs(2147483647i), 19763i), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_div_i32(1i, u_input.a.x)), -45635i, -u_input.a.x));
    var var_1 = Struct_3(all(vec4<bool>(false, true, arg_0.d & all(vec4<bool>(false, arg_0.d, arg_0.d, arg_0.d)), arg_0.d)), 1479f, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(-1427f, _wgslsmith_f_op_f32(-240f - -218f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), -228f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-120f, -908f))))));
    global0 = array<vec3<bool>, 7>();
    global1 = -_wgslsmith_dot_vec4_i32(vec4<i32>(~(-u_input.a.x), firstLeadingBit(_wgslsmith_add_i32(-982i, 1i)), -16829i << (u_input.c % 32u), countOneBits(i32(-1i) * -1i)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(-8614i, u_input.a.x, 1i, -1i), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)), vec4<i32>(~u_input.a.x, abs(2147483647i), -1i, u_input.a.x), !arg_0.d));
    return Struct_3(any(vec4<bool>(arg_0.d, false, true, all(global0[_wgslsmith_index_u32(~4501u, 7u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(740f * _wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1196f - _wgslsmith_f_op_f32(-var_1.c.x)), -1000f, _wgslsmith_f_op_vec2_f32(func_2()).x, var_1.c.x))));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec2<bool>) -> vec4<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(168f - arg_2.b)) + -109f), arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -428f)));
    let var_1 = select(~(~vec3<u32>(4294967295u, 0u, 1u) | min(~vec3<u32>(1u, u_input.d.x, 48012u), ~vec3<u32>(0u, 10724u, u_input.c))), vec3<u32>(firstLeadingBit(0u), ~(~reverseBits(u_input.e.x)), u_input.b), !select(arg_1, select(select(vec3<bool>(true, true, arg_1.x), vec3<bool>(true, false, false), false), !vec3<bool>(arg_3.x, arg_3.x, arg_2.a), vec3<bool>(false, arg_0.a, false)), vec3<bool>(true, arg_2.a, !arg_2.a)));
    var var_2 = Struct_2(37492u, -655f, Struct_1(1u >> (_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, 4294967295u), firstTrailingBit(u_input.c), 4294967295u) % 32u), (~u_input.e.x << (~3191u % 32u)) ^ var_1.x, ~reverseBits(var_1) | var_1, !(arg_0.c.x > _wgslsmith_f_op_f32(f32(-1f) * -1523f))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, -3330i, u_input.a.x, u_input.a.x), firstLeadingBit(~(vec4<i32>(0i, -2147483647i, 2147483647i, u_input.a.x) >> (vec4<u32>(18560u, 1u, 21186u, var_1.x) % vec4<u32>(32u))))));
    var var_3 = var_2.c;
    var var_4 = Struct_2(_wgslsmith_mult_u32(var_1.x, var_1.x), _wgslsmith_f_op_f32(ceil(-427f)), var_2.c, ~((_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2817i), u_input.a) >> (abs(1u) % 32u)) | min(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d, var_2.d, u_input.a.x, var_2.d), vec4<i32>(var_2.d, 19132i, u_input.a.x, 2147483647i)), -39274i)));
    return ~(~vec4<u32>(~4294967295u, var_3.b, ~_wgslsmith_div_u32(0u, var_2.a), var_2.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_i32(-1756i, firstLeadingBit(u_input.a.x));
    var var_0 = _wgslsmith_sub_vec4_u32(~func_6(func_5(func_1(-1581f)), global0[_wgslsmith_index_u32(0u, 7u)], func_5(func_1(-747f)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false))), select(vec4<u32>(max(u_input.c, u_input.e.x), u_input.c ^ (u_input.b << (59922u % 32u)), ~33627u, (4294967295u >> (u_input.d.x % 32u)) | _wgslsmith_mod_u32(u_input.e.x, u_input.c)), abs(~reverseBits(vec4<u32>(u_input.b, 82703u, u_input.b, 0u))), true));
    var var_1 = select(select(select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(-1505f == func_5(Struct_1(7887u, 4294967295u, var_0.xzw, true)).b, true), ~1u > var_0.x), vec2<bool>(all(select(vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(var_0.x << (0u % 32u), 7u)], !global0[_wgslsmith_index_u32(u_input.e.x, 7u)])), true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-753f)), _wgslsmith_f_op_f32(561f - -777f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-486f + _wgslsmith_f_op_f32(sign(2168f))) * 342f));
    global1 = -countOneBits(u_input.a.x);
    var var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.a.x, -1i, u_input.a.x >> (1u % 32u)), vec3<i32>(~79828i, ~u_input.a.x, u_input.a.x & 2147483647i), ~max(vec3<i32>(12522i, u_input.a.x, u_input.a.x), vec3<i32>(8660i, -9475i, u_input.a.x))), select(vec3<i32>(u_input.a.x, min(2147483647i, u_input.a.x), u_input.a.x), vec3<i32>(_wgslsmith_div_i32(-37151i, 1i), u_input.a.x | 0i, u_input.a.x), !all(vec3<bool>(true, var_1.x, true)))) >> ((_wgslsmith_mod_vec3_u32(firstLeadingBit(~var_0.xxy), ~var_0.yzw << ((vec3<u32>(var_0.x, var_0.x, var_0.x) ^ var_0.wwx) % vec3<u32>(32u))) ^ vec3<u32>(~_wgslsmith_div_u32(u_input.c, 0u), var_0.x, 4294967295u)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-532f)), _wgslsmith_f_op_f32(f32(-1f) * -1415f)))), -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-29893i, -6661i, u_input.a.x, var_2.x), vec4<i32>(23356i, var_2.x, reverseBits(1i), var_2.x >> (0u % 32u))), ~(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 1u, u_input.b, 0u), vec4<u32>(var_0.x, 13830u, u_input.b, 4294967295u) ^ vec4<u32>(u_input.d.x, var_0.x, u_input.e.x, u_input.d.x)) >> (reverseBits(abs(vec4<u32>(var_0.x, 16767u, u_input.c, var_0.x))) % vec4<u32>(32u))), ~var_0.xx);
}

