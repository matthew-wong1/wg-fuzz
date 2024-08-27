struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: f32,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> u32 {
    let var_0 = u_input.c;
    let var_1 = vec3<u32>(2507u, ~81948u, countOneBits(reverseBits(1u)));
    let var_2 = ~var_0.x << (104172u % 32u);
    var var_3 = any(select(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)), vec3<bool>(true, arg_0 != _wgslsmith_clamp_i32(var_2, var_0.x, u_input.d), true), true == all(vec3<bool>(true, false, true))));
    var_3 = !(!all(vec3<bool>(any(vec2<bool>(true, true)), false, arg_1.c < -1000f)));
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_4) -> Struct_2 {
    var var_0 = Struct_2(firstLeadingBit(2147483647i) >> ((abs(_wgslsmith_dot_vec2_u32(vec2<u32>(37194u, u_input.b), vec2<u32>(u_input.b, u_input.b))) | _wgslsmith_mod_u32(42735u, u_input.b)) % 32u), ~func_3(~(~8713i), Struct_3(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-9402i, arg_2.a.x, arg_0.a.x)), 4294967295u, _wgslsmith_f_op_f32(1116f * -1141f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -335f) - _wgslsmith_f_op_f32(-arg_3.b))), arg_1.x, Struct_1(arg_2.a));
    let var_1 = _wgslsmith_add_vec2_i32(var_0.d.a.zw, arg_2.a.xy);
    var var_2 = -(56484i << (u_input.b % 32u));
    var var_3 = select(!select(!vec2<bool>(arg_3.c, true), !select(vec2<bool>(false, arg_3.a), vec2<bool>(arg_3.a, false), vec2<bool>(arg_3.c, arg_3.c)), vec2<bool>(arg_3.a, all(vec3<bool>(true, arg_3.c, arg_3.a)))), vec2<bool>(false & (all(vec4<bool>(false, false, true, false)) == arg_3.a), 109f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3.b)) + _wgslsmith_f_op_f32(-arg_3.b))), select(select(vec2<bool>(all(vec4<bool>(true, false, arg_3.c, false)), var_1.x < -18462i), vec2<bool>(!arg_3.a, false), !(!vec2<bool>(arg_3.a, true))), vec2<bool>(arg_3.c, any(vec2<bool>(arg_3.a, false))), all(select(!vec2<bool>(true, arg_3.c), vec2<bool>(true, arg_3.c), select(arg_3.a, arg_3.c, arg_3.c)))));
    let var_4 = var_0.d;
    return Struct_2(var_1.x, 42700u, ~459i, arg_0);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_5) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.c, arg_2.c, any(arg_1.yyw)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1113f * 1398f) - arg_2.c))), _wgslsmith_f_op_f32(sign(arg_2.d.b))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1366f, arg_2.d.b, arg_2.d.b, arg_2.d.b), vec4<f32>(792f, arg_2.d.b, 177f, arg_2.c)) + vec4<f32>(1015f, arg_2.c, 525f, arg_2.d.b)) - vec4<f32>(_wgslsmith_f_op_f32(arg_2.c + -1378f), 271f, _wgslsmith_f_op_f32(-arg_2.d.b), _wgslsmith_f_op_f32(floor(-176f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(501f, arg_2.d.b, arg_2.c, 443f) * vec4<f32>(832f, -806f, -1252f, 716f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -208f), arg_2.d.b, -1256f, _wgslsmith_f_op_f32(exp2(arg_2.d.b))), vec4<bool>(arg_1.x && arg_1.x, false, arg_2.b.x, arg_1.x))))));
    let var_1 = true;
    let var_2 = firstLeadingBit(1i) >= (42224i ^ u_input.a);
    let var_3 = func_2(Struct_1(arg_2.a.d.a), ~u_input.c, func_2(Struct_1(arg_2.a.d.a << (vec4<u32>(arg_2.a.b, 5187u, arg_2.a.b, arg_0.x) % vec4<u32>(32u))), _wgslsmith_add_vec3_i32(arg_2.a.d.a.zxz, vec3<i32>(~arg_2.a.c, u_input.c.x, ~1i)), arg_2.a.d, arg_2.d).d, Struct_4(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c + -1000f)))), false));
    let var_4 = Struct_2(u_input.e, u_input.b, reverseBits(abs(~abs(arg_2.a.a))), func_2(arg_2.a.d, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, var_3.d.a.x, -1i), vec3<i32>(-u_input.c.x, ~45311i, _wgslsmith_dot_vec3_i32(arg_2.a.d.a.wwy, u_input.c))), Struct_1(max(var_3.d.a, vec4<i32>(u_input.e, 2486i, u_input.a, var_3.c))), arg_2.d).d);
    return any(select(select(!select(vec4<bool>(arg_2.d.a, var_1, true, var_1), arg_2.b, true), vec4<bool>(arg_2.d.a, select(true, arg_1.x, arg_2.b.x), any(arg_1), true), vec4<bool>(arg_2.d.a, true, !var_2, true)), vec4<bool>(true, (-2521f > arg_2.c) & true, true, u_input.e != _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.a, arg_2.a.c, var_3.a), vec3<i32>(2147483647i, -2147483647i, 1i))), select(select(!arg_1, !arg_1, arg_2.d.a), select(arg_1, !arg_2.b, !var_2), arg_1.x)));
}

