struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = select(select(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false)), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, false, false), true), (~u_input.b.x | _wgslsmith_div_i32(u_input.b.x, u_input.b.x)) <= _wgslsmith_div_i32(18415i, ~u_input.b.x)), vec4<bool>(true, _wgslsmith_div_u32(abs(9128u), ~0u) <= min(u_input.a, 36775u), true, !all(vec4<bool>(true, true, true, true))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(-72959i >= arg_0.x, select(false, true, false), true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, false))))));
    var var_1 = Struct_2(var_0.x, var_0.x, reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(47252u, _wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a), vec3<u32>(countOneBits(u_input.a), 4294967295u & u_input.a, 1u))), 6292u);
    var_1 = Struct_2(all(!vec2<bool>(var_1.a | true, true)), any(var_0.yxz), ~(~(~(~vec3<u32>(15981u, var_1.d, 0u)))), 4294967295u);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(166f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-769f - 615f)))), _wgslsmith_f_op_f32(-1f), -187f);
    let var_3 = !(!(!vec2<bool>(select(var_0.x, var_1.a, false), all(vec4<bool>(var_1.b, false, true, false)))));
    return 0u;
}

fn func_2(arg_0: bool) -> Struct_4 {
    var var_0 = Struct_2(select(arg_0, arg_0 || (all(vec4<bool>(false, true, false, true)) == (false & arg_0)), u_input.a <= 8555u), arg_0 || true, vec3<u32>(_wgslsmith_div_u32(~u_input.a, func_3(u_input.b.zx)), u_input.a, 0u), 0u);
    var var_1 = firstLeadingBit(28276i);
    var var_2 = Struct_2(true, _wgslsmith_f_op_f32(f32(-1f) * -1261f) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 1096f)) + _wgslsmith_f_op_f32(-476f + 465f)))), vec3<u32>(_wgslsmith_mod_u32(var_0.c.x, 1u), 40984u, 4294967295u), 0u);
    var_0 = Struct_2(all(!vec4<bool>(false, true, any(vec2<bool>(arg_0, false)), true)), true, vec3<u32>(firstTrailingBit(countOneBits(4583u)), 2237u, 0u) ^ ~var_2.c, _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.x, 1u, u_input.a), vec3<u32>(0u, 37057u, 0u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_2.d, u_input.a), max(u_input.a, 4294967295u))) << ((var_2.d ^ _wgslsmith_sub_u32(19059u, ~var_2.c.x)) % 32u));
    let var_3 = Struct_4(vec4<u32>(4294967295u, 1u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_2.c.xy, vec2<u32>(var_2.c.x, u_input.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(52471u, u_input.a), vec2<u32>(1u, 0u))), 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 588f))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(357f, _wgslsmith_f_op_f32(step(-173f, 1517f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-433f, 1052f, -840f, 455f), vec4<f32>(-2039f, 1130f, -549f, 621f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(172f, 1897f, -1555f, 126f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-131f, -409f, 821f, 1387f))))) * vec4<f32>(_wgslsmith_f_op_f32(803f * 620f), 1810f, 1000f, 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(620f)), -843f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1167f * -1000f)))) - -176f), Struct_1(vec4<bool>(!(!var_0.a), all(!vec4<bool>(true, var_2.a, var_2.b, true)), any(select(vec2<bool>(var_0.a, arg_0), vec2<bool>(true, var_2.b), false)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(741f + 1703f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<u32>(~22562u | u_input.a, 15087u, _wgslsmith_div_u32(u_input.a, ~var_0.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(136f, -1775f, 429f, -906f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(284f, -467f, 1615f, 933f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1103f, 275f, 129f, -873f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(293f, 772f))))))));
    return Struct_4(~firstTrailingBit(vec4<u32>(var_2.d, var_2.d, 49620u, var_0.c.x) << (~vec4<u32>(var_3.e.c.x, 1u, 49851u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.e.b), _wgslsmith_f_op_f32(var_3.e.b + _wgslsmith_f_op_f32(var_3.d * 1055f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.e.d + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.c + var_3.c))), _wgslsmith_f_op_vec4_f32(-var_3.e.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-584f))))), var_3.e);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec4<i32>) -> u32 {
    let var_0 = vec2<u32>(u_input.a, 1u) & arg_0.a.xy;
    let var_1 = arg_0.d;
    let var_2 = 1u;
    let var_3 = Struct_2(true, !func_2(arg_0.e.a.x).e.a.x, vec3<u32>(1u, _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.x, 46621u), ~0u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~arg_0.a.zzy, ~arg_0.e.c, vec3<u32>(30944u, 38206u, arg_0.e.c.x)), ~arg_0.e.c)), _wgslsmith_sub_u32(4294967295u, 1u));
    var var_4 = ((_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(1i, arg_2.x, -10041i, arg_2.x)), vec4<i32>(arg_2.x, u_input.b.x, arg_2.x, -2147483647i) & arg_2) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, arg_0.e.c.x, 39195u, 46752u), abs(arg_0.a), vec4<u32>(1u, 80455u, 28319u, var_2) | arg_0.a) % vec4<u32>(32u))) & arg_2) | vec4<i32>(abs(select(_wgslsmith_dot_vec4_i32(arg_2, arg_2), -1i, any(vec3<bool>(var_3.b, false, true)))), arg_2.x & select(u_input.b.x, ~arg_2.x, true), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i), arg_2) & _wgslsmith_div_i32(1i, -2147483647i), arg_2.x);
    return 1u;
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = max(vec3<u32>(min(966u, 1u), ~70522u, arg_0), vec3<u32>(_wgslsmith_add_u32(~4294967295u, max(73394u, u_input.a)) >> (arg_0 % 32u), reverseBits(func_4(func_2(false), vec4<bool>(true, true, true, true), ~vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x))), arg_0));
    let var_1 = func_2(!(var_0.x != (u_input.a | _wgslsmith_sub_u32(var_0.x, var_0.x))));
    var var_2 = func_2(true).e;
    var_2 = Struct_1(!var_2.a, _wgslsmith_f_op_f32(func_2(var_2.b > var_1.d).c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.x)) * var_1.d)), var_2.c, vec4<f32>(var_1.e.b, 312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_1.b.x, var_2.e))))), _wgslsmith_f_op_f32(max(-587f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d + var_1.b.x) + _wgslsmith_f_op_f32(-var_1.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.b)));
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1.c.xxw * var_1.c.wxz), var_2.d.wwy));
    return _wgslsmith_f_op_f32(-var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(806f - _wgslsmith_f_op_f32(-1198f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.a))))));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2298f + _wgslsmith_f_op_f32(1008f + 1378f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-857f, -1618f)) * -1274f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 383f)))))));
    var_0 = _wgslsmith_div_f32(-165f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-429f)), 746f));
    var var_1 = !(0u > (4294967295u ^ u_input.a));
    var var_2 = Struct_2(true, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -12283i, 19614i, u_input.b.x ^ 0i), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -1i, 29625i, -9421i), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, 1i)), vec4<i32>(9440i, -46502i, 2147483647i, u_input.b.x), abs(vec4<i32>(2147483647i, u_input.b.x, 2147483647i, 8051i)))) <= (i32(-1i) * -1i), vec3<u32>(func_3(vec2<i32>(~(-20769i), u_input.b.x)), firstLeadingBit(reverseBits(1u)), 98778u), ~(~0u));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_4 = func_2(true).e.a;
    let var_5 = -1i;
    var_1 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(12813i);
}

