struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = !(_wgslsmith_clamp_i32(arg_0.b.a, abs(-2256i), arg_0.b.b.x) <= (_wgslsmith_mod_i32(u_input.e & -2147483647i, -arg_0.a.x) & (1i | (arg_0.b.b.x & arg_0.b.a))));
    let var_0 = Struct_3(vec2<i32>(u_input.e, -(~(-arg_0.a.x))), Struct_1(abs(2147483647i), vec3<i32>(arg_0.b.b.x, i32(-1i) * -arg_0.b.b.x, arg_0.b.c.x), select(abs(vec3<i32>(u_input.e, u_input.e, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -12353i, arg_0.b.a), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.x, -19369i, arg_0.a.x), vec3<i32>(1i, -2147483647i, -1i))), true), arg_0.b.d), 29789u, select(u_input.a.wyx, ~u_input.d.xzy, select(true, true, (arg_0.a.x ^ arg_0.b.c.x) < -u_input.e)), -356f);
    var var_1 = _wgslsmith_div_vec2_f32(arg_0.b.d.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.d.x, -1000f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.b.d.x, arg_0.e))) + _wgslsmith_f_op_vec2_f32(-arg_0.b.d.zx)))));
    let var_2 = Struct_3(min(-var_0.a ^ select(vec2<i32>(0i, var_0.b.a), vec2<i32>(arg_0.a.x, arg_0.b.b.x), arg_0.b.d.x < arg_0.b.d.x), vec2<i32>(~u_input.e, abs(~arg_0.b.c.x))), Struct_1(0i, _wgslsmith_add_vec3_i32(~vec3<i32>(18574i, var_0.a.x, -2147483647i), firstTrailingBit(vec3<i32>(var_0.a.x, 11619i, var_0.a.x))), vec3<i32>(-var_0.a.x | -arg_0.b.b.x, _wgslsmith_sub_i32(-2657i, _wgslsmith_clamp_i32(-24332i, var_0.b.a, 6308i)), 1i), arg_0.b.d), 4294967295u, vec3<u32>(~0u, select(u_input.b | 23448u, abs(25640u), false), _wgslsmith_add_u32(min(u_input.d.x, 1u), ~2809u)) << (~(~u_input.a.zxx) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.d.x)))) + _wgslsmith_div_f32(var_0.b.d.x, 1000f)));
    let var_3 = var_0;
    return 4294967295u;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec4<u32>, arg_3: u32) -> vec3<u32> {
    global0 = arg_1.x | false;
    let var_0 = u_input.b;
    var var_1 = arg_2.ww;
    let var_2 = Struct_3(-firstLeadingBit(arg_0.zy), Struct_1(firstLeadingBit(-u_input.e), arg_0.www, vec3<i32>(i32(-1i) * -2147483647i, -arg_0.x, arg_0.x >> (0u % 32u)) >> (~(~vec3<u32>(arg_2.x, 4294967295u, arg_2.x)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1565f, -1255f, -392f)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -732f), -1274f, -1515f))), arg_3, ~(~_wgslsmith_clamp_vec3_u32(~u_input.d.yyx, _wgslsmith_mult_vec3_u32(arg_2.wyz, vec3<u32>(arg_3, arg_3, var_1.x)), vec3<u32>(44018u, var_1.x, 4294967295u) << (arg_2.wwx % vec3<u32>(32u)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(941f - -821f) - 605f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(548f, 207f, true)) * -1567f)), arg_1.x)));
    global0 = !(var_2.e < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.b.d.x, var_2.e))) + -1340f));
    return ~vec3<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(~u_input.d.wxz), max(var_2.d, var_2.d)), func_3(var_2), var_1.x);
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), -354f)))) - 867f);
    var var_1 = ~(~u_input.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.b, u_input.a.x) | ~u_input.d.wwz, _wgslsmith_div_vec3_u32(func_2(vec4<i32>(-13862i, u_input.e, -22486i, 0i), vec4<bool>(true, true, true, true), u_input.d, 47708u), select(vec3<u32>(5077u, 0u, u_input.c), vec3<u32>(u_input.c, u_input.c, 1u), true))) % 32u));
    var_1 = select(firstTrailingBit(firstTrailingBit(_wgslsmith_mod_u32(~u_input.d.x, 6919u))), max(firstLeadingBit(abs(927u) | _wgslsmith_mod_u32(u_input.c, u_input.c)), select(_wgslsmith_div_u32(4294967295u, 12408u) & select(u_input.a.x, 1u, true), 30190u, true)), !all(vec3<bool>(any(vec2<bool>(false, false)), true, arg_0 > arg_0)));
    var var_2 = ~(i32(-1i) * -2147483647i);
    var var_3 = select(!vec4<bool>(select(false, true, false), true, true, true), select(vec4<bool>(true | (u_input.e > 6928i), false, true, firstTrailingBit(u_input.e) <= -7250i), !select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, false, true, true)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true))), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true))), !(!vec4<bool>(true, true, 0u != u_input.a.x, true)));
    return -(~u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1059f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-216f - -552f))))));
    let var_1 = Struct_1(u_input.e, ~vec3<i32>(-func_1(2003f), u_input.e, _wgslsmith_add_i32(u_input.e, 10545i)), _wgslsmith_sub_vec3_i32(~max(vec3<i32>(21114i, u_input.e, u_input.e), vec3<i32>(0i, u_input.e, u_input.e)) | vec3<i32>(17591i, -1i, -u_input.e), reverseBits(vec3<i32>(-25537i, u_input.e, u_input.e)) >> (min(~vec3<u32>(4294967295u, u_input.c, 4294967295u), ~u_input.d.xxx) % vec3<u32>(32u))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), true)), _wgslsmith_f_op_f32(487f - _wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_div_f32(-1000f, 1503f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(153f, -1034f, -1706f))))))));
    var var_2 = firstTrailingBit(~vec3<u32>(abs(~u_input.a.x), 47156u, _wgslsmith_mult_u32(u_input.b, u_input.d.x ^ 0u)));
    global0 = u_input.d.x > 1u;
    let var_3 = vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(648f * var_1.d.x), -1940f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_1.d.x)), _wgslsmith_f_op_f32(var_0.x - 1961f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.d.x)))));
    global0 = any(vec4<bool>(false, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)) == 1738f, true));
    var_2 = ~(u_input.d.yxw | (~vec3<u32>(4142u, var_2.x, var_2.x) & u_input.a.yzy));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0.x, -537f, false)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_3.x))))) + _wgslsmith_f_op_f32(f32(-1f) * -662f)) <= 1419f;
    let var_4 = Struct_1(5974i, vec3<i32>(2147483647i, -var_1.c.x, u_input.e), vec3<i32>(-firstTrailingBit(0i | var_1.b.x), u_input.e, ~countOneBits(i32(-1i) * -10320i)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -842f) * var_1.d.x), -2129f), _wgslsmith_f_op_vec3_f32(var_1.d * var_1.d), vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(var_1.a, var_4.c.x, var_1.a, var_1.b.x), reverseBits(vec4<i32>(0i, u_input.e, u_input.e, -3034i))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, 10321i, -15580i, u_input.e), vec4<i32>(var_4.a, u_input.e, 0i, u_input.e)))));
}

