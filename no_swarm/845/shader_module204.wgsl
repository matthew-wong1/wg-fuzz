struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(1i, -6008i, -28673i), Struct_2(1052f, vec2<i32>(1i, 2147483647i), vec2<f32>(-1860f, 350f), false), Struct_1(-58313i, vec2<f32>(1974f, 400f)), vec3<i32>(-9042i, i32(-2147483648), i32(-2147483648)), Struct_2(-322f, vec2<i32>(0i, 68541i), vec2<f32>(-291f, -182f), true));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5) -> i32 {
    var var_0 = vec3<f32>(-346f, _wgslsmith_f_op_f32(-2747f * _wgslsmith_f_op_f32(global0.c.b.x + _wgslsmith_f_op_f32(f32(-1f) * -404f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.b.x) * 463f));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    global0 = Struct_3(vec3<i32>(-1i) * -min(select(vec3<i32>(u_input.e, -20513i, 0i), global0.d, vec3<bool>(global0.b.d, false, true)), vec3<i32>(global0.b.b.x, u_input.e, 25286i) ^ global0.a), global0.b, Struct_1(~2147483647i ^ arg_1.d.a, global0.e.c), -select(firstTrailingBit(max(vec3<i32>(global0.d.x, 25005i, 22105i), vec3<i32>(2510i, 35249i, 4876i))), ~select(global0.d, vec3<i32>(global0.e.b.x, global0.d.x, arg_1.b.b.x), true), global0.e.d), global0.e);
    let var_2 = select(select(select(!(!vec3<bool>(global0.b.d, true, global0.b.d)), !(!vec3<bool>(arg_1.a, false, false)), select(vec3<bool>(false, arg_1.a, false), select(vec3<bool>(arg_1.a, global0.e.d, false), vec3<bool>(false, true, true), vec3<bool>(true, global0.e.d, global0.b.d)), vec3<bool>(global0.b.d, false, arg_1.b.d))), !(!(!vec3<bool>(global0.e.d, true, true))), !(!(!vec3<bool>(false, arg_1.a, false)))), !select(select(!vec3<bool>(true, false, arg_1.a), !vec3<bool>(global0.e.d, false, true), arg_1.c.x < 342f), vec3<bool>(all(vec4<bool>(false, arg_1.b.d, true, true)), u_input.a < arg_1.b.b.x, all(vec3<bool>(false, true, global0.e.d))), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, global0.e.d), vec3<bool>(arg_1.b.d, global0.b.d, arg_1.a))), false);
    let var_3 = vec2<bool>(_wgslsmith_div_u32(~u_input.b.x & u_input.c, ~arg_0.x) <= 23934u, any(select(var_2.zz, vec2<bool>(global0.e.d, !arg_1.a), false | arg_1.a)));
    return global0.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>) -> f32 {
    global0 = Struct_3(global0.a, Struct_2(-445f, firstLeadingBit(arg_2), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2423f, arg_0.b.x) + arg_0.b)), global0.e.d), Struct_1(u_input.e, _wgslsmith_f_op_vec2_f32(abs(global0.e.c))), vec3<i32>(abs(countOneBits(firstLeadingBit(9037i))), (~u_input.a & -14216i) << ((1u << (~u_input.c % 32u)) % 32u), -select(_wgslsmith_add_i32(arg_2.x, 41018i), min(-1i, u_input.a), global0.e.d)), global0.b);
    let var_0 = select(select(!select(vec4<bool>(global0.e.d, global0.e.d, true, true), !vec4<bool>(global0.b.d, true, false, global0.e.d), all(vec3<bool>(false, global0.e.d, false))), select(vec4<bool>(any(vec2<bool>(false, true)), false, !global0.e.d, true), vec4<bool>(any(vec2<bool>(false, global0.b.d)), false, true, global0.e.d || global0.e.d), !global0.e.d), !global0.b.d), vec4<bool>(global0.b.d, true, global0.e.d, all(!vec4<bool>(global0.b.d, global0.b.d, global0.e.d, global0.e.d))), all(vec2<bool>(any(vec2<bool>(false, global0.b.d)) == (global0.b.d || global0.b.d), arg_1 > min(-19427i, arg_1))));
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(~select(~4294967295u, reverseBits(u_input.c), var_0.x), ~(abs(u_input.c) & u_input.d.x), u_input.c), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, ~u_input.d.x, u_input.d.x), ~u_input.d));
    var var_2 = Struct_4(267f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-192f, _wgslsmith_f_op_f32(arg_0.b.x + global0.b.a)) + -1000f));
    var_2 = Struct_4(global0.c.b.x, ~((~var_2.b & 41898u) << (_wgslsmith_add_u32(u_input.c, u_input.c ^ 17754u) % 32u)), _wgslsmith_div_f32(global0.e.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1187f)))))));
    return -1072f;
}

