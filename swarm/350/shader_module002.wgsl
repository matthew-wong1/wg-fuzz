struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(-35204i, 24305i), vec2<i32>(2147483647i, 5473i), vec2<i32>(-11709i, -28902i), vec2<i32>(-1i, -27989i), vec2<i32>(36043i, 1i), vec2<i32>(-6587i, 23017i), vec2<i32>(2147483647i, -1i), vec2<i32>(-4710i, 2147483647i), vec2<i32>(27598i, 0i), vec2<i32>(0i, 2147483647i), vec2<i32>(19574i, 0i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-1i, 1i), vec2<i32>(0i, -11280i), vec2<i32>(-38580i, -15872i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(42471i, 23696i), vec2<i32>(-22427i, -4070i), vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(1i, 11906i), vec2<i32>(-1i, 0i), vec2<i32>(-1i, 2147483647i));

var<private> global1: vec4<f32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = arg_0;
    let var_1 = Struct_1(all(vec3<bool>(!all(vec2<bool>(false, false)), any(vec4<bool>(false, true, true, false)), any(vec3<bool>(false, false, true)))), global1.x, _wgslsmith_clamp_u32(~(~(1u << (0u % 32u))), ~(~u_input.b.x), 45572u), arg_0, ~4565u);
    var var_2 = var_1;
    var_2 = var_1;
    let var_3 = any(!select(select(select(vec4<bool>(var_2.a, var_2.a, false, var_1.a), vec4<bool>(true, var_1.a, var_1.a, var_2.a), vec4<bool>(false, var_1.a, false, var_2.a)), select(vec4<bool>(true, false, true, var_1.a), vec4<bool>(true, var_2.a, false, var_2.a), vec4<bool>(var_2.a, var_2.a, var_2.a, true)), true), vec4<bool>(758f == var_2.b, any(vec3<bool>(false, true, var_1.a)), any(vec2<bool>(false, false)), !var_1.a), var_2.a | false));
    return min(_wgslsmith_dot_vec2_u32(~(u_input.b.yy << (firstLeadingBit(u_input.b.zy) % vec2<u32>(32u))), vec2<u32>(max(var_2.e, var_2.e), 18473u)), u_input.b.x);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = 2147483647i;
    var var_1 = Struct_1(!arg_1.a, _wgslsmith_f_op_f32(global1.x - global1.x), func_3(~2147483647i) ^ 4294967295u, ~(-firstTrailingBit(0i) >> (~u_input.b.x % 32u)), ~34376u);
    var_1 = arg_1;
    var var_2 = Struct_1(false, 1166f, ~arg_2.x | _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(arg_2.x, var_1.e)), ~vec2<u32>(1u, 1u)), 5481u), 1078i, _wgslsmith_add_u32(firstLeadingBit(max(u_input.b.x, arg_2.x | var_1.e)), ~1u));
    global0 = array<vec2<i32>, 25>();
    return arg_1;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = !(!arg_2.a);
    var var_1 = 0u;
    var var_2 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_2.d, u_input.a.x), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(u_input.c.x, arg_2.d)))), vec2<i32>(0i, countOneBits(2147483647i)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) * 896f));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1756f * 1964f) * _wgslsmith_f_op_f32(global1.x + arg_2.b)), global1.x, global1.x), _wgslsmith_f_op_vec3_f32(round(global1.wyz)))));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x - var_4.x), _wgslsmith_f_op_f32(f32(-1f) * -313f), _wgslsmith_f_op_f32(floor(1638f)), var_3))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    global0 = array<vec2<i32>, 25>();
    global1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(select(true | arg_0.a, false, all(vec3<bool>(true, true, var_0.a))), func_2(_wgslsmith_f_op_f32(floor(-2274f)), Struct_1(var_0.a, var_0.b, 3687u, 0i, u_input.b.x), vec2<u32>(21455u, 10256u)), Struct_1(false, -310f, ~u_input.b.x, 1i, min(1u, arg_0.c)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -722f)), _wgslsmith_f_op_f32(step(var_0.b, _wgslsmith_f_op_f32(max(1689f, 152f)))), arg_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.b, 524f)), _wgslsmith_f_op_f32(select(686f, arg_0.b, true)))))));
    let var_1 = ~u_input.b.yz;
    var var_2 = select(1u, var_1.x & var_1.x, var_0.a);
    return Struct_1(!(var_1.x != var_1.x), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_add_u32(var_1.x, min(~(~4294967295u), var_1.x)), -(~u_input.a.x | (-1i >> (~var_0.c % 32u))), abs(var_0.c));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = vec4<f32>(arg_1.b, _wgslsmith_div_f32(551f, _wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -663f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_1.b)))));
    let var_1 = any(vec2<bool>(true, true));
    let var_2 = func_2(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1552f))) - _wgslsmith_f_op_f32(sign(var_0.x)))), Struct_1(true, global1.x, 0u, 1i, ~func_2(_wgslsmith_f_op_f32(-633f * var_0.x), Struct_1(var_1, global1.x, arg_1.e, -2147483647i, u_input.b.x), countOneBits(vec2<u32>(arg_1.c, u_input.b.x))).e), u_input.b.xx);
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1142f, var_0.x, arg_1.b, -1065f));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, -171f, 579f, 713f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-761f, var_2.b, var_0.x, 173f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b, -1000f, 226f, arg_1.b), vec4<f32>(global1.x, arg_1.b, arg_1.b, 776f))))))));
    return u_input.a >> (~_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(max(u_input.b.zxw, u_input.b.wyx), vec3<u32>(16084u, 4294967295u, u_input.b.x)), vec3<u32>(72938u, 1u, 34579u), select(~vec3<u32>(1u, 8982u, 10794u), _wgslsmith_div_vec3_u32(u_input.b.zyx, vec3<u32>(4294967295u, arg_1.e, arg_1.e)), arg_1.a | false)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2011f;
    var var_1 = u_input.a.x;
    global0 = array<vec2<i32>, 25>();
    var var_2 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.c.yzx, func_5(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), func_1(Struct_1(true, -703f, 0u, u_input.a.x, u_input.b.x)))) < _wgslsmith_add_i32(u_input.a.x, u_input.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1516f, global1.x)))), min(firstLeadingBit(_wgslsmith_sub_u32(~u_input.b.x, 39129u)), 43537u), ~_wgslsmith_sub_i32(select(~(-10256i), u_input.a.x, true), -_wgslsmith_mult_i32(u_input.a.x, u_input.c.x)), ~u_input.b.x);
    var_2 = func_1(func_1(func_2(var_2.b, Struct_1(any(vec4<bool>(false, true, true, true)), _wgslsmith_f_op_f32(trunc(899f)), ~84550u, 1i, var_2.e), vec2<u32>(1u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, -(_wgslsmith_add_i32(-u_input.a.x, _wgslsmith_mod_i32(-1i, u_input.c.x)) << (36356u % 32u)), 9075i, vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1112f * -1145f))));
}

