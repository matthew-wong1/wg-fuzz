struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec2<f32>,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1285f, 944f, 754f, -213f))))))));
    let var_1 = reverseBits(~2147483647i);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(var_0.zy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -440f) - vec2<f32>(1749f, -1589f)))), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(26355u, 29216u, arg_0, 4294967295u), select(vec4<u32>(4294967295u, arg_0, arg_0, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, 19456u, u_input.a.x), arg_2)), 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, min(15887u, 4294967295u), 2130u, arg_0), firstTrailingBit(vec4<u32>(10771u, arg_0, 4294967295u, 6706u))), 4294967295u), Struct_1(~var_1 < var_1, !select(vec3<bool>(true, true, true), select(vec3<bool>(arg_1, arg_1, arg_2), vec3<bool>(true, true, arg_2), vec3<bool>(arg_1, arg_2, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, arg_2, arg_2), vec3<bool>(false, false, arg_1)))));
    var var_3 = firstLeadingBit(u_input.b.x);
    var_3 = -1i;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(203f + var_0.x)), 952f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(367f, var_0.x)), var_0.x))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_3) -> bool {
    var var_0 = _wgslsmith_add_vec2_i32(u_input.c.xy, u_input.c.yw);
    let var_1 = !(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), false));
    var_0 = -countOneBits(firstLeadingBit(u_input.c.xy | abs(vec2<i32>(0i, -2147483647i))));
    let var_2 = arg_2.b;
    var_0 = vec2<i32>(var_2, (~1i >> (arg_0.a.x % 32u)) ^ ~(-2261i));
    return all(select(select(select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, true)), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true)), !vec4<bool>(var_1.x, var_1.x, false, true)), vec4<bool>(var_1.x, 1704f >= arg_1.x, true, any(vec3<bool>(false, true, var_1.x))), !select(vec4<bool>(var_1.x, true, false, true), vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true)))) | !var_1.x;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_5(-u_input.b, func_4(Struct_3(~vec2<u32>(12801u, 41077u) >> (u_input.a % vec2<u32>(32u)), -abs(36884i)), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_div_u32(var_0, var_0)), true, !all(vec4<bool>(true, false, false, false)))), Struct_3(u_input.a, -25771i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1012f, -324f) * -1000f) + 164f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1527f * -668f))))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-997f * -360f)), _wgslsmith_f_op_f32(-1313f - _wgslsmith_f_op_f32(select(-683f, -751f, false))), -766f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(745f, -1483f), _wgslsmith_f_op_f32(-594f * -1000f)))))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(u_input.a.x, false, var_1.b)).x), _wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, min(var_0, select(408u, 4294967295u, false)), countOneBits(var_0 ^ 4294967295u)), vec3<u32>(max(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(39265u, 40461u, 7063u), vec3<u32>(var_0, 1u, var_0))), u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x) & vec2<u32>(var_0, 0u), firstLeadingBit(vec2<u32>(1u, var_0))))), Struct_1(false, select(!vec3<bool>(false, var_1.b, var_1.b), !select(vec3<bool>(var_1.b, true, var_1.b), vec3<bool>(var_1.b, var_1.b, var_1.b), var_1.b), true)));
    let var_3 = -(~1i);
    var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1455f - -509f), -441f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -372f) * _wgslsmith_f_op_f32(var_1.c - var_2.a.x))), -1000f), ~var_2.b << (vec3<u32>(firstTrailingBit(21684u), ~(~6778u), var_0) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.a.x, 376f)) * _wgslsmith_div_f32(-786f, var_1.d.x)) == _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(236f, -211f))), vec3<bool>(all(!vec3<bool>(var_1.b, true, true)), false, true)));
    return Struct_1(!var_2.c.a, vec3<bool>(!all(var_2.c.b.zz), any(select(!vec4<bool>(true, false, var_1.b, var_1.b), select(vec4<bool>(true, var_2.c.b.x, var_1.b, var_1.b), vec4<bool>(true, false, var_1.b, true), vec4<bool>(var_1.b, var_2.c.b.x, var_1.b, var_1.b)), all(vec3<bool>(var_2.c.a, true, var_1.b)))), !(-7619i <= _wgslsmith_sub_i32(var_1.a.x, var_3))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    var var_0 = select(select(select(select(vec4<bool>(arg_2.b.x, arg_0.c.a, arg_2.a, arg_0.c.a), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, arg_0.c.a, true), vec4<bool>(arg_0.c.a, arg_0.c.a, arg_2.a, arg_0.c.b.x)), arg_0.c.a), select(vec4<bool>(arg_0.c.b.x, arg_0.c.b.x, true, arg_0.c.b.x), !vec4<bool>(arg_0.c.b.x, arg_2.b.x, arg_2.a, true), vec4<bool>(true, true, true, true)), vec4<bool>(arg_2.a, all(arg_2.b), true, arg_0.c.a)), !vec4<bool>(arg_1.x != 103f, false, func_4(Struct_3(u_input.a, u_input.c.x), arg_0.a, Struct_3(arg_0.b.xz, u_input.b.x)), true), select(select(select(vec4<bool>(arg_0.c.a, arg_0.c.b.x, true, arg_0.c.b.x), vec4<bool>(true, arg_0.c.a, arg_2.b.x, arg_2.a), vec4<bool>(true, arg_2.a, arg_0.c.a, arg_0.c.a)), !vec4<bool>(true, arg_2.a, arg_0.c.b.x, false), !vec4<bool>(false, arg_0.c.a, true, false)), vec4<bool>(any(vec4<bool>(arg_2.b.x, arg_0.c.a, arg_2.b.x, true)), u_input.c.x > u_input.b.x, any(arg_0.c.b.yy), arg_0.a.x > arg_0.a.x), vec4<bool>(u_input.a.x <= 40300u, true, arg_0.c.a, true))), vec4<bool>(true, all(!vec3<bool>(false, arg_0.c.a, false)), firstTrailingBit(arg_0.b.x) >= firstTrailingBit(firstLeadingBit(37864u)), !(!arg_0.c.b.x)), false | arg_0.c.a);
    var var_1 = Struct_4(Struct_2(_wgslsmith_div_vec2_f32(arg_1.xx, vec2<f32>(644f, _wgslsmith_f_op_f32(round(arg_1.x)))), max(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0.b.x, 0u, 30148u), arg_0.b), _wgslsmith_mod_vec3_u32(arg_0.b, firstLeadingBit(vec3<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x)))), arg_0.c), ~vec4<u32>(_wgslsmith_mult_u32(arg_0.b.x, ~arg_0.b.x), 58595u, ~u_input.a.x ^ arg_0.b.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0.b.x, 0u), u_input.a.x)), arg_1.xy, Struct_2(_wgslsmith_f_op_vec2_f32(select(arg_0.a, vec2<f32>(_wgslsmith_f_op_f32(721f + 414f), arg_0.a.x), _wgslsmith_div_i32(u_input.c.x, u_input.b.x) == 2147483647i)), vec3<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(30202u, 4294967295u, 1u)), ~vec3<u32>(u_input.a.x, u_input.a.x, 51711u)), ~_wgslsmith_clamp_u32(u_input.a.x, 83562u, 6907u), select(min(32098u, 15735u), 107164u & arg_0.b.x, func_2().b.x)), Struct_1(func_4(Struct_3(arg_0.b.xy, 0i), vec2<f32>(arg_0.a.x, arg_1.x), Struct_3(u_input.a, -55989i)), select(!arg_0.c.b, vec3<bool>(true, false, true), var_0.zxz))), Struct_3(abs(~u_input.a & arg_0.b.zy), min(-_wgslsmith_sub_i32(u_input.c.x, u_input.b.x), u_input.b.x)));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(arg_1 - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x + 968f), _wgslsmith_f_op_f32(abs(arg_1.x)))), _wgslsmith_f_op_vec2_f32(func_3(1u, all(!arg_0.c.b.yz), arg_2.a)).x));
    var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1275f, var_3.x) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a.x - var_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-679f, -894f)) + -603f) * _wgslsmith_div_f32(var_2.x, var_3.x)), var_3.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -538f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_div_f32(var_2.x, -1079f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.a.x), _wgslsmith_div_f32(var_2.x, -508f), select(false, true, true))))));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: u32) -> u32 {
    var var_0 = Struct_5(_wgslsmith_add_vec3_i32(select(-_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.b, u_input.b.x, -5190i), vec3<i32>(u_input.c.x, -27278i, -2147483647i)), min(u_input.c.zzz, u_input.b), !arg_0), u_input.c.wyy), _wgslsmith_f_op_f32(floor(1f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_2(vec2<f32>(1156f, 547f), vec3<u32>(u_input.a.x, arg_1.a.x, arg_3), Struct_1(arg_0, vec3<bool>(arg_0, true, arg_0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1021f, 327f, 1832f) - vec3<f32>(549f, -611f, -778f)), func_2()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(271f + -1113f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(127f)))), -809f, 515f, -106f));
    var_0 = Struct_5(max(_wgslsmith_sub_vec3_i32(vec3<i32>(select(var_0.a.x, arg_1.b, false), u_input.b.x, max(-2147483647i, u_input.c.x)), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.x, -2147483647i, 23449i), vec3<i32>(arg_1.b, arg_1.b, -2147483647i))), vec3<i32>(abs(-1i), u_input.b.x, -42464i)), !(!(!arg_0)), var_0.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.d, var_0.d) * var_0.d)))));
    let var_1 = ~(_wgslsmith_mult_u32(select(u_input.a.x, _wgslsmith_div_u32(1u, u_input.a.x), !arg_0), ~(0u << (arg_3 % 32u))) >> (_wgslsmith_sub_u32(select(~0u, 4294967295u, false), firstLeadingBit(77539u)) % 32u));
    let var_2 = 2147483647i;
    var_0 = Struct_5(_wgslsmith_clamp_vec3_i32(min(u_input.b, select(-vec3<i32>(var_2, -1i, 74682i), vec3<i32>(var_2, -1i, 1i), var_0.b)), var_0.a, _wgslsmith_sub_vec3_i32(~vec3<i32>(2147483647i, var_0.a.x, arg_1.b), ~(~vec3<i32>(var_2, -36845i, 4258i)))), true, _wgslsmith_f_op_f32(f32(-1f) * -3517f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0.d)) - var_0.d), var_0.d)));
    return _wgslsmith_add_u32(~(~(_wgslsmith_clamp_u32(10065u, 46833u, arg_3) >> (_wgslsmith_clamp_u32(52566u, 11073u, var_1) % 32u))), ~_wgslsmith_sub_u32(countOneBits(arg_1.a.x) | arg_3, ~arg_2.x ^ min(arg_3, 65481u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<f32>(-778f, _wgslsmith_f_op_f32(-1f)), max(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 7237u), ~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x))) >> (vec3<u32>(max(12149u, min(u_input.a.x, 14496u)), u_input.a.x, _wgslsmith_mod_u32(func_1(true, Struct_3(u_input.a, u_input.c.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), 4294967295u), 44288u)) % vec3<u32>(32u)), func_2());
    let var_1 = func_2();
    let var_2 = true;
    let var_3 = -1373f;
    let var_4 = false;
    let var_5 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(func_5(var_0, vec3<f32>(var_3, var_3, _wgslsmith_f_op_f32(f32(-1f) * -115f)), var_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -164f)), var_0.b, func_2());
    var var_6 = !var_5.c.b.yx;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, 0u), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a.x, 1u), var_0.b.x)), 1i & u_input.b.x, 0u, ~vec4<u32>(_wgslsmith_div_u32(var_0.b.x, u_input.a.x) >> (u_input.a.x % 32u), var_0.b.x, var_5.b.x, 4294967295u));
}