fn func_2() -> f32 {
    let var_0 = Struct_4(global0.c.b.x, 3230u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.e.c.x, _wgslsmith_f_op_f32(-1342f - global0.e.a), true)), 1569f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.c * 1015f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-112f * 1038f), var_0.c)), -163f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.b.x + 634f)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(798f, 694f)));
    let var_3 = Struct_3(~(~vec3<i32>(global0.a.x >> (1u % 32u), ~u_input.a, 0i)), Struct_2(var_1.x, (select(global0.a.zy, vec2<i32>(u_input.a, 1i), vec2<bool>(global0.e.d, global0.b.d)) | _wgslsmith_sub_vec2_i32(vec2<i32>(global0.c.a, global0.d.x), vec2<i32>(1i, 2147483647i))) | global0.d.yx, vec2<f32>(_wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(select(103f, -212f, false)), 31618i > global0.d.x)), _wgslsmith_f_op_f32(-1429f + _wgslsmith_div_f32(var_0.c, var_1.x))), select(36441u, 1u, all(vec2<bool>(true, false))) <= ~u_input.c), Struct_1(-(-13927i >> (_wgslsmith_sub_u32(u_input.b.x, var_0.b) % 32u)), global0.b.c), -_wgslsmith_add_vec3_i32(countOneBits(global0.d), _wgslsmith_add_vec3_i32(vec3<i32>(global0.d.x, -32645i, global0.c.a), vec3<i32>(u_input.a, 0i, global0.c.a))), Struct_2(870f, max(global0.b.b, ~vec2<i32>(-1i, u_input.e) & global0.d.yx), vec2<f32>(_wgslsmith_f_op_f32(-global0.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * global0.c.b.x))), global0.e.d));
    let var_4 = var_0;
    return _wgslsmith_f_op_f32(func_4(global0.c, 9299i & _wgslsmith_mod_i32(func_3(vec3<u32>(16583u, 13679u, u_input.c), Struct_5(var_3.e.d, Struct_2(global0.b.a, vec2<i32>(-17427i, 0i), var_1.yw, true), vec3<f32>(var_4.a, var_4.a, global0.b.a), global0.c)), ~(~u_input.e)), vec2<i32>(-2147483647i, global0.e.b.x)));
}

