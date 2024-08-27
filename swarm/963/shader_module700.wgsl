struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<u32>, 18>;

var<private> global2: bool = true;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_0.a, reverseBits(abs(~(~arg_0.c))), vec4<u32>(u_input.b.x, ~(~_wgslsmith_mult_u32(0u, u_input.b.x)), 22993u, 1u), vec2<u32>(~arg_0.c.x, _wgslsmith_dot_vec4_u32(reverseBits(min(vec4<u32>(u_input.b.x, arg_0.d.x, arg_0.b.x, u_input.b.x), arg_0.c)), reverseBits(vec4<u32>(arg_0.b.x, arg_0.d.x, arg_0.d.x, 1u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.e, _wgslsmith_f_op_vec2_f32(-arg_0.e)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(658f, 632f))) - _wgslsmith_f_op_vec2_f32(-arg_0.e)))));
    let var_1 = Struct_1(!(!(!(!arg_0.a))), min(min(vec4<u32>(4294967295u | var_0.b.x, var_0.d.x, abs(arg_0.c.x), var_0.d.x), ~(~vec4<u32>(u_input.b.x, 56084u, var_0.b.x, u_input.b.x))), _wgslsmith_mod_vec4_u32(arg_0.b, arg_0.b)), var_0.c, vec2<u32>(arg_0.d.x, _wgslsmith_div_u32(20856u, _wgslsmith_div_u32(4294967295u, 1u) | u_input.b.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(var_0.e)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.e * var_0.e))), !(!select(vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.a.xw, vec2<bool>(var_0.a.x, false))))));
    global1 = array<vec2<u32>, 18>();
    global2 = var_0.a.x;
    var var_2 = abs(~(~u_input.b.x << (_wgslsmith_mult_u32(countOneBits(u_input.b.x), 13411u) % 32u)));
    return _wgslsmith_f_op_f32(f32(-1f) * -672f);
}

fn func_4(arg_0: vec3<u32>, arg_1: f32) -> vec3<f32> {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_0.yx, u_input.b.zx), _wgslsmith_clamp_u32(0u, firstTrailingBit(21513u), _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_0.x, u_input.b.x, u_input.b.x), 4294967295u), 1u)));
    global1 = array<vec2<u32>, 18>();
    global1 = array<vec2<u32>, 18>();
    let var_1 = _wgslsmith_sub_i32(min(-1i, _wgslsmith_sub_i32(u_input.a, -37660i) << (_wgslsmith_mod_u32(1u, 451u) % 32u)) >> (_wgslsmith_mod_u32(1u | select(arg_0.x, var_0, false), firstLeadingBit(abs(arg_0.x))) % 32u), u_input.a);
    var var_2 = _wgslsmith_clamp_vec3_i32(-firstLeadingBit(vec3<i32>(-34213i, firstLeadingBit(26534i), _wgslsmith_add_i32(56558i, 75304i))), vec3<i32>(8761i, min(_wgslsmith_dot_vec4_i32(-vec4<i32>(23570i, -14480i, u_input.a, 0i), vec4<i32>(u_input.a, var_1, u_input.a, var_1) << (vec4<u32>(arg_0.x, var_0, 47535u, 1u) % vec4<u32>(32u))), -1i), 0i), ~(~vec3<i32>(min(0i, 1350i), _wgslsmith_mult_i32(u_input.a, 30526i), u_input.a)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -509f)), _wgslsmith_f_op_f32(-221f - _wgslsmith_f_op_f32(max(675f, -1149f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, 1000f) * vec3<f32>(-2373f, arg_1, -1000f)), vec3<f32>(arg_1, 761f, 2172f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 348f, -987f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-870f, arg_1, 191f)))))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_sub_vec3_u32(u_input.b.zxw, u_input.b.xxx >> (~vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(func_3(Struct_1(select(vec4<bool>(arg_1, arg_0.b, true, false), vec4<bool>(false, true, true, arg_1), vec4<bool>(false, false, false, false)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 22713u, 76216u, u_input.b.x), u_input.b), _wgslsmith_sub_vec4_u32(u_input.b, u_input.b), u_input.b.xy, _wgslsmith_f_op_vec2_f32(-arg_3.a.yy)))))), arg_3.b);
    var_0 = arg_0;
    let var_1 = arg_2.xwy;
    var var_2 = min(~23904u, select(1u, ~(0u ^ u_input.b.x), var_0.b));
    var var_3 = select(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(52166u, 14686u)), ~vec2<u32>(~u_input.b.x, abs(u_input.b.x))), vec2<u32>(~90233u, u_input.b.x), vec2<bool>(true, true));
    return countOneBits(var_1) >> (u_input.b.xwz % vec3<u32>(32u));
}

