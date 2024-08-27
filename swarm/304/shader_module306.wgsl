struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 48882u;

var<private> global1: bool;

var<private> global2: u32 = 0u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(exp2(arg_0.a)), arg_0.d, vec2<f32>(_wgslsmith_f_op_f32(-419f * 1f), _wgslsmith_f_op_f32(f32(-1f) * -1390f)));
    let var_1 = u_input.b.x;
    let var_2 = firstTrailingBit(select(arg_0.e, u_input.a, !(u_input.a > arg_0.e))) <= _wgslsmith_dot_vec3_i32(-(vec3<i32>(-1i) * -vec3<i32>(arg_0.e, 1i, u_input.a)), -(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.e, arg_0.e, u_input.a), vec3<i32>(-26966i, -7927i, 7738i)) | vec3<i32>(-11341i, u_input.a, u_input.a)));
    return -211f;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1285f), -360f))), -570f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -925f))) * _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1553f), Struct_1(vec3<u32>(90269u, u_input.b.x, 15438u), false), u_input.b.x, Struct_1(u_input.b.yzx, false), u_input.a & u_input.a)))));
    var var_1 = vec2<bool>(true, true);
    var var_2 = _wgslsmith_div_f32(var_0, -417f);
    let var_3 = var_0;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * _wgslsmith_f_op_f32(-var_0)), -654f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(126f - _wgslsmith_f_op_f32(var_3 * var_0))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(576f * var_3) * -628f) + _wgslsmith_f_op_f32(trunc(251f))), var_3)));
    return Struct_1(u_input.b.yzz, var_1.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(889f, -410f, 198f, 463f), vec4<f32>(-960f, 335f, 815f, -1138f), vec4<bool>(false, arg_1.b, true, arg_1.b)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1014f, 465f, 1031f, 1352f), vec4<f32>(1683f, 461f, 1000f, -243f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1211f, 710f, -820f, 398f) + vec4<f32>(929f, -1000f, -509f, 619f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(995f, 128f, -689f, -1039f) - vec4<f32>(1000f, -351f, -1121f, 1604f))))), func_2().b | all(vec4<bool>(all(vec3<bool>(arg_1.b, false, false)), arg_1.b, true, !arg_1.b))));
    let var_1 = vec3<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(-1i) * -arg_0)), _wgslsmith_div_i32(-19218i, ~(-2147483647i) >> (~func_2().a.x % 32u)), abs(1900i));
    global1 = arg_1.b;
    global2 = ~_wgslsmith_dot_vec4_u32(~(~reverseBits(u_input.b)), countOneBits(u_input.b));
    global1 = true;
    return arg_1;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = select(true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)) || true, true);
    let var_1 = u_input.b.yyx;
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -652f) + _wgslsmith_f_op_f32(max(-432f, -1651f))))))) >= _wgslsmith_f_op_f32(-1f);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(833f - -136f))), Struct_1(vec3<u32>(~(~arg_0), _wgslsmith_dot_vec2_u32(min(var_1.xy, var_1.zy), ~vec2<u32>(0u, 9204u)), 1u), all(vec2<bool>(true, true))), var_1.x, func_4(vec3<i32>(-(-4040i & u_input.a), -2147483647i & _wgslsmith_add_i32(u_input.a, u_input.a), -2147483647i), func_2(), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0 >> (u_input.b.x % 32u), ~114646u), vec2<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.b.x, u_input.b.x), vec3<u32>(0u, 43586u, 1u))))), u_input.a);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>) -> bool {
    global1 = !arg_0.d.b;
    let var_0 = !arg_0.d.b;
    global2 = func_4(vec3<i32>(-_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-59219i, arg_0.e, arg_0.e, -13756i), vec4<i32>(arg_0.e, 8079i, 2147483647i, 18574i)), _wgslsmith_dot_vec3_i32(vec3<i32>(67294i, arg_0.e, u_input.a), vec3<i32>(-48745i, -1i, -13082i))), 0i, arg_0.e), func_2(), arg_0.b.a.xx).a.x;
    var var_1 = arg_0;
    var var_2 = any(!(!(!(!vec4<bool>(false, var_0, var_1.b.b, arg_0.d.b)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b.zyz;
    global1 = !(func_5(func_1(~0u), firstTrailingBit(vec4<u32>(4294967295u, 56267u, u_input.b.x, 0u) >> (u_input.b % vec4<u32>(32u)))) || true);
    var var_1 = -45708i >> (~(~(~var_0.x)) % 32u);
    let var_2 = 1u;
    var var_3 = Struct_4(_wgslsmith_clamp_i32(-11863i, u_input.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), ~reverseBits(vec4<i32>(-14070i, -2147483647i, u_input.a, 2147483647i)))), Struct_1(vec3<u32>(~(~0u), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 21118u), vec2<u32>(u_input.b.x, 1u))), ~var_0.x), all(vec4<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(true, false, true)), true, true))), _wgslsmith_mod_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.a, u_input.a)) ^ -_wgslsmith_mult_vec3_i32(vec3<i32>(-7115i, u_input.a, 16984i), vec3<i32>(-5761i, 63616i, u_input.a)), -(-vec3<i32>(u_input.a, u_input.a, u_input.a) << (~vec3<u32>(30615u, var_2, 4294967295u) % vec3<u32>(32u)))), _wgslsmith_div_i32(-u_input.a, u_input.a) != _wgslsmith_div_i32(min(1i, _wgslsmith_sub_i32(21531i, 15157i)), -u_input.a ^ firstTrailingBit(-1i)), _wgslsmith_div_f32(func_1(~(~16629u)).a, 1000f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 1u, 1u, var_0.x), select(vec4<u32>(var_3.b.a.x, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 24948u, u_input.b.x), vec4<bool>(false, false, true, var_3.b.b))), firstTrailingBit(~var_3.b.a.x), u_input.b.x), ~func_4(var_3.c, Struct_1(u_input.b.wzw, false), _wgslsmith_mod_vec2_u32(u_input.b.xx, vec2<u32>(var_3.b.a.x, var_3.b.a.x))).a), firstTrailingBit(var_3.b.a.x), abs(vec4<i32>(_wgslsmith_sub_i32(u_input.a & var_3.a, -24152i), -u_input.a, ~(i32(-1i) * -1205i), firstLeadingBit(_wgslsmith_add_i32(u_input.a, -1119i)))), _wgslsmith_div_vec4_i32(~vec4<i32>(_wgslsmith_sub_i32(var_3.a, 12771i), ~(-69i), firstLeadingBit(-3178i), -1i), ~abs(~vec4<i32>(1i, var_3.a, u_input.a, var_3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.e))))));
}