fn func_1() -> f32 {
    var var_0 = any(!vec3<bool>(!all(vec2<bool>(true, true)), true, false));
    var_0 = true;
    var var_1 = vec3<bool>(true, true, -58475i >= (u_input.d ^ 5179i));
    var var_2 = firstTrailingBit(0u);
    var_1 = vec3<bool>(select(select(true, true == var_1.x, true | var_1.x), false, var_1.x), func_4(_wgslsmith_clamp_vec4_u32(~vec4<u32>(52944u, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 38u, u_input.b) | vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 1u, 67933u, 72579u), vec4<u32>(4294967295u, 1u, 13418u, u_input.b))), vec4<bool>(var_1.x, u_input.a != u_input.e, select(true, var_1.x, false), true), Struct_5(func_2(Struct_1(vec4<i32>(1i, -4781i, -1i, 2147483647i)), vec3<i32>(-1i, u_input.a, 1i), Struct_1(vec4<i32>(9016i, u_input.c.x, 1i, 2217i)), Struct_4(false, -1272f, var_1.x)), select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(true, true, var_1.x, true), vec4<bool>(false, true, var_1.x, var_1.x)), _wgslsmith_f_op_f32(trunc(311f)), Struct_4(true, 1549f, var_1.x))) || !var_1.x, !all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(var_1.x, var_1.x, true, true), var_1.x), select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), var_1.x)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -687f) + _wgslsmith_f_op_f32(f32(-1f) * -2079f)) + _wgslsmith_f_op_f32(trunc(-685f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-909f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(func_1())) + -293f));
    let var_1 = abs(~_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, u_input.b, 1u), vec3<u32>(u_input.b, u_input.b, 5492u)) << (_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 1u), ~vec3<u32>(1u, 33040u, 4294967295u)), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 0u, 2030u), ~vec3<u32>(u_input.b, 22846u, 3375u)), ~(~vec3<u32>(u_input.b, u_input.b, 57010u))) % vec3<u32>(32u)));
    var var_2 = firstLeadingBit(~(~vec3<u32>(u_input.b, _wgslsmith_mod_u32(var_1.x, 1u), u_input.b ^ 4294967295u)));
    var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(min(var_1.x, 102591u), 1u, var_1.x), var_1), ~_wgslsmith_mult_vec3_u32(firstLeadingBit(var_1), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 4294967295u, u_input.b), var_1, var_1))), var_2.x, min(1u, u_input.b));
    var_2 = max(var_1, reverseBits(abs(select(var_1, var_1, false) & (var_1 | vec3<u32>(u_input.b, 0u, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-574f)), _wgslsmith_f_op_f32(var_0 * var_0))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))), var_0)), ~(-1i));
}

