struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_5(false, _wgslsmith_mod_u32(_wgslsmith_mod_u32(~(~0u), 4294967295u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(34948u, 9235u, 4294967295u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(~11883u, ~7566u, ~30105u))), Struct_1(6008u), Struct_4(Struct_3(Struct_2(Struct_1(4294967295u), vec2<i32>(-2147483647i, 33638i), arg_0), Struct_2(Struct_1(4294967295u), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(50987i, u_input.a), true), _wgslsmith_f_op_f32(trunc(arg_0))), reverseBits(firstLeadingBit(vec2<u32>(87321u, 81159u))), vec2<bool>(true, true))));
    let var_1 = Struct_3(var_0.d.a.a, var_0.d.a.a, countOneBits(var_0.d.a.c), var_0.d.a.d);
    var var_2 = arg_0;
    let var_3 = Struct_4(var_0.d.a);
    let var_4 = Struct_5(false != any(vec2<bool>(var_0.d.a.d.x, var_1.c.x < var_0.b)), ~var_1.c.x, Struct_1(var_0.c.a), Struct_4(var_3.a));
    return Struct_1(var_4.c.a);
}

fn func_3() -> f32 {
    let var_0 = vec2<u32>(abs(_wgslsmith_div_u32(firstTrailingBit(1u) >> (~43545u % 32u), 1u)), reverseBits(1532u));
    var var_1 = Struct_4(Struct_3(Struct_2(func_2(_wgslsmith_f_op_f32(round(1255f))), max(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 12195i), vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(u_input.a, 2147483647i)), -251f), Struct_2(Struct_1(var_0.x), vec2<i32>(_wgslsmith_div_i32(1i, u_input.a), firstTrailingBit(u_input.a)), _wgslsmith_f_op_f32(abs(-2832f))), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 54206u) | ~vec2<u32>(var_0.x, 50593u), _wgslsmith_mult_vec2_u32(var_0 ^ var_0, var_0 << (var_0 % vec2<u32>(32u)))), vec2<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))))));
    var var_2 = firstLeadingBit(~(~(~15265u ^ (var_0.x & var_1.a.a.a.a))));
    var_1 = Struct_4(var_1.a);
    var_2 = var_1.a.c.x;
    return _wgslsmith_f_op_f32(max(-178f, var_1.a.b.c));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<f32>) -> f32 {
    let var_0 = false;
    var var_1 = Struct_5(all(select(!(!arg_1.d), vec2<bool>(true, true), any(!vec3<bool>(arg_1.d.x, false, true)))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(35799u, arg_2.b.a.a ^ arg_2.b.a.a), select(vec2<u32>(arg_1.c.x, arg_2.c.x), arg_2.c, arg_2.d.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b.a.a, arg_2.c.x, arg_1.b.a.a, 21563u), vec4<u32>(0u, 21717u, arg_1.a.a.a, 43320u)), _wgslsmith_mult_vec4_u32(vec4<u32>(30341u, arg_2.b.a.a, arg_1.b.a.a, arg_2.c.x), vec4<u32>(0u, 0u, arg_1.a.a.a, arg_2.b.a.a)) << (firstTrailingBit(vec4<u32>(arg_1.a.a.a, arg_2.c.x, arg_1.b.a.a, 44745u)) % vec4<u32>(32u)))), arg_2.b.a, Struct_4(Struct_3(arg_1.a, Struct_2(func_2(arg_1.b.c), -vec2<i32>(u_input.a, arg_2.b.b.x), 524f), ~(~arg_2.c), select(vec2<bool>(arg_2.d.x, false), vec2<bool>(true, arg_2.d.x), vec2<bool>(false, true)))));
    var var_2 = Struct_4(Struct_3(arg_1.b, Struct_2(var_1.d.a.b.a, vec2<i32>(max(2147483647i, arg_1.a.b.x), select(-7019i, 2147483647i, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d.a.b.c - arg_3.x), 1000f)), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(arg_2.c.x, var_1.b), 2966u), arg_1.c), select(!vec2<bool>(var_1.a, false), vec2<bool>(any(vec3<bool>(true, true, false)), arg_2.b.b.x > arg_2.a.b.x), !(32542i >= arg_2.a.b.x))));
    var var_3 = Struct_5(true, _wgslsmith_mult_u32(4294967295u, arg_2.c.x), var_1.c, Struct_4(var_1.d.a));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.a.a.c, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.c) * _wgslsmith_f_op_f32(f32(-1f) * -979f)), _wgslsmith_f_op_f32(func_3())) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2167f)), _wgslsmith_f_op_f32(var_3.d.a.a.c - _wgslsmith_f_op_f32(393f - 1258f)), _wgslsmith_f_op_f32(step(430f, -394f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(253f, -901f) + _wgslsmith_f_op_f32(step(var_2.a.b.c, var_1.d.a.a.c))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.a.c + arg_3.x)) - -216f);
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_4) -> f32 {
    var var_0 = func_2(1f);
    var_0 = arg_3.a.a.a;
    return _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1445f, arg_2.x), arg_2.xx, arg_3.a.d)))), _wgslsmith_f_op_vec2_f32(arg_2.zx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1103f, arg_3.a.b.c))))), Struct_3(Struct_2(arg_3.a.b.a, -arg_3.a.a.b & ~arg_3.a.b.b, _wgslsmith_f_op_f32(func_3())), arg_3.a.a, abs(_wgslsmith_add_vec2_u32(vec2<u32>(57064u, 0u), vec2<u32>(arg_1, 10194u))) ^ vec2<u32>(arg_0.x, ~0u), vec2<bool>(select(any(vec4<bool>(false, arg_3.a.d.x, arg_3.a.d.x, arg_3.a.d.x)), !arg_3.a.d.x, true), any(vec4<bool>(arg_3.a.d.x, arg_3.a.d.x, true, arg_3.a.d.x)))), arg_3.a, vec3<f32>(453f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)) * arg_3.a.b.c))));
}

