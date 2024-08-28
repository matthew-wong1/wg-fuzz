struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(-1000f, -2172f, 554f, 232f), vec4<f32>(351f, 204f, -129f, 1015f), vec4<f32>(-2923f, -888f, 323f, -1401f), vec4<f32>(1234f, -1000f, 729f, -755f), vec4<f32>(385f, 1000f, -604f, -329f));

var<private> global2: u32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -811f);
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(278f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1359f))) - -1000f))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(477f)) - -216f);
    let var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-541f, 2626f, var_1), vec3<f32>(var_1, 953f, 422f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 1040f, -196f)), vec3<bool>(false, false, false))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, 753f, var_1)))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 613f, var_1)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1733f, var_1, var_1))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1, var_1, -292f))), vec3<bool>(any(vec4<bool>(true, false, true, true)), true, 505f >= var_1)))), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1)))), _wgslsmith_f_op_f32(1664f - _wgslsmith_f_op_f32(-var_1)))), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(global0.a.x, 2147483647i, -10152i), firstLeadingBit(-2147483647i), 47045i, global0.a.x), vec4<i32>(-1i) * -global0.b, firstLeadingBit(~vec4<i32>(34961i, 39045i, global0.a.x, global0.b.x))), reverseBits(countOneBits(-global0.b))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, false)), true, u_input.a.x < 3221u, false)), vec4<bool>(true, true, _wgslsmith_f_op_f32(select(var_1, -396f, true)) == _wgslsmith_f_op_f32(ceil(2267f)), !any(vec2<bool>(false, true))), true));
    global1 = array<vec4<f32>, 5>();
    return 0i;
}

fn func_2() -> vec4<i32> {
    var var_0 = abs(~global0.b);
    var var_1 = _wgslsmith_clamp_i32(1i, firstTrailingBit(~(~(-global0.b.x))), _wgslsmith_clamp_i32(-4862i, abs(max(firstLeadingBit(global0.b.x), -21452i)), func_3()));
    var var_2 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(878f + _wgslsmith_f_op_f32(abs(-236f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1348f, -441f)) + _wgslsmith_f_op_f32(abs(210f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-434f, 1009f)) - -752f)))), _wgslsmith_mod_vec4_u32(u_input.a, ~vec4<u32>(1u, 0u, 38329u, u_input.a.x)) ^ countOneBits(~u_input.a), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(703f, 538f) * vec2<f32>(-2285f, 756f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-186f, 473f), vec2<f32>(-1379f, -247f))))))), vec4<i32>(var_0.x, _wgslsmith_clamp_i32(56912i, i32(-1i) * -13171i, ~var_0.x >> (firstLeadingBit(4294967295u) % 32u)), ~_wgslsmith_div_i32(firstLeadingBit(56973i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, var_0.x), var_0.xx)), ~_wgslsmith_mod_i32(global0.b.x, var_0.x | 23991i)), select(vec4<bool>(true, all(vec2<bool>(false, false)), select(u_input.a.x, u_input.a.x, true) >= (1u << (0u % 32u)), select(select(false, false, true), true, true)), select(vec4<bool>(false, true, true, all(vec4<bool>(false, false, true, true))), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), false), all(select(vec2<bool>(true, false), vec2<bool>(false, false), false))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), all(vec2<bool>(true, false))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)))));
    let var_3 = Struct_3(~_wgslsmith_mod_u32(u_input.a.x | ~var_2.b.x, var_2.b.x), abs(_wgslsmith_mult_i32(_wgslsmith_div_i32(~global0.b.x, 1i), abs(global0.b.x))), Struct_1(vec3<u32>(countOneBits(0u), 4294967295u, var_2.b.x << (abs(var_2.b.x) % 32u)), select(any(var_2.e.xwy) != (var_2.e.x && true), var_2.e.x, _wgslsmith_mult_i32(0i, 13742i) != ~global0.b.x), vec3<i32>(-14417i, 8909i, var_0.x)), 4294967295u);
    var_2 = Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_2.a, vec3<f32>(var_2.a.x, 802f, -172f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(288f, -1015f, var_2.a.x) - vec3<f32>(var_2.c.x, var_2.a.x, var_2.a.x))))), vec3<f32>(var_2.a.x, 160f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.a.x)) * _wgslsmith_f_op_f32(abs(var_2.c.x))))), vec4<u32>(~0u, var_2.b.x, var_3.a, ~(0u & var_2.b.x)) ^ u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_2.a.x)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, var_2.a.x)))))), global0.b, !vec4<bool>(var_2.e.x, (var_2.e.x | false) | any(vec2<bool>(false, true)), all(var_2.e), true));
    return abs(global0.b) >> (vec4<u32>(var_2.b.x, _wgslsmith_mult_u32(var_3.a | 1u, var_2.b.x), ~var_2.b.x & _wgslsmith_mult_u32(var_2.b.x, 1u), 27263u) % vec4<u32>(32u));
}

