struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = select(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1088f) + _wgslsmith_f_op_f32(step(1000f, -648f))) >= 736f, any(vec2<bool>(true, any(vec4<bool>(false, false, true, true)))), false, false), select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), u_input.b.x >= ~(_wgslsmith_add_u32(u_input.b.x, u_input.b.x) >> (~u_input.b.x % 32u)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(628f)), -267f);
    var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_1.x * 1384f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2397f)) * 503f))))));
    let var_2 = Struct_2(!vec3<bool>(any(var_0), true, var_0.x), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-709f, -1374f), vec2<f32>(278f, 259f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, var_1.x))))), var_0.x, abs(~reverseBits(vec3<i32>(0i, -10446i, 1i)))), var_0.x, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - vec2<f32>(-615f, var_1.x)) + vec2<f32>(1f, 1f)) * vec2<f32>(-271f, _wgslsmith_f_op_f32(floor(-714f)))), any(vec3<bool>(!var_0.x, var_0.x, false)), vec3<i32>(0i, _wgslsmith_div_i32(i32(-1i) * -66482i, _wgslsmith_add_i32(1i, -15064i)), -(~(-19743i)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-335f, -724f)))), true, vec3<i32>(-1i, reverseBits(~(-8313i)), 1i)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-372f * -1356f), 1f, var_2.e.a.x, _wgslsmith_div_f32(-181f, var_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 831f, 2516f, var_2.d.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e.a.x, -150f, var_2.e.a.x, var_1.x)))));
    return firstTrailingBit(~(-select(_wgslsmith_clamp_i32(-35750i, var_2.b.c.x, -27122i), -43953i, true)));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(338f))), 2470f, _wgslsmith_f_op_f32(1640f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -122f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2512f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1100f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(153f - 1639f)))));
    var var_1 = vec2<bool>(0u > u_input.b.x, false);
    let var_2 = vec4<i32>(1i, -1i, ~(-57353i), _wgslsmith_mod_i32(-abs(1i), -select(33593i, -38326i, var_1.x) | abs(-2147483647i)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(118f + var_0.x))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), var_0.x)), _wgslsmith_f_op_f32(max(1716f, var_0.x)), -297f);
    var var_3 = Struct_3(-func_3());
    return Struct_3(var_3.a ^ select(var_2.x, -var_3.a, any(vec2<bool>(var_1.x, true))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: vec3<i32>) -> bool {
    var var_0 = Struct_2(vec3<bool>(!select(false, arg_0 < arg_0, true), false, !all(vec2<bool>(false, false))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(960f, -572f)), -1099f), true, -select(_wgslsmith_mult_vec3_i32(arg_3, arg_3), -vec3<i32>(arg_2, arg_1.a, arg_1.a), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))), false, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1355f), 682f)), true, _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -arg_3, abs(vec3<i32>(arg_1.a, -31050i, arg_1.a)), abs(arg_3))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1528f, -240f))), select(true, arg_3.x == _wgslsmith_sub_i32(-13944i, arg_2), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)))), countOneBits(~(~vec3<i32>(-2147483647i, arg_2, arg_1.a)))));
    var var_1 = firstTrailingBit(abs(-select(-vec4<i32>(arg_3.x, arg_1.a, arg_1.a, arg_3.x), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.e.c.x, -2147483647i, 25217i, -10107i), vec4<i32>(arg_3.x, var_0.d.c.x, arg_3.x, 2147483647i)), !vec4<bool>(var_0.b.b, var_0.b.b, var_0.c, false))));
    var var_2 = vec3<u32>(49381u, min(arg_0, _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(7575u, u_input.a.x), ~u_input.a.x) | 1u), 1u);
    var_0 = Struct_2(var_0.a, var_0.e, var_0.b.b, Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -932f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a.x + var_0.d.a.x)) <= -1145f, var_0.e.c), var_0.b);
    let var_3 = var_0.b.a.x;
    return any(select(vec4<bool>(true, false, !(!var_0.b.b), false), select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.b.b, var_0.b.b, !var_0.b.b, all(vec3<bool>(var_0.a.x, var_0.d.b, false))), select(select(vec4<bool>(false, var_0.b.b, true, var_0.a.x), vec4<bool>(var_0.b.b, var_0.e.b, var_0.c, var_0.d.b), false), vec4<bool>(var_0.b.b, var_0.e.b, false, true), vec4<bool>(true, var_0.c, var_0.e.b, var_0.c))), !select(select(vec4<bool>(false, true, true, var_0.d.b), vec4<bool>(var_0.d.b, var_0.c, var_0.a.x, true), vec4<bool>(var_0.b.b, false, true, false)), select(vec4<bool>(var_0.e.b, true, false, var_0.a.x), vec4<bool>(var_0.c, true, var_0.b.b, var_0.c), true), vec4<bool>(true, var_0.d.b, var_0.b.b, var_0.c))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = vec3<i32>(arg_1.c.x, -40576i, arg_2.c.x);
    var var_1 = !vec3<bool>(!func_4(select(arg_0.x, arg_0.x, false), func_2(19864u, 12103u), abs(-1i), reverseBits(arg_2.c)), arg_1.b, arg_1.b);
    var var_2 = !(!arg_2.b);
    var var_3 = vec3<u32>(u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(~arg_0.x, _wgslsmith_mult_u32(4294967295u, 1u)), arg_0.x), _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(u_input.b, abs(vec3<u32>(u_input.b.x, u_input.b.x, 58025u))), arg_0));
    let var_4 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(var_0.x, 16531i, -17904i, 0i)), vec4<i32>(-arg_2.c.x, -1i, arg_1.c.x, _wgslsmith_mult_i32(arg_1.c.x, var_0.x))) << (~abs(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.a.x)) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_i32(min(~vec4<i32>(arg_1.c.x, arg_2.c.x, arg_2.c.x, arg_2.c.x), min(vec4<i32>(var_0.x, 2147483647i, -28183i, var_0.x), vec4<i32>(-2147483647i, -2147483647i, arg_1.c.x, arg_1.c.x))), reverseBits(~vec4<i32>(-21938i, var_0.x, arg_1.c.x, 1i))));
    return (~u_input.b.x <= min(_wgslsmith_mod_u32(~arg_0.x, ~1u), u_input.b.x)) || all(!vec4<bool>(true, false, all(var_1.zx), false));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> bool {
    var var_0 = arg_1.a.x;
    let var_1 = Struct_2(vec3<bool>(u_input.a.x >= ~26088u, any(!vec2<bool>(arg_2, true)), all(select(vec2<bool>(true, true), !vec2<bool>(arg_2, arg_1.b), any(vec3<bool>(arg_1.b, arg_1.b, arg_2))))), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1.a - _wgslsmith_f_op_vec2_f32(arg_1.a + vec2<f32>(arg_1.a.x, arg_1.a.x))))), arg_1.b, reverseBits(vec3<i32>(_wgslsmith_div_i32(-2147483647i, 1i), _wgslsmith_dot_vec2_i32(arg_1.c.yy, vec2<i32>(arg_3.a, 57572i)), ~0i))), !any(vec4<bool>(any(vec3<bool>(arg_2, false, arg_2)), arg_2 || true, arg_1.b, arg_1.b)), Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1414f, arg_1.a.x)))))), any(!(!vec4<bool>(true, false, arg_1.b, arg_1.b))), vec3<i32>(0i, arg_1.c.x, _wgslsmith_add_i32(-37129i, arg_3.a))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.a.x, 680f), vec2<f32>(595f, -282f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_1.a)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, arg_1.a.x), arg_1.a)))), _wgslsmith_div_f32(-920f, _wgslsmith_div_f32(1211f, arg_1.a.x)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1532f + -2281f)), select(vec3<i32>(-1i) * -arg_1.c, min(_wgslsmith_clamp_vec3_i32(arg_1.c, vec3<i32>(arg_1.c.x, arg_1.c.x, arg_1.c.x), vec3<i32>(arg_3.a, -15337i, 0i)), abs(vec3<i32>(arg_1.c.x, 0i, -1i))), false)));
    var var_2 = vec4<i32>(firstLeadingBit(-2147483647i), -5705i, 33078i, func_2(min(1u, u_input.b.x << (u_input.b.x % 32u)), arg_0.x).a) << (~countOneBits(max(vec4<u32>(arg_0.x, u_input.a.x, arg_0.x, u_input.a.x) & vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, arg_0.x, arg_0.x))) % vec4<u32>(32u));
    let var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, firstLeadingBit(arg_0.x), reverseBits(arg_0.x), _wgslsmith_add_u32(0u, 34427u)) ^ ~(vec4<u32>(36187u, 4294967295u, u_input.a.x, 4757u) << (vec4<u32>(34170u, arg_0.x, u_input.b.x, 1u) % vec4<u32>(32u))), select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, 22511u, 47695u, 8393u), vec4<u32>(u_input.a.x, 4294967295u, arg_0.x, arg_0.x)), max(vec4<u32>(43907u, arg_0.x, arg_0.x, 4294967295u), vec4<u32>(1u, arg_0.x, 46417u, 4921u)), vec4<bool>(false, arg_1.b, var_1.a.x, true)) | abs(~vec4<u32>(1u, u_input.a.x, 40479u, 59526u))), ~_wgslsmith_mod_u32(5551u, u_input.b.x));
    var_0 = var_1.e.a.x;
    return select(all(var_1.a), all(vec3<bool>(func_3() < ~arg_3.a, true, all(!var_1.a))), any(vec3<bool>(all(vec4<bool>(arg_1.b, var_1.d.b, true, var_1.e.b)) || all(vec2<bool>(arg_1.b, arg_2)), arg_1.b, any(vec4<bool>(false, false, var_1.c, false)) | func_4(0u, Struct_3(0i), var_2.x, var_1.d.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!vec3<bool>(true, func_5(u_input.a, Struct_1(vec2<f32>(-1141f, -1183f), true, vec3<i32>(1i, 1i, 0i)), func_1(u_input.b, Struct_1(vec2<f32>(691f, -1181f), false, vec3<i32>(-27567i, -30808i, 2147483647i)), Struct_1(vec2<f32>(-1190f, 466f), true, vec3<i32>(-1i, -55637i, -16615i)), 607f), Struct_3(30354i)), true & func_4(u_input.a.x, Struct_3(15779i), 2978i, vec3<i32>(-34037i, -2147483647i, -49921i))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1584f, -746f))), 1394f), any(vec4<bool>(true, false, true, true)), vec3<i32>(0i, firstTrailingBit(5512i), -abs(54918i))), false, Struct_1(vec2<f32>(_wgslsmith_div_f32(829f, _wgslsmith_f_op_f32(abs(-1109f))), 169f), true != (reverseBits(-2147483647i) >= select(-1i, -76270i, true)), min(-(vec3<i32>(35776i, 2829i, -8343i) << (vec3<u32>(4294967295u, u_input.a.x, 2951u) % vec3<u32>(32u))), vec3<i32>(~(-2147483647i), i32(-1i) * -2147483647i, abs(50071i)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(360f)) * _wgslsmith_f_op_f32(1988f + 123f)), _wgslsmith_f_op_f32(max(-475f, _wgslsmith_f_op_f32(sign(746f))))), true, ~firstLeadingBit(vec3<i32>(1i, 1i, 1i))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(var_0.b.a))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.d.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(813f, var_0.b.a.x) + vec2<f32>(-1201f, var_0.b.a.x)))) - _wgslsmith_f_op_vec2_f32(-var_0.d.a)), !var_0.a.yx)), !all(vec4<bool>(!var_0.b.b, true, var_0.d.c.x != var_0.d.c.x, any(vec4<bool>(var_0.a.x, false, var_0.d.b, var_0.b.b)))), reverseBits(var_0.b.c));
    var var_2 = _wgslsmith_mult_vec2_u32(firstLeadingBit(countOneBits(~(~vec2<u32>(u_input.b.x, 38587u)))), ~vec2<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.b.x, 0u), u_input.b.zz), vec2<u32>(u_input.a.x, u_input.a.x) >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)))));
    var var_3 = select(select(!(!(!vec4<bool>(true, false, var_0.a.x, true))), vec4<bool>(!any(var_0.a), ~var_2.x > u_input.b.x, var_0.c, true), true), select(vec4<bool>(var_1.b, var_0.d.b, var_0.e.b, (var_0.b.b && var_1.b) || var_0.b.b), !vec4<bool>(!var_0.b.b, true, !var_0.b.b, true || var_0.c), select(vec4<bool>(true, var_1.b, true, false | var_1.b), vec4<bool>(true, var_1.b, var_1.a.x > var_1.a.x, false), all(vec2<bool>(false, var_0.a.x)))), vec4<bool>(true, false, !func_1(u_input.b, Struct_1(var_0.e.a, var_0.e.b, vec3<i32>(34093i, -35275i, var_0.b.c.x)), Struct_1(var_1.a, var_1.b, vec3<i32>(var_1.c.x, var_0.e.c.x, var_0.b.c.x)), _wgslsmith_f_op_f32(sign(1297f))), all(vec4<bool>(func_1(u_input.b, var_1, Struct_1(vec2<f32>(265f, -1585f), var_0.d.b, var_1.c), var_1.a.x), var_0.d.b, var_1.b && false, true))));
    var var_4 = !vec4<bool>(any(vec4<bool>(var_3.x, true, var_3.x, false)) | var_3.x, select(false, func_1(vec3<u32>(var_2.x, var_2.x, u_input.a.x) << (u_input.b % vec3<u32>(32u)), var_1, Struct_1(vec2<f32>(var_0.d.a.x, var_0.d.a.x), var_1.b, var_0.d.c), _wgslsmith_f_op_f32(-var_1.a.x)), var_1.b), true, select(false, true, var_1.b));
    var var_5 = reverseBits(~u_input.b.xy);
    var var_6 = -163f;
    let var_7 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-1424f, var_1.a.x, var_0.e.a.x, -311f), vec4<f32>(412f, var_0.b.a.x, 1166f, 170f)), vec4<f32>(var_1.a.x, 1000f, var_0.d.a.x, 351f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.a.x, 470f, var_0.e.a.x, -1381f), vec4<f32>(786f, -599f, var_1.a.x, var_1.a.x), vec4<bool>(false, var_4.x, true, var_3.x)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1014f, var_1.a.x, 663f, var_1.a.x) * vec4<f32>(var_1.a.x, var_1.a.x, 1000f, var_1.a.x)) + vec4<f32>(var_1.a.x, -530f, var_0.e.a.x, -946f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-618f, 771f, var_0.b.a.x, var_0.e.a.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1267f, 1295f, -1141f, var_1.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(38493i, 48867i, var_0.b.c.x), var_0.e.c.x, ~_wgslsmith_clamp_vec2_u32(~u_input.a | ~u_input.b.zz, vec2<u32>(var_2.x, var_2.x), ~u_input.b.yz));
}