fn func_5(arg_0: f32, arg_1: f32) -> Struct_2 {
    var var_0 = func_2(arg_0);
    let var_1 = Struct_4(Struct_3(Struct_2(func_2(arg_0), vec2<i32>(~34678i, u_input.a), arg_0), Struct_2(func_2(_wgslsmith_f_op_f32(-1447f + -2086f)), -vec2<i32>(u_input.a, 27167i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(arg_0 + arg_1))), reverseBits(vec2<u32>(var_0.a, 4294967295u)) ^ _wgslsmith_sub_vec2_u32(~vec2<u32>(71099u, var_0.a), _wgslsmith_div_vec2_u32(vec2<u32>(41053u, 72513u), vec2<u32>(var_0.a, 61327u))), !select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec4<bool>(false, true, false, false)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1))), vec3<f32>(_wgslsmith_f_op_f32(step(arg_0, arg_1)), 405f, _wgslsmith_f_op_f32(select(-781f, arg_1, true))), !select(vec3<bool>(var_1.a.d.x, true, var_1.a.d.x), vec3<bool>(var_1.a.d.x, var_1.a.d.x, var_1.a.d.x), vec3<bool>(false, var_1.a.d.x, false)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a.c, -162f, -2544f) * vec3<f32>(arg_0, var_1.a.b.c, -977f))))));
    let var_3 = _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(~(2147483647i & u_input.a), u_input.a, _wgslsmith_clamp_i32(-2147483647i, reverseBits(var_1.a.a.b.x), -u_input.a))), select(vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.a, 0i), abs(max(vec3<i32>(u_input.a, -32457i, var_1.a.a.b.x), vec3<i32>(var_1.a.b.b.x, u_input.a, var_1.a.a.b.x))), !var_1.a.d.x) >> (vec3<u32>(var_0.a, ~var_0.a, var_1.a.a.a.a) % vec3<u32>(32u)));
    var var_4 = arg_0;
    return Struct_2(Struct_1(~(var_1.a.c.x << (select(89373u, 0u, var_1.a.d.x) % 32u))), ~select(vec2<i32>(var_3.x, var_1.a.b.b.x), -reverseBits(vec2<i32>(19072i, 1i)), !vec2<bool>(var_1.a.d.x, false)), var_2.x);
}

fn func_6(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: bool) -> bool {
    let var_0 = ~select(arg_2.a.a, 65463u, all(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, arg_0.x, true, arg_3))));
    var var_1 = Struct_4(Struct_3(Struct_2(arg_2.a, ~arg_2.b, _wgslsmith_div_f32(arg_2.c, _wgslsmith_f_op_f32(arg_2.c * 1000f))), arg_2, vec2<u32>(min(var_0, ~0u), arg_2.a.a), arg_0.zz));
    let var_2 = arg_2.c;
    var_1 = Struct_4(Struct_3(Struct_2(func_5(_wgslsmith_f_op_f32(max(1447f, -816f)), _wgslsmith_div_f32(-1528f, arg_2.c)).a, arg_1.yy, -713f), Struct_2(arg_2.a, vec2<i32>(-35638i, 2147483647i), _wgslsmith_f_op_f32(func_3())), _wgslsmith_add_vec2_u32(~(~var_1.a.c), ~firstTrailingBit(var_1.a.c)), var_1.a.d));
    var_1 = Struct_4(Struct_3(arg_2, func_5(_wgslsmith_f_op_f32(var_1.a.b.c * _wgslsmith_f_op_f32(-511f - var_1.a.b.c)), -210f), max(vec2<u32>(0u, var_1.a.a.a.a), _wgslsmith_sub_vec2_u32(select(vec2<u32>(98886u, var_0), vec2<u32>(var_1.a.c.x, 21648u), vec2<bool>(arg_3, arg_3)), ~var_1.a.c)), select(vec2<bool>(var_1.a.d.x, !arg_0.x), select(var_1.a.d, select(vec2<bool>(arg_3, arg_0.x), vec2<bool>(true, var_1.a.d.x), vec2<bool>(arg_0.x, arg_0.x)), true), false)));
    return all(vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0), reverseBits(var_1.a.c)) < firstLeadingBit(var_1.a.c.x), arg_3, all(vec4<bool>(all(vec2<bool>(false, arg_0.x)), any(arg_0), arg_0.x, true)), false));
}

