struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, _wgslsmith_sub_u32(4294967295u, 1u)), vec2<u32>(1u, 1u))), vec2<bool>(true, select(true, true, all(vec4<bool>(false, false, false, false)))), vec3<bool>(!(!any(vec2<bool>(true, false))), true && any(vec2<bool>(false, true)), all(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false))), vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(~6655u, abs(22349u), 106079u), firstLeadingBit(~vec3<u32>(606u, 52927u, 4294967295u)))), vec3<f32>(-1786f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1380f) + _wgslsmith_f_op_f32(f32(-1f) * -115f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1655f)) + _wgslsmith_div_f32(558f, 1173f))))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.e.x))) + var_0.e.x);
    let var_1 = Struct_1(countOneBits(58066u) & abs(1u ^ max(var_0.a, var_0.d.x)), select(!select(select(var_0.c.yx, vec2<bool>(var_0.b.x, false), var_0.b), !var_0.b, true), select(vec2<bool>(var_0.c.x, u_input.a.x > 0i), !vec2<bool>(var_0.c.x, var_0.b.x), false), false), var_0.c, var_0.d, var_0.e);
    var var_2 = Struct_1(_wgslsmith_mult_u32(~(8230u | (var_1.a | 4294967295u)), ~firstLeadingBit(_wgslsmith_sub_u32(var_1.d.x, 1u))), var_0.b, var_1.c, vec2<u32>(var_1.a, var_1.d.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.e) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_1.e)))))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-754f + _wgslsmith_div_f32(389f, var_2.e.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1181f * -450f), _wgslsmith_f_op_f32(f32(-1f) * -218f))), -1000f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-122f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.e.x, 308f)) * _wgslsmith_f_op_f32(-var_2.e.x))) + _wgslsmith_f_op_f32(sign(-562f)));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.e + var_1.e)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(727f, -243f, 1208f)))))))));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = ~vec2<u32>(57346u, arg_0.a);
    var var_1 = -12795i;
    var var_2 = Struct_1(4110u, arg_0.b, arg_0.c, firstLeadingBit(abs(min(~arg_0.d, vec2<u32>(0u, arg_0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.e, vec3<f32>(-1000f, arg_0.e.x, arg_0.e.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.e.x, arg_0.e.x, -354f) * vec3<f32>(arg_0.e.x, arg_0.e.x, arg_0.e.x))))));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.e.x - _wgslsmith_f_op_f32(f32(-1f) * -954f))))))));
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(138f + arg_0.e.x)))));
    return vec3<bool>(all(arg_0.c.zz), any(select(select(vec4<bool>(true, false, arg_0.c.x, false), select(vec4<bool>(arg_0.b.x, arg_0.b.x, var_2.c.x, true), vec4<bool>(var_2.b.x, true, arg_0.c.x, arg_0.c.x), false), vec4<bool>(true, false, var_2.b.x, var_2.b.x)), vec4<bool>(all(vec4<bool>(arg_0.b.x, false, arg_0.c.x, true)), !arg_0.c.x, arg_0.e.x >= -871f, arg_0.c.x | arg_0.b.x), any(vec4<bool>(var_2.c.x, false, var_2.b.x, var_2.c.x)) || (var_2.e.x == arg_0.e.x))), all(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, arg_0.b.x, var_2.b.x), true), select(select(vec4<bool>(false, false, var_2.b.x, var_2.c.x), vec4<bool>(arg_0.b.x, arg_0.c.x, var_2.b.x, var_2.b.x), vec4<bool>(true, var_2.b.x, var_2.b.x, false)), select(vec4<bool>(var_2.c.x, arg_0.b.x, var_2.c.x, var_2.c.x), vec4<bool>(arg_0.b.x, true, arg_0.b.x, false), vec4<bool>(true, arg_0.b.x, var_2.b.x, var_2.c.x)), arg_0.c.x), var_2.b.x && (u_input.a.x <= -5741i))));
}

fn func_1() -> Struct_1 {
    let var_0 = firstTrailingBit(reverseBits(u_input.a.x));
    global0 = -1000f;
    let var_1 = u_input.a.x;
    var var_2 = vec2<i32>(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_div_i32(u_input.a.x, 74540i)) & abs(-64954i), ~var_0), firstLeadingBit(abs(1i)));
    let var_3 = vec3<bool>(false, !(all(func_2(Struct_1(1u, vec2<bool>(true, false), vec3<bool>(true, false, true), vec2<u32>(54045u, 86990u), vec3<f32>(-721f, 217f, -368f)))) | true), !((~45015u | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 40028u, 0u), vec4<u32>(1u, 4294967295u, 21757u, 15479u))) >= _wgslsmith_clamp_u32(1u, 4072u, firstLeadingBit(49578u))));
    return Struct_1(abs(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~36460u, ~74802u), _wgslsmith_dot_vec2_u32(vec2<u32>(63023u, 4294967295u), vec2<u32>(30588u, 1u)) >> (~34465u % 32u), ~max(14556u, 0u))), !(!var_3.xz), !var_3, _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(reverseBits(39224u), reverseBits(0u))), ~vec2<u32>(firstTrailingBit(1u), ~4294967295u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1442f, -463f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -694f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f) - -232f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~(~(~_wgslsmith_div_vec2_u32(vec2<u32>(25907u, 25797u), vec2<u32>(1u, 19852u)))));
    let var_1 = abs(vec2<i32>(u_input.a.x, _wgslsmith_div_i32(~max(u_input.a.x, 2147483647i), u_input.a.x)));
    var var_2 = func_1();
    let var_3 = Struct_1(~0u, vec2<bool>(select(func_2(Struct_1(var_0.x, vec2<bool>(false, var_2.c.x), vec3<bool>(true, false, true), vec2<u32>(var_0.x, var_2.a), vec3<f32>(-786f, 1516f, -1076f))).x, select(true, any(vec2<bool>(false, true)), true), false), false || var_2.b.x), vec3<bool>(var_2.b.x, var_2.b.x, true), _wgslsmith_clamp_vec2_u32(firstTrailingBit(var_2.d | (var_0 << (var_2.d % vec2<u32>(32u)))), _wgslsmith_div_vec2_u32(var_0, _wgslsmith_sub_vec2_u32(var_0, abs(vec2<u32>(4294967295u, var_0.x)))), abs(vec2<u32>(_wgslsmith_sub_u32(var_0.x, 4294967295u), var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 217f, _wgslsmith_f_op_f32(f32(-1f) * -253f)))));
    var_2 = func_1();
    var var_4 = _wgslsmith_div_f32(-150f, var_2.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(897f, var_2.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.a.xz), _wgslsmith_sub_vec2_i32(u_input.a.wy, vec2<i32>(var_1.x, u_input.a.x))), u_input.a.x, u_input.a.x), u_input.a.yzw), vec4<u32>(73004u, ~(~var_0.x), abs(0u) & _wgslsmith_add_u32(~0u, var_3.a), 87887u));
}

