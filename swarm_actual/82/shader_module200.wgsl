struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_4) -> i32 {
    var var_0 = false;
    var var_1 = arg_0;
    return 26482i;
}

fn func_3(arg_0: i32, arg_1: bool) -> vec2<f32> {
    let var_0 = -firstTrailingBit(abs(vec3<i32>(~arg_0, arg_0, -2147483647i)));
    var var_1 = 585f;
    var var_2 = false;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(f32(-1f) * -1790f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(939f, 1083f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1000f) * vec2<f32>(-905f, -1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1081f), _wgslsmith_f_op_f32(1397f + 274f)))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = -arg_2.zx;
    var var_1 = Struct_1(1u, reverseBits(_wgslsmith_mod_i32(arg_1.a.x, i32(-1i) * -arg_2.x)));
    var_0 = vec2<i32>(u_input.d, u_input.a);
    let var_2 = select(vec3<bool>(true, u_input.c.x <= (~u_input.e.x | var_1.a), !all(vec3<bool>(true, true, true))), vec3<bool>(false, true, true), !(!all(vec2<bool>(true, true))));
    var_1 = Struct_1(~67815u, u_input.d);
    return Struct_2(_wgslsmith_mult_vec2_i32(-arg_1.a, _wgslsmith_clamp_vec2_i32(firstLeadingBit(countOneBits(vec2<i32>(-2147483647i, arg_1.a.x))), vec2<i32>(arg_2.x, -274i ^ var_1.b), ~(-arg_2.xx))), arg_1.b);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = -firstTrailingBit(vec4<i32>(arg_1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b, arg_1.a.x, arg_2.b), -vec3<i32>(-19522i, arg_1.a.x, 2147483647i)), -3654i & arg_1.a.x, -1i << (abs(1u) % 32u)));
    let var_1 = arg_2.a;
    var var_2 = u_input.c;
    return Struct_2(~(vec2<i32>(~arg_2.b, 2147483647i) << (vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, 9078u), ~var_1) % vec2<u32>(32u))), arg_1.b);
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: i32) -> Struct_2 {
    var var_0 = select(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2 != arg_0.x, true, true, u_input.d <= u_input.d), true)), true);
    return func_5(select(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)))), vec2<bool>(-991f <= _wgslsmith_f_op_f32(sign(-1160f)), arg_1 != _wgslsmith_f_op_f32(arg_1 * arg_1))), func_4(_wgslsmith_f_op_f32(max(-1649f, 379f)), Struct_2(vec2<i32>(_wgslsmith_clamp_i32(0i, u_input.d, arg_2), func_2(Struct_4(Struct_3(arg_0, arg_0.x), Struct_3(arg_0, 1900i), arg_2))), _wgslsmith_f_op_vec2_f32(func_3(abs(2147483647i), true))), ~(-arg_0)), Struct_1(u_input.c.x, 1i));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    var var_0 = func_5(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(-2147483647i == arg_3.b, arg_3.b > arg_2.a.x), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), vec2<bool>(true, !select(false, true, false))), func_5(vec2<bool>(true, true), func_1(arg_3.a, _wgslsmith_f_op_f32(trunc(arg_2.b.x)), firstTrailingBit(-u_input.a)), Struct_1(firstLeadingBit(~arg_0.a), u_input.a)), arg_0);
    var var_1 = Struct_4(arg_3, arg_3, _wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_mult_i32(var_0.a.x, _wgslsmith_div_i32(var_0.a.x, u_input.a))), -2147483647i ^ _wgslsmith_clamp_i32(1i, func_5(vec2<bool>(true, true), arg_2, arg_0).a.x, arg_3.b)));
    var var_2 = arg_1;
    return arg_0;
}

fn func_7(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-u_input.a, _wgslsmith_div_i32(-1i, countOneBits(u_input.d)), -(~arg_0.b)), -(~max(vec3<i32>(u_input.d, u_input.a, arg_3.b), vec3<i32>(arg_0.b, arg_0.b, -33097i)))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(570f - -699f) + 1171f))) - func_1(vec3<i32>(-1i) * -vec3<i32>(arg_0.b, arg_0.b, var_0.x), func_4(_wgslsmith_div_f32(832f, -822f), func_4(-438f, Struct_2(var_0.zx, vec2<f32>(1099f, -894f)), vec3<i32>(1i, arg_3.b, var_0.x)), _wgslsmith_div_vec3_i32(vec3<i32>(36049i, 2147483647i, 0i), vec3<i32>(arg_3.b, 2147483647i, arg_0.b))).b.x, reverseBits(var_0.x | -5168i)).b.x)));
    let var_2 = Struct_2(var_0.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1277f, -603f), vec2<f32>(var_1, var_1))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 465f) + vec2<f32>(var_1, 2131f))))));
    var var_3 = Struct_4(Struct_3(_wgslsmith_div_vec3_i32(vec3<i32>(1i, abs(-5841i), -10525i), vec3<i32>(-4170i, 13440i, -1i)), ~_wgslsmith_clamp_i32(firstLeadingBit(arg_3.b), firstTrailingBit(1i), var_0.x)), Struct_3(vec3<i32>(-8818i, -7146i >> (arg_0.a % 32u), u_input.d << (u_input.b % 32u)), abs(-1i)), select(~var_0.x, 0i, arg_2.x));
    let var_4 = _wgslsmith_mod_u32(~arg_3.a, ~1u);
    return ~abs(u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_i32(~u_input.a, 1i);
    var_0 = _wgslsmith_mult_i32(-u_input.a, ~(-(i32(-1i) * -62014i) << (abs(1u) % 32u)));
    var_0 = -u_input.d;
    let var_1 = max(_wgslsmith_mod_u32(func_7(Struct_1(~11072u, u_input.a), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 11556u, u_input.e.x, u_input.c.x), vec4<u32>(4294967295u, u_input.e.x, u_input.c.x, u_input.c.x)), 43396u, _wgslsmith_add_u32(19639u, 17441u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), u_input.c.zxx)), vec4<bool>(true, true, true, true), func_6(Struct_1(0u, 0i), ~u_input.e.x, func_1(vec3<i32>(u_input.a, 480i, 32211i), -1030f, -1i), Struct_3(vec3<i32>(2147483647i, 2147483647i, -1i), u_input.a))), u_input.c.x), 16211u);
    let var_2 = true;
    let var_3 = Struct_1(u_input.b, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-909f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1781f, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -343f) * _wgslsmith_f_op_f32(-674f + -750f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(step(-868f, _wgslsmith_f_op_f32(f32(-1f) * -1558f)))))), -select(-vec4<i32>(u_input.d, -2147483647i, u_input.a, 1i), -_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -1i, u_input.a), vec4<i32>(u_input.d, -14436i, u_input.a, -10183i)), true));
}