fn func_5(arg_0: f32, arg_1: Struct_4) -> Struct_3 {
    global0 = Struct_3(select(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(19672i, u_input.a, 11708i, u_input.e), vec4<i32>(u_input.e, u_input.a, 18284i, u_input.e)), 0i, u_input.e), min(_wgslsmith_div_vec3_i32(global0.d, vec3<i32>(1i, u_input.e, global0.e.b.x)), global0.d), vec3<bool>(global0.e.d, any(vec2<bool>(global0.e.d, global0.b.d)), any(vec2<bool>(false, true)))) >> (~min(vec3<u32>(0u, 22996u, u_input.b.x) | u_input.d, vec3<u32>(u_input.c, 0u, 59664u)) % vec3<u32>(32u)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1329f))), ~_wgslsmith_div_vec2_i32(global0.a.yz, vec2<i32>(global0.b.b.x, global0.e.b.x)), _wgslsmith_f_op_vec2_f32(ceil(global0.c.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.e.a, arg_0)), _wgslsmith_f_op_f32(trunc(932f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -529f))), Struct_1(min(~(-10688i), 1i), vec2<f32>(-901f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(global0.c, -5636i, global0.e.b)), _wgslsmith_f_op_f32(step(344f, 2591f)))))), vec3<i32>(~(min(66275i, 0i) >> (_wgslsmith_clamp_u32(4294967295u, arg_1.b, 0u) % 32u)), u_input.e, global0.a.x), global0.b);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-437f, global0.b.c.x, 1053f) * vec3<f32>(995f, arg_1.c, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-817f, -350f, arg_1.a))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a, global0.e.a, global0.c.b.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1151f, arg_0, -433f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a, -1000f, arg_0)))) - vec3<f32>(global0.c.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1462f), _wgslsmith_f_op_f32(-198f - -913f))) * vec3<f32>(_wgslsmith_f_op_f32(abs(global0.c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(abs(751f)))));
    let var_1 = abs(reverseBits(-(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.e.b.x, u_input.a, -9251i, -14413i), vec4<i32>(global0.a.x, u_input.a, 1i, 0i)) & _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a, global0.a.x, global0.e.b.x), vec4<i32>(39367i, 1i, global0.e.b.x, 17903i)))));
    let var_2 = _wgslsmith_clamp_u32(u_input.d.x, ~u_input.b.x, select(arg_1.b, ~abs(abs(55295u)), !(global0.b.c.x > 140f) && !(!global0.e.d)));
    var var_3 = u_input.b.zz << (firstLeadingBit(u_input.d.zx) % vec2<u32>(32u));
    return Struct_3(global0.a, global0.b, Struct_1(1i, global0.b.c), reverseBits(vec3<i32>(71874i, global0.d.x, -(global0.a.x << (12981u % 32u)))), global0.e);
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    let var_0 = func_5(_wgslsmith_f_op_f32(546f * 475f), Struct_4(arg_0.a, 0u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-786f, _wgslsmith_f_op_f32(-global0.e.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), any(select(vec4<bool>(arg_0.d, global0.e.d, global0.e.d, false), vec4<bool>(arg_0.d, true, false, true), vec4<bool>(false, arg_0.d, true, true)))))));
    let var_1 = Struct_5(var_0.b.d, arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.b.a), _wgslsmith_f_op_f32(f32(-1f) * -216f), _wgslsmith_f_op_f32(-722f - var_0.b.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1196f, var_0.b.a, 1050f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-246f, var_0.e.a, var_0.b.a), vec3<f32>(1000f, 2026f, arg_0.a), var_0.b.d))))), Struct_1(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec2_f32(-var_0.e.c)));
    global0 = var_0;
    global0 = var_0;
    global0 = func_5(arg_0.c.x, Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -400f), u_input.b.x, var_1.c.x));
    return var_0.e;
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(u_input.c >> (u_input.c % 32u)), 36442u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, u_input.c), _wgslsmith_div_vec3_u32(vec3<u32>(47725u, u_input.c, u_input.d.x), vec3<u32>(u_input.b.x, 49158u, 4294967295u)))) << (~vec3<u32>(0u, 0u, 120486u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(firstLeadingBit(u_input.b.wwx), firstTrailingBit(u_input.d), vec3<u32>(_wgslsmith_sub_u32(0u, u_input.b.x), u_input.b.x, u_input.b.x)));
    var var_1 = global0.b.d;
    var var_2 = abs(u_input.a);
    global0 = Struct_3(reverseBits(_wgslsmith_add_vec3_i32(global0.d, global0.a) << (u_input.d % vec3<u32>(32u))), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-412f, 1000f)))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 233f)), select(~u_input.b.x, ~38787u, all(vec4<bool>(false, global0.b.d, arg_1.e.d, arg_1.e.d))), -1091f)).b, arg_1.c, (vec3<i32>(-1i) * -countOneBits(arg_1.a)) << (countOneBits(~min(vec3<u32>(var_0, 20966u, 4294967295u), u_input.d)) % vec3<u32>(32u)), func_5(_wgslsmith_f_op_f32(-arg_0.x), Struct_4(_wgslsmith_f_op_f32(154f - global0.b.c.x), u_input.d.x, _wgslsmith_div_f32(-819f, _wgslsmith_f_op_f32(-arg_0.x)))).e);
    var var_3 = _wgslsmith_f_op_f32(func_2());
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(-_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-2147483647i, 1i, -2147483647i)), global0.a), global0.b, func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.c.x, -111f, 615f))))), Struct_3(~global0.a, func_1(Struct_2(global0.e.a, global0.b.b, global0.e.c, false), u_input.c), global0.c, -_wgslsmith_add_vec3_i32(vec3<i32>(global0.c.a, 2147483647i, global0.b.b.x), global0.d), func_5(-2691f, Struct_4(796f, u_input.c, -232f)).e)), vec3<i32>(10750i >> (min(_wgslsmith_add_u32(0u, u_input.c), 1u) % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.e, 2147483647i, global0.d.x, -1i), ~vec4<i32>(u_input.e, global0.d.x, 0i, 4041i)) | ((29436i >> (1u % 32u)) << (u_input.d.x % 32u)), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.e, 0i, global0.c.a), _wgslsmith_add_vec3_i32(global0.a, vec3<i32>(global0.a.x, global0.b.b.x, 41078i))) << (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b.x, 668u), 4359u, 243u) % 32u)), global0.b);
    global0 = func_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.e.c.x, -1555f), func_5(global0.b.c.x, Struct_4(982f, 32281u, global0.e.c.x)).c.b.x)))))), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1002f)) - 1485f), 0u, global0.e.a));
    var var_0 = global0.e.b.x;
    global0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.c.b.x, -1331f))) - _wgslsmith_f_op_f32(f32(-1f) * -2679f)) - global0.e.a), Struct_4(432f, u_input.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.a - -1017f)), _wgslsmith_f_op_f32(trunc(-269f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(1i, -1i), 1027f, abs(firstLeadingBit(u_input.b.xxy)));
}

