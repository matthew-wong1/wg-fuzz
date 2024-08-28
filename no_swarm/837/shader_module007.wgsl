struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_mod_i32(abs(countOneBits(_wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(arg_0.a, arg_0.a)))), select(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_0.a), vec2<i32>(arg_0.a, arg_0.a)), u_input.b.x, !arg_0.c.x) >> (u_input.a.x % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2027f) * _wgslsmith_f_op_f32(f32(-1f) * -594f))))), arg_0.c);
    var var_1 = ~countOneBits(vec4<i32>(arg_0.a ^ firstTrailingBit(30388i), var_0.a, var_0.a, _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.d, -2147483647i), arg_0.a << (u_input.c.x % 32u))));
    var var_2 = ~0u;
    var var_3 = u_input.a.x;
    var_3 = abs(~firstLeadingBit(max(u_input.c.x, 42778u)));
    return arg_0.c.x;
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d >> (~1u % 32u), ~_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), 2147483647i), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(13458i), -u_input.b.x, ~u_input.b.x), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, u_input.d, u_input.e.x), vec4<i32>(u_input.d, 1i, 0i, 10245i)), u_input.b.x, u_input.e.x), reverseBits(vec3<i32>(u_input.b.x, 2147483647i, 10098i) >> (vec3<u32>(arg_0.x, u_input.a.x, 0u) % vec3<u32>(32u)))));
    var_0 = u_input.b.x;
    var_0 = ~u_input.b.x;
    var var_1 = Struct_1(-reverseBits(~19298i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(768f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(575f, 1000f))))), 267f), select(vec4<bool>(!(arg_0.x > arg_0.x), func_3(Struct_1(1i, 589f, vec4<bool>(false, true, false, false))), true, true), !vec4<bool>(true, u_input.d == u_input.b.x, false, 107227u == arg_0.x), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)))));
    let var_2 = select(u_input.c.wz, min(_wgslsmith_clamp_vec2_u32(abs(~arg_0.xx), select(vec2<u32>(4294967295u, 0u), ~vec2<u32>(1u, 41u), !var_1.c.wy), firstLeadingBit(~arg_0.yz)), vec2<u32>(arg_0.x, 1u)), select(var_1.c.x, true, !var_1.c.x || (~0u > u_input.c.x)));
    return var_1.b;
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_sub_i32(~(-16549i), firstLeadingBit(24394i)), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false)))))), vec4<bool>(~_wgslsmith_dot_vec4_u32(vec4<u32>(63744u, u_input.c.x, u_input.a.x, 20983u), u_input.c) != ~u_input.a.x, any(vec2<bool>(true, true)), -u_input.e.x == ~(~2147483647i), false));
    var var_1 = arg_0.xy;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yz));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x)))), arg_0.x);
    let var_2 = var_0;
    return Struct_1(~(u_input.e.x | var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) - _wgslsmith_f_op_f32(min(-742f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))), !select(!var_2.c, var_2.c, true));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>) -> f32 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-434f + -1681f))), -1000f, _wgslsmith_f_op_f32(func_2(u_input.c >> (u_input.c % vec4<u32>(32u))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1131f, 1761f, 2400f)))))));
    return _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(-1692f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(567f, var_0.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(~24184i, _wgslsmith_clamp_i32(firstTrailingBit(-30033i), 5441i, u_input.d), ~firstLeadingBit(2147483647i)), vec3<i32>(2147483647i, -36981i, 33500i), ~_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(u_input.b.x, -3796i, -15437i)), vec3<i32>(-12713i, -1i, -8605i))), select(vec2<bool>(true, true), !vec2<bool>(all(vec4<bool>(true, false, true, false)), true), true)));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1137f, var_0, var_0) - vec3<f32>(var_0, var_0, -1082f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, -853f, var_0), vec3<f32>(2275f, var_0, var_0), vec3<bool>(true, false, true)))) * vec3<f32>(_wgslsmith_f_op_f32(step(-1318f, 300f)), _wgslsmith_div_f32(-149f, var_0), 1403f))));
    var var_2 = select(-1i, firstLeadingBit(-12391i), any(func_4(vec3<f32>(_wgslsmith_f_op_f32(-var_0), 380f, _wgslsmith_f_op_f32(sign(328f)))).c.ww));
    var_2 = u_input.b.x;
    let var_3 = ~_wgslsmith_mult_vec2_i32(u_input.b, -(vec2<i32>(-1i) * -vec2<i32>(u_input.e.x, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~u_input.c), ~54949u, _wgslsmith_dot_vec2_u32(u_input.c.xw, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(22936u, u_input.a.x), _wgslsmith_sub_u32(31127u, u_input.c.x)), ~(vec2<u32>(u_input.a.x, 1u) ^ u_input.a))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -260f), vec2<f32>(1000f, var_1.b)) - vec2<f32>(var_1.b, 469f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, var_0), vec2<f32>(395f, -195f)))))))));
}

