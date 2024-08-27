struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<bool>,
    d: bool,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: i32 = -2754i;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    let var_0 = -1253f;
    global1 = arg_1;
    let var_1 = !(abs(global1.b.x) < _wgslsmith_add_i32(global0.b.x, -2147483647i));
    var var_2 = -_wgslsmith_mult_vec4_i32(-vec4<i32>(38064i, -2147483647i, arg_3.x, 2147483647i), vec4<i32>(-arg_3.x, 1i, u_input.c ^ global0.b.x, -21357i)) ^ -max(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, 1i, u_input.c), vec4<i32>(u_input.c, -1i, -2147483647i, arg_3.x)), abs(vec4<i32>(-2147483647i, global1.b.x, arg_3.x, arg_1.b.x)));
    var var_3 = 1i;
    return 185f;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-arg_1.x)) + _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec2_u32(arg_0.e.xy, vec2<u32>(arg_0.e.x, 8254u)) & vec2<u32>(1u, global0.e.x), arg_0, arg_0, vec3<i32>(~global0.b.x, -2147483647i, i32(-1i) * -5224i)))));
    var var_1 = arg_0.b.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -468f) + arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_f32(step(-643f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_0.x, arg_1.x))))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(var_0.x - -1027f) != _wgslsmith_f_op_f32(-arg_1.x), -vec3<i32>(19214i, _wgslsmith_dot_vec3_i32(global0.b, _wgslsmith_div_vec3_i32(vec3<i32>(global1.b.x, global0.b.x, arg_0.b.x), vec3<i32>(0i, arg_0.b.x, -36834i))), 38856i), !vec4<bool>(arg_0.c.x || false, global1.c.x, !(global0.a && true), global0.a), global1.c.x, vec3<u32>(select(0u, 1u, select(false, true, false) || all(arg_0.c)), 14578u, _wgslsmith_mult_u32(global0.e.x, 1u)));
    global1 = Struct_1(false, u_input.a, !(!select(vec4<bool>(false, global1.d, global0.d, true), !vec4<bool>(global1.c.x, global0.c.x, true, global1.d), arg_0.c.x)), _wgslsmith_clamp_i32(-_wgslsmith_mult_i32(arg_0.b.x, u_input.b.x), 0i, 2669i) > (global1.b.x ^ var_3.b.x), ~(~vec3<u32>(select(4294967295u, 31240u, global1.d), _wgslsmith_mult_u32(arg_2, global0.e.x), min(0u, arg_0.e.x))));
    return Struct_1(var_3.c.x, global1.b, vec4<bool>(var_3.c.x, var_3.c.x, any(select(global1.c.zx, global0.c.yz, arg_0.d)) | !(!var_3.d), false), all(!(!(!vec4<bool>(global0.a, false, arg_0.a, true)))), ~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(arg_2, global1.e.x, arg_2)), global0.e));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> bool {
    global1 = arg_3;
    var var_0 = ~arg_1.b.x;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -794f), -1791f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1810f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-307f, -2305f)))), -198f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f) - _wgslsmith_f_op_f32(-1257f + _wgslsmith_f_op_f32(1356f + 1000f)))));
    var var_2 = arg_1.c.zzw;
    global1 = arg_1;
    return !((countOneBits(arg_3.b.x & global0.b.x) & 12315i) > global0.b.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = Struct_1(global1.c.x, ~(~reverseBits(vec3<i32>(arg_1.b.x, -58452i, u_input.a.x))), !global0.c, !func_4(!vec2<bool>(global1.d, global0.c.x), arg_1, -_wgslsmith_mod_i32(global0.b.x, 0i), func_2(Struct_1(true, arg_2.b, arg_2.c, true, arg_1.e), arg_0, ~4294967295u)), vec3<u32>(abs(global0.e.x), _wgslsmith_clamp_u32(countOneBits(~4294967295u), ~63435u, max(23011u, _wgslsmith_mod_u32(global1.e.x, arg_2.e.x))), select(min(~arg_2.e.x, ~4294967295u), _wgslsmith_clamp_u32(global0.e.x, ~150988u, ~74075u), arg_1.d)));
    var var_0 = func_2(Struct_1(true, select(arg_2.b, vec3<i32>(1i, global0.b.x, 17533i), !arg_1.c.wyz) ^ abs(u_input.a), vec4<bool>(false, global1.d, all(global1.c), !(!arg_2.a)), false && (u_input.c >= ~23697i), _wgslsmith_mult_vec3_u32(reverseBits(arg_2.e), arg_1.e)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(255f, arg_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1526f * arg_0.x) - -334f)), -964f, 812f), select(~global0.e.x, abs(global0.e.x), all(arg_1.c)));
    var var_1 = func_2(func_2(func_2(func_2(arg_1, _wgslsmith_div_vec3_f32(vec3<f32>(-393f, -541f, -884f), arg_0), 20070u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(664f, arg_0.x, -289f) + vec3<f32>(arg_0.x, -974f, arg_0.x))), arg_1.e.x ^ abs(1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1263f, -106f, 658f)))), ~(~var_0.e.x)), arg_0, 1u);
    let var_2 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_2, arg_0.x, 1355f), _wgslsmith_f_op_vec3_f32(-arg_0))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(610f))), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))) - vec3<f32>(var_2, _wgslsmith_f_op_f32(arg_0.x * var_2), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + var_2) - _wgslsmith_f_op_f32(-1000f + -813f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -582f)))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(567f * arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 1f), true)))), _wgslsmith_f_op_f32(-var_2));
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = vec2<i32>(~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-23908i, arg_3), global0.b.x, u_input.b.x), -44270i);
    let var_1 = func_2(func_2(arg_2, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.xzy - arg_0.wxz)))), ~4294967295u), arg_0.xyx, global1.e.x).e;
    var var_2 = _wgslsmith_sub_u32(~(~var_1.x), _wgslsmith_sub_u32(global1.e.x, func_2(arg_2, _wgslsmith_f_op_vec3_f32(arg_0.yxz * vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), reverseBits(global0.e.x) | _wgslsmith_sub_u32(global1.e.x, var_1.x)).e.x));
    let var_3 = -14305i;
    global1 = Struct_1(arg_1, vec3<i32>(2147483647i, (firstLeadingBit(arg_2.b.x) & (arg_3 ^ global1.b.x)) >> (0u % 32u), -44466i), select(!func_2(arg_2, _wgslsmith_f_op_vec3_f32(arg_0.wxw - vec3<f32>(arg_0.x, 734f, -1256f)), global1.e.x).c, vec4<bool>(!all(arg_2.c.zxz), !arg_2.a | all(vec3<bool>(global1.d, arg_2.c.x, arg_2.c.x)), true, true), func_2(Struct_1(all(global0.c.wz), ~global1.b, vec4<bool>(global1.c.x, true, true, true), !global0.c.x, global1.e), vec3<f32>(_wgslsmith_div_f32(-1266f, arg_0.x), _wgslsmith_f_op_f32(func_3(vec2<u32>(var_1.x, var_1.x), arg_2, Struct_1(global1.a, vec3<i32>(var_0.x, -44369i, var_3), vec4<bool>(true, arg_2.d, true, true), true, arg_2.e), global0.b)), -333f), _wgslsmith_sub_u32(var_1.x >> (global1.e.x % 32u), arg_2.e.x)).c), false, vec3<u32>(~_wgslsmith_mod_u32(arg_2.e.x << (1u % 32u), 0u), ~59895u, abs(32895u)));
    return !(arg_0.x <= _wgslsmith_f_op_f32(869f + -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(false || func_5(vec4<f32>(_wgslsmith_f_op_f32(abs(-952f)), 963f, 566f, _wgslsmith_f_op_f32(func_1(vec3<f32>(-1000f, 1000f, -671f), Struct_1(global1.a, vec3<i32>(global1.b.x, 2147483647i, 1i), vec4<bool>(false, true, true, global0.a), global0.c.x, vec3<u32>(58345u, 1u, global1.e.x)), Struct_1(false, global1.b, global0.c, global1.a, global1.e)))), true, func_2(func_2(Struct_1(global0.d, vec3<i32>(u_input.c, 10415i, 33682i), vec4<bool>(global0.a, global1.d, false, true), global0.c.x, global1.e), vec3<f32>(1000f, -2649f, 161f), global1.e.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-990f, 577f, -219f) + vec3<f32>(-1412f, -459f, -151f)), global0.e.x | 13820u), global0.b.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(522f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1000f))))));
    var var_2 = vec2<i32>(_wgslsmith_sub_i32(-166i, _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, global1.b.x), select(global1.b.x, global0.b.x, global1.a)) >> (abs(1u) % 32u)), global1.b.x);
    let var_3 = max(~global1.b.yz | _wgslsmith_mult_vec2_i32(vec2<i32>(-global0.b.x, -var_2.x), vec2<i32>(-1i, var_2.x)), select(_wgslsmith_sub_vec2_i32(~u_input.a.zx >> (_wgslsmith_add_vec2_u32(vec2<u32>(global1.e.x, global0.e.x), global1.e.zz) % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(global1.b.x, -2147483647i), vec2<i32>(global0.b.x, global1.b.x))), select(-vec2<i32>(global0.b.x, global1.b.x) << ((vec2<u32>(43541u, 4294967295u) >> (vec2<u32>(global0.e.x, global0.e.x) % vec2<u32>(32u))) % vec2<u32>(32u)), abs(vec2<i32>(global1.b.x, global0.b.x)), vec2<bool>(func_4(vec2<bool>(true, global1.a), Struct_1(global1.d, vec3<i32>(global0.b.x, 2147483647i, 0i), global0.c, true, vec3<u32>(global0.e.x, 0u, 1u)), 42215i, Struct_1(false, global1.b, vec4<bool>(true, global1.d, false, global0.c.x), true, vec3<u32>(global0.e.x, 0u, global0.e.x))), !global1.c.x)), vec2<bool>(global0.b.x > func_2(Struct_1(global0.d, global1.b, vec4<bool>(global1.d, global0.c.x, true, global0.a), false, vec3<u32>(16038u, global1.e.x, global0.e.x)), vec3<f32>(-791f, 571f, -444f), global1.e.x).b.x, global1.a)));
    var_0 = func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1446f, -359f, 1619f), vec3<f32>(1299f, 545f, -1686f)), Struct_1(global0.d, global1.b, global1.c, false, vec3<u32>(99365u, global0.e.x, global0.e.x)), func_2(Struct_1(true, global1.b, vec4<bool>(global0.d, global1.a, global0.a, global0.c.x), false, vec3<u32>(4294967295u, global1.e.x, 0u)), vec3<f32>(-2367f, -1343f, 172f), 31552u))), _wgslsmith_f_op_f32(select(799f, -1174f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -117f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(global0.e.yx, Struct_1(false, vec3<i32>(-2147483647i, u_input.b.x, 56679i), global1.c, false, vec3<u32>(global0.e.x, 1020u, 4294967295u)), Struct_1(true, vec3<i32>(var_3.x, -31433i, global1.b.x), global1.c, false, global0.e), global0.b)))))), true, Struct_1(!select(global1.c.x, true, all(global1.c)), ~_wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, u_input.c, -1i), firstTrailingBit(vec3<i32>(u_input.b.x, var_2.x, u_input.a.x))), !(!vec4<bool>(global1.a, true, true, true)), !(!global1.d) & false, select(_wgslsmith_add_vec3_u32(global1.e, vec3<u32>(global0.e.x, global0.e.x, global1.e.x)), vec3<u32>(31884u, global0.e.x, 1u), vec3<bool>(select(global0.a, false, global0.a), true, !global1.c.x))), global0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, global0.e.x, 41364u), vec4<u32>(23117u, 70387u, 5369u, global1.e.x)), abs(vec4<u32>(global1.e.x, 27355u, 0u, 1u))), reverseBits(vec4<u32>(4294967295u, global1.e.x, global0.e.x, 25166u))), min(_wgslsmith_div_vec4_u32(~vec4<u32>(global0.e.x, 35313u, global0.e.x, 22158u), ~vec4<u32>(global1.e.x, global0.e.x, 4840u, global0.e.x)), ~vec4<u32>(global1.e.x, 0u, global0.e.x, 0u))), _wgslsmith_f_op_f32(f32(-1f) * -1576f), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0.b.x, 2147483647i, 2147483647i), vec4<i32>(var_2.x, global0.b.x, 898i, var_3.x))), _wgslsmith_mod_i32(-16915i, reverseBits(-1i)), 0i, firstTrailingBit(var_3.x)), _wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-9090i, -2147483647i, 2147483647i, global1.b.x), vec4<i32>(var_3.x, -1i, var_3.x, -11105i)), vec4<i32>(global0.b.x, global1.b.x, global1.b.x ^ global0.b.x, ~(-2147483647i)))));
}