fn func_5(arg_0: i32) -> Struct_2 {
    global0 = select(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(max(14133u, u_input.b.x), u_input.b.x), ~(~_wgslsmith_clamp_u32(4294967295u, u_input.b.x, u_input.b.x))), 4294967295u, ((_wgslsmith_f_op_f32(ceil(-657f)) > -221f) | true) & !(any(vec2<bool>(true, true)) && all(vec3<bool>(false, false, true))));
    var var_0 = Struct_1(!vec4<bool>(!all(vec3<bool>(false, true, false)), any(vec4<bool>(true, false, false, false)), false, select(true, true, true)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~u_input.b, u_input.b), _wgslsmith_mod_vec4_u32(u_input.b << (~u_input.b % vec4<u32>(32u)), u_input.b)), ~firstTrailingBit(~(~vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x))), vec2<u32>(countOneBits(u_input.b.x), u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-628f - -740f), 710f) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(110f, 636f), vec2<f32>(-515f, 1013f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 1328f)))))));
    global2 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1386f, _wgslsmith_f_op_f32(-339f + var_0.e.x))))))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(func_4(abs(vec3<u32>(0u, var_0.c.x, 7281u) << (u_input.b.xyw % vec3<u32>(32u))) >> (~max(vec3<u32>(var_0.d.x, var_0.b.x, var_0.d.x), u_input.b.xzw) % vec3<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.e.x), -1000f, var_0.a.x)))))), var_0.a.x);
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_2 {
    global0 = u_input.b.x;
    var var_0 = arg_1.a.xy;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(938f + -594f) * _wgslsmith_f_op_f32(max(332f, -519f))), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 372f) * arg_1.a.x)))));
    var var_2 = arg_1.b;
    var_2 = arg_1.b;
    return arg_1;
}

fn func_1() -> vec3<f32> {
    var var_0 = abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(u_input.a, 0i)), firstLeadingBit(vec2<i32>(-10545i, 64013i) ^ vec2<i32>(u_input.a, -19409i)) | vec2<i32>(-u_input.a, max(u_input.a, 16430i))));
    var var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-875f, -1012f) - vec2<f32>(215f, 675f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, 424f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1621f, -536f))))) - vec2<f32>(417f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -999f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(835f, -1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2495f, 418f)))))));
    global0 = firstTrailingBit(~31502u);
    var var_3 = func_6(~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(21846u, 4294967295u, 1u, 4294967295u)), _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, 58125u, u_input.b.x))), func_5(_wgslsmith_dot_vec3_i32(vec3<i32>(-1770i >> (u_input.b.x % 32u), -12249i, u_input.a), ~func_2(Struct_2(vec3<f32>(var_2.x, 330f, var_2.x), false), false, vec4<i32>(u_input.a, 15206i, u_input.a, u_input.a), Struct_2(vec3<f32>(495f, 167f, var_2.x), true)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x - var_2.x))), _wgslsmith_f_op_f32(1548f - _wgslsmith_f_op_f32(-var_2.x)), var_2.x), func_5(32299i).a, _wgslsmith_f_op_f32(round(var_2.x)) > 378f)));
}

fn func_7(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(vec4<bool>(arg_1.b, _wgslsmith_f_op_f32(-arg_1.a.x) < arg_1.a.x, true, arg_1.b), ~vec4<u32>(u_input.b.x >> (u_input.b.x % 32u), 97013u, _wgslsmith_add_u32(_wgslsmith_sub_u32(0u, u_input.b.x), u_input.b.x), arg_0), vec4<u32>(4294967295u, ~0u, arg_0, u_input.b.x), _wgslsmith_clamp_vec2_u32(u_input.b.xw, reverseBits(select(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(1u, 0u)), global1[_wgslsmith_index_u32(arg_0, 18u)], arg_1.b)), firstLeadingBit(~(vec2<u32>(arg_0, arg_0) & vec2<u32>(94231u, arg_0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - 660f))) * vec2<f32>(-490f, _wgslsmith_f_op_vec3_f32(func_4(u_input.b.wwy, _wgslsmith_f_op_f32(round(-256f)))).x)));
    global0 = ~_wgslsmith_add_u32(var_0.c.x, ~reverseBits(arg_0 >> (0u % 32u)));
    var var_1 = var_0.e.x;
    var var_2 = vec4<i32>(u_input.a, _wgslsmith_add_i32(-2147483647i, u_input.a), i32(-1i) * -1i, reverseBits(-u_input.a & -(~u_input.a)));
    var var_3 = ~var_2.yzx;
    return Struct_2(func_6(~select(vec4<u32>(arg_0, 52591u, u_input.b.x, u_input.b.x), ~vec4<u32>(34935u, arg_0, 4294967295u, u_input.b.x), select(var_0.a, var_0.a, false)), arg_1).a, var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(72842u, ~(~_wgslsmith_add_u32(abs(82245u), u_input.b.x)));
    global0 = u_input.b.x;
    var var_0 = func_7(6482u, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(303f, 452f, -810f), _wgslsmith_f_op_vec3_f32(func_1()))), func_5(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)).b && !select(true, false, false)));
    var var_1 = vec3<i32>(u_input.a, 2147483647i, 2147483647i);
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(var_0.a)), true);
    var var_2 = vec2<f32>(-866f, 1000f);
    let var_3 = u_input.b.xy;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(266f + _wgslsmith_div_f32(795f, 526f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2021f), var_0.a.x) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -467f), func_5(10779i).a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.x)) * 681f)));
}