fn func_7(arg_0: bool) -> f32 {
    var var_0 = false;
    var_0 = any(vec4<bool>(arg_0, arg_0, all(!vec3<bool>(false, arg_0, arg_0)) | (arg_0 | arg_0), true));
    var var_1 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1f)))));
    var var_2 = vec4<i32>(~firstTrailingBit(u_input.a) & abs(u_input.a), -32876i, -18972i, reverseBits(_wgslsmith_div_i32(-25799i, u_input.a)));
    var_2 = vec4<i32>(-23975i, abs(min(abs(i32(-1i) * -29033i), var_2.x)), -20166i, u_input.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(737f + -1141f)))), _wgslsmith_f_op_f32(func_3()))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1611f) - -445f) - _wgslsmith_f_op_f32(func_7(func_6(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), abs(min(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(1i, -6953i, u_input.a))), func_5(_wgslsmith_f_op_f32(-193f * 1000f), _wgslsmith_f_op_f32(func_1(vec3<u32>(42175u, 0u, 0u), 27638u, vec4<f32>(539f, 308f, -1000f, -872f), Struct_4(Struct_3(Struct_2(Struct_1(30774u), vec2<i32>(u_input.a, 17764i), -1294f), Struct_2(Struct_1(47259u), vec2<i32>(u_input.a, u_input.a), 1095f), vec2<u32>(0u, 0u), vec2<bool>(true, true)))))), !any(vec4<bool>(true, false, false, false))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(func_3()))), -1000f, select(true, true, all(vec4<bool>(false, true, true, true))))), _wgslsmith_f_op_f32(sign(-522f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(1490f)), _wgslsmith_f_op_f32(f32(-1f) * -268f), _wgslsmith_f_op_f32(select(954f, 338f, true))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1396f, 998f, 1596f)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1683f, 319f, 757f)), vec3<f32>(202f, -326f, -1000f))))));
    let var_2 = _wgslsmith_mult_i32(reverseBits(select(~(u_input.a & -1003i), _wgslsmith_mult_i32(firstLeadingBit(u_input.a), u_input.a), true)), _wgslsmith_div_i32(~countOneBits(min(-1i, u_input.a)), abs(abs(u_input.a))));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_1.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -179f))), 1f)));
    var var_3 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_mult_u32(0u, 4294967295u), 1u, 31345u)), 10588u, 4804u));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -290f, var_1.x)), vec3<f32>(var_1.x, -1000f, 186f), true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1790f, -1108f, 1305f)))))));
    let var_4 = Struct_5(true, 1u, Struct_1(62814u), Struct_4(Struct_3(func_5(_wgslsmith_f_op_f32(-var_1.x), var_1.x), func_5(1036f, _wgslsmith_f_op_f32(var_1.x + var_1.x)), ~(vec2<u32>(var_3.a, 4294967295u) & vec2<u32>(var_3.a, 4294967295u)), vec2<bool>(all(vec4<bool>(true, false, false, true)), true))));
    var var_5 = Struct_4(Struct_3(Struct_2(Struct_1(~0u), var_4.d.a.a.b, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.x, var_4.d.a.b.c)))), Struct_2(var_4.d.a.a.a, var_4.d.a.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_4.d.a.b.c, -638f)) + var_1.x)), ~select(var_4.d.a.c, vec2<u32>(var_4.b, 4294967295u), var_4.d.a.d.x) >> (var_4.d.a.c % vec2<u32>(32u)), select(var_4.d.a.d, vec2<bool>(var_4.d.a.d.x, !var_4.a), !(u_input.a >= -2147483647i))));
    let var_6 = _wgslsmith_f_op_f32(-460f * 168f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_5(var_1.x, _wgslsmith_f_op_f32(-359f * var_5.a.a.c)).c + -687f), var_1.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1450f, var_5.a.b.c, 514f, 434f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-302f, var_6, -375f, -1389f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1044f, var_5.a.a.c, var_5.a.a.c, var_5.a.b.c))))), ~1u, -676f);
}