fn func_1() -> Struct_5 {
    var var_0 = vec2<i32>(1i, max(min(1i, global0.a.x) >> (u_input.a.x % 32u), _wgslsmith_dot_vec4_i32(min(func_2(), global0.b), global0.b >> (_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(61362u, u_input.a.x, 1u, 1u)) % vec4<u32>(32u)))));
    var var_1 = Struct_1(select(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, 58889u), _wgslsmith_sub_u32(4294967295u, u_input.a.x), _wgslsmith_clamp_u32(0u, 71305u, u_input.a.x)), ~(~u_input.a.yyz)), _wgslsmith_div_vec3_u32(u_input.a.zwy, u_input.a.zxz), vec3<bool>(true, any(vec3<bool>(true, true, false)), true)), false, ~(~(~(-vec3<i32>(var_0.x, 16524i, -1i)))));
    var var_2 = true;
    let var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(min(u_input.a.xw, vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, var_1.a.x), 19260u)), countOneBits(vec2<u32>(~18994u, 1u))), vec2<u32>(~15119u >> (~u_input.a.x % 32u), countOneBits(~1u)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1961f + 997f), 827f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(274f)))), 966f)));
    return Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(181f, 2386f, 475f)))))), ~_wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(15463u, u_input.a.x, 1u, var_1.a.x), u_input.a)), vec4<u32>(1u, 0u, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, u_input.a.x, 0u), vec3<u32>(var_1.a.x, 249u, var_3.x)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(843f, 1669f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-471f, -1325f) + vec2<f32>(-1437f, 627f))))))), (global0.b ^ select(global0.b | global0.b, ~vec4<i32>(var_1.c.x, 1i, 3104i, global0.a.x), false)) ^ vec4<i32>(~_wgslsmith_dot_vec2_i32(global0.a.zy, vec2<i32>(var_1.c.x, 25378i)), -36760i, _wgslsmith_mult_i32(12124i, var_0.x) & (i32(-1i) * -1i), min(-26203i, var_0.x & 29341i)), !vec4<bool>(!(var_1.c.x != 13920i), var_1.b, !(var_1.b && true), global0.b.x < _wgslsmith_dot_vec2_i32(var_1.c.yz, global0.b.wx)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = func_1().b.x;
    let var_1 = Struct_4(Struct_3(~1u, -27530i, Struct_1(vec3<u32>(min(arg_1.b.x, 0u), _wgslsmith_mod_u32(var_0, 0u), abs(u_input.a.x)), _wgslsmith_f_op_f32(-arg_1.c.x) < -1124f, select(arg_1.d.yxx, vec3<i32>(37473i, -2147483647i, global0.b.x), arg_2.x) << (abs(vec3<u32>(var_0, 91192u, 1u)) % vec3<u32>(32u))), var_0), arg_1.e.x, arg_1.e.x, Struct_3(1u, -3701i, Struct_1(~max(vec3<u32>(arg_1.b.x, 0u, 26572u), vec3<u32>(57606u, 48012u, var_0)), true, arg_1.d.zwx), 74886u));
    let var_2 = all(select(vec3<bool>(true, true, true), func_1().e.zxz, any(!select(vec2<bool>(false, false), arg_1.e.xw, vec2<bool>(false, true)))));
    var var_3 = func_1().e.yw;
    let var_4 = vec2<bool>(false, true);
    return Struct_2(vec3<i32>(abs(firstTrailingBit(27296i)) << (arg_1.b.x % 32u), -_wgslsmith_add_i32(arg_1.d.x & global0.a.x, 28416i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_1.d.x >> (120704u % 32u), firstLeadingBit(var_1.d.c.c.x)), ~(global0.a.x << (var_0 % 32u)), 0i)), ~vec4<i32>(_wgslsmith_mult_i32(9319i, -31432i), -1i, _wgslsmith_add_i32(~global0.a.x, arg_1.d.x << (51935u % 32u)), -_wgslsmith_div_i32(global0.a.x, global0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global0 = func_4(firstTrailingBit(u_input.a.wxy), func_1(), !vec3<bool>(true, !all(vec4<bool>(false, true, var_0, true)), !all(vec2<bool>(false, false))));
    global1 = array<vec4<f32>, 5>();
    var var_1 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(769f + 763f), 525f)), _wgslsmith_f_op_f32(-1239f - _wgslsmith_f_op_f32(f32(-1f) * -1399f)))), 1000f, 551f), vec4<u32>(1u ^ _wgslsmith_mult_u32(min(26062u, 14480u), _wgslsmith_mod_u32(u_input.a.x, 24659u)), _wgslsmith_dot_vec3_u32(vec3<u32>(57267u, countOneBits(4294967295u), ~u_input.a.x), ~(vec3<u32>(1u, 23464u, u_input.a.x) >> (vec3<u32>(25254u, 4294967295u, 21552u) % vec3<u32>(32u)))), _wgslsmith_div_u32(~select(1u, u_input.a.x, var_0), u_input.a.x >> (abs(114009u) % 32u)), min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.wz)), 43542u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(216f, 1802f), vec2<f32>(322f, 554f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1552f, 1456f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(285f, 340f), -1131f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1010f, 1000f)))), global0.b, vec4<bool>(var_0, ~(21121u << (u_input.a.x % 32u)) == u_input.a.x, var_0, true));
    var var_2 = u_input.a.zx;
    var_2 = min(~u_input.a.xw, var_1.b.zy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.a.x)), -605f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(915f, var_1.a.x) * vec2<f32>(-1000f, var_1.a.x)))))));
}

