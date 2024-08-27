struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -4428i;

var<private> global1: vec3<i32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec2<i32> {
    global0 = u_input.c.x >> (~firstTrailingBit(1u) % 32u);
    var var_0 = !(!select(vec2<bool>(false, select(true, false, true)), vec2<bool>(all(vec2<bool>(false, true)), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), true))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -407f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    global0 = global1.x;
    let var_2 = Struct_1(~(~max(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(global1.x, u_input.c.x, global1.x)) & _wgslsmith_mult_vec3_i32(vec3<i32>(23200i, u_input.c.x, -1i) ^ vec3<i32>(77382i, 22215i, u_input.c.x), vec3<i32>(u_input.c.x, 2167i, 0i))), ~firstLeadingBit(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, -1i, global1.x), vec3<i32>(86774i, global1.x, 5452i)))), ~max(_wgslsmith_sub_u32(108107u, ~u_input.b), 0u), firstLeadingBit(0i), vec2<f32>(-354f, -1006f));
    return ~((var_2.b.zy & global1.yz) >> (vec2<u32>(_wgslsmith_sub_u32(~var_2.c, u_input.b), ~0u) % vec2<u32>(32u)));
}

fn func_2(arg_0: f32, arg_1: u32) -> vec3<bool> {
    let var_0 = vec2<i32>(~2147483647i, ~abs(-global1.x) >> (u_input.b % 32u));
    var var_1 = -_wgslsmith_clamp_vec2_i32(abs(_wgslsmith_mult_vec2_i32(var_0, vec2<i32>(u_input.c.x, -1i)) ^ vec2<i32>(6547i, 9996i)), u_input.c, global1.yy);
    var_1 = _wgslsmith_mult_vec2_i32(func_3(), ~(~(-select(u_input.c, global1.yz, false))));
    let var_2 = all(select(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, true), true), vec2<bool>(select(false, all(vec4<bool>(true, true, true, false)), -121f <= arg_0), -1i >= -var_1.x), !(true | any(vec3<bool>(false, false, false)))));
    var var_3 = ~(~_wgslsmith_sub_vec4_i32(~vec4<i32>(-1i, var_1.x, 0i, -16171i), vec4<i32>(var_0.x, u_input.c.x, -30893i, 6665i))) ^ vec4<i32>(_wgslsmith_mult_i32(global1.x >> (4294967295u % 32u), var_1.x ^ var_1.x) & _wgslsmith_add_i32(var_0.x, select(0i, var_0.x, false)), -_wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.x, 2147483647i), reverseBits(var_0.x)), _wgslsmith_mod_i32(0i, global1.x), -46609i);
    return vec3<bool>(var_2, !var_2, var_2);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.c.x, _wgslsmith_div_i32(u_input.c.x, 0i), ~global1.x, u_input.c.x << (u_input.a.x % 32u)), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 43951i, arg_1.b.x, -1i), vec4<i32>(u_input.c.x, u_input.c.x, global1.x, u_input.c.x)))) ^ vec4<i32>(-u_input.c.x, u_input.c.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(-29235i, global1.x, 2147483647i), abs(_wgslsmith_mod_vec3_i32(arg_1.a, vec3<i32>(-2147483647i, u_input.c.x, -7221i)))), -1i);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-642f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(153f - arg_1.e.x), arg_1.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) * 853f), arg_2.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.e.x), 107f, arg_1.e.x >= arg_2.x)), 1310f, _wgslsmith_f_op_f32(f32(-1f) * -754f), _wgslsmith_f_op_f32(max(-1301f, _wgslsmith_f_op_f32(-arg_2.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.x + -249f), _wgslsmith_f_op_f32(-arg_2.x), arg_1.e.x, _wgslsmith_f_op_f32(abs(-151f))))));
    var var_2 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~_wgslsmith_add_u32(arg_1.c, u_input.a.x), u_input.b) >> (_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, 1u), 4294967295u), firstTrailingBit(_wgslsmith_mult_u32(21576u, 63058u))) % 32u), _wgslsmith_mult_u32(arg_1.c, firstTrailingBit(0u)), _wgslsmith_sub_u32(u_input.b, u_input.b));
    global0 = 35017i;
    return Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.wxz)) * _wgslsmith_f_op_vec3_f32(-arg_2))), _wgslsmith_mod_vec4_i32(min(select(vec4<i32>(-19245i, 35920i, u_input.c.x, u_input.c.x), vec4<i32>(arg_1.b.x, var_0.x, u_input.c.x, u_input.c.x), arg_0.x), vec4<i32>(-var_0.x, -global1.x, -35431i, min(-2147483647i, 2147483647i))), vec4<i32>(global1.x, -arg_1.a.x >> (arg_1.c % 32u), arg_1.b.x, ~_wgslsmith_dot_vec2_i32(arg_1.b.xz, global1.xx))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2) -> Struct_2 {
    var var_0 = func_4(vec3<bool>(any(vec3<bool>(true, arg_1.a.x != -970f, true)), select(any(vec4<bool>(true, true, true, true)), true | (-146f > arg_0.a.a.x), arg_0.a.a.x <= arg_1.a.x), all(vec2<bool>(false, true))), Struct_1(-func_4(vec3<bool>(true, false, false), Struct_1(arg_0.b.wyy, vec3<i32>(u_input.c.x, -2147483647i, arg_0.b.x), u_input.b, 0i, arg_1.a.yy), arg_1.a).b.zyw >> ((firstLeadingBit(vec3<u32>(0u, u_input.a.x, u_input.b)) ^ ~vec3<u32>(4265u, 0u, 32894u)) % vec3<u32>(32u)), select(min(vec3<i32>(u_input.c.x, u_input.c.x, global1.x), firstTrailingBit(arg_0.b.xww)), -vec3<i32>(global1.x, 0i, 2147483647i), !any(vec2<bool>(false, false))), u_input.b | u_input.a.x, -29567i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_1.a.xx)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, arg_0.a.a.x))))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.x), 403f, true)))), 1168f, 951f)).b;
    var var_1 = func_4(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_1(~vec3<i32>(-1i, -79799i, arg_0.b.x), -abs(-vec3<i32>(26945i, var_0.x, 1i)), _wgslsmith_dot_vec2_u32(vec2<u32>(13670u, _wgslsmith_mod_u32(u_input.b, u_input.b)), firstLeadingBit(_wgslsmith_div_vec2_u32(u_input.a.wx, vec2<u32>(u_input.b, 780u)))), firstTrailingBit(~_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(var_0.x, -22287i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-390f, arg_1.a.x) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a.x, arg_0.a.a.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1128f, -814f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a.a - arg_1.a)));
    let var_2 = func_4(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), true), Struct_1(select(vec3<i32>(u_input.c.x | global1.x, 1i, _wgslsmith_mult_i32(1i, 37883i)), var_0.xwz, vec3<bool>(all(vec4<bool>(false, true, false, false)), false, false)), var_1.b.xxz, _wgslsmith_mod_u32(u_input.a.x, 1u), ~(var_1.b.x | firstTrailingBit(-34758i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(arg_0.a.a.x * 2043f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a.x, -776f, -695f) - vec3<f32>(-175f, -874f, var_1.a.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(658f, -1312f, arg_0.a.a.x)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(3370f, 1149f, -269f)))))))));
    let var_3 = var_2;
    var var_4 = vec3<u32>(1u, ~84497u, u_input.a.x);
    return arg_0.a;
}

fn func_1() -> i32 {
    var var_0 = -1i;
    var var_1 = Struct_4(func_5(func_4(select(func_2(845f, 3453u), vec3<bool>(true, true, true), true), Struct_1(vec3<i32>(global1.x, global1.x, u_input.c.x), vec3<i32>(-9093i, 2147483647i, u_input.c.x), ~u_input.a.x, 2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(927f, 204f) + vec2<f32>(-650f, 636f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1273f, 381f, 1000f), vec3<f32>(-610f, -1447f, -406f), false)) * vec3<f32>(513f, -820f, 766f))), Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2308f, 1000f, -691f), vec3<f32>(-956f, -842f, -820f), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1165f, 1538f, 876f)))))), vec4<i32>(u_input.c.x, select(20996i, -(global1.x ^ u_input.c.x), true), _wgslsmith_sub_i32(global1.x, global1.x), global1.x));
    var var_2 = Struct_4(func_5(func_4(select(func_2(702f, 1u), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), Struct_1(vec3<i32>(-33706i, global1.x, u_input.c.x) ^ vec3<i32>(var_1.b.x, u_input.c.x, global1.x), vec3<i32>(var_1.b.x, global1.x, u_input.c.x), u_input.a.x >> (0u % 32u), select(3592i, var_1.b.x, false), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-604f, var_1.a.a.x), var_1.a.a.yx, vec2<bool>(false, true)))), var_1.a.a), var_1.a), var_1.b);
    var_1 = Struct_4(Struct_2(var_2.a.a), var_2.b);
    global0 = -71573i;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.c.x, u_input.c.x);
    global1 = vec3<i32>(_wgslsmith_mod_i32(global1.x, i32(-1i) * -(var_0.x | -55142i)), firstTrailingBit(firstLeadingBit(48115i)), max(-global1.x, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_0.x, global1.x, 2147483647i)), -vec3<i32>(-1742i, 0i, global1.x))) | -(~(~2147483647i)));
    global0 = abs(-92977i);
    var var_1 = -_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(func_1(), abs(-1i), func_3().x), ~vec3<i32>(u_input.c.x, var_0.x, global1.x));
    global0 = _wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(func_3().x, 1i ^ var_1.x, ~var_1.x), ~_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, var_1.x, -40481i), vec3<i32>(var_1.x, global1.x, -58960i))), _wgslsmith_mod_i32(2147483647i, u_input.c.x));
    global1 = vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(var_0.x >> (u_input.a.x % 32u), global1.x, i32(-1i) * -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(func_5(Struct_4(Struct_2(vec3<f32>(-867f, -1111f, 558f)), vec4<i32>(-2147483647i, 0i, var_1.x, 23823i)), func_5(Struct_4(Struct_2(vec3<f32>(1076f, -1100f, 305f)), vec4<i32>(var_0.x, var_1.x, -3868i, -45343i)), Struct_2(vec3<f32>(-1000f, 1259f, 166f)))).a.yz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), max(2147483647i, var_1.x) < 1i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(floor(761f)), _wgslsmith_f_op_f32(trunc(1027f)))))), global1.x, 1u, _wgslsmith_f_op_vec2_f32(-func_4(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), Struct_1(select(vec3<i32>(var_0.x, -33920i, var_0.x), vec3<i32>(-3234i, 2147483647i, 0i), true), vec3<i32>(19761i, 1i, u_input.c.x), 57438u, 12488i, _wgslsmith_f_op_vec2_f32(vec2<f32>(-213f, 499f) + vec2<f32>(-727f, -146f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-456f, 147f, -1000f)))))).a.a.yy));
}

