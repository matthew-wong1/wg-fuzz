struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: u32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    global0 = Struct_4(global0.a);
    global0 = Struct_4(select(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(global0.a.x, -1i, 16452i, 6574i) & vec4<i32>(global0.a.x, u_input.b, -2147483647i, 0i)), u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(-arg_2.c.x, -2147483647i, i32(-1i) * -27324i, 1i), u_input.a), vec4<bool>(any(vec2<bool>(arg_1, arg_1)), arg_1, !(u_input.d.x > arg_2.d), any(select(vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(false, arg_1, false, true), vec4<bool>(arg_1, true, arg_1, arg_1))))));
    global0 = Struct_4(-firstTrailingBit(firstTrailingBit(~global0.a)));
    var var_0 = !(!vec2<bool>(true, arg_1));
    global0 = Struct_4(_wgslsmith_sub_vec4_i32(-vec4<i32>(-18542i, -2147483647i, _wgslsmith_mult_i32(12244i, arg_2.c.x), _wgslsmith_clamp_i32(arg_2.c.x, -11751i, -23672i)), global0.a));
    return arg_0.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: u32) -> f32 {
    global0 = Struct_4(~_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.a.x, global0.a.x, global0.a.x, 1487i), vec4<i32>(u_input.b, 15400i, global0.a.x, global0.a.x), global0.a.x == global0.a.x), vec4<i32>(firstLeadingBit(arg_0.x), _wgslsmith_clamp_i32(arg_0.x, -4700i, u_input.a.x), -27623i, global0.a.x)));
    global0 = Struct_4(u_input.a);
    global0 = Struct_4(_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, -14340i, arg_0.x, 35974i) << (vec4<u32>(1u, 76289u, u_input.c.x, 5964u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(global0.a, global0.a)) >> (~u_input.c % vec4<u32>(32u)));
    var var_0 = -global0.a.x;
    var var_1 = vec2<u32>(1u, u_input.c.x);
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1789f, _wgslsmith_f_op_f32(step(431f, arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-182f, arg_1) + _wgslsmith_f_op_f32(select(arg_1, arg_1, false))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1381f), _wgslsmith_f_op_f32(sign(arg_1))))) - arg_1)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_2 {
    global0 = Struct_4(global0.a);
    var var_0 = Struct_1(countOneBits(arg_1.x & arg_1.x), _wgslsmith_f_op_f32(func_4(-_wgslsmith_mult_vec4_i32(global0.a, u_input.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1403f), _wgslsmith_f_op_f32(floor(659f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -627f) * _wgslsmith_f_op_f32(func_3(vec2<f32>(919f, -1001f), true, Struct_1(0u, 513f, global0.a.yw, 4294967295u, 1096f)))))), u_input.c.x)), -u_input.a.zy, arg_1.x | _wgslsmith_dot_vec4_u32(select(max(u_input.c, vec4<u32>(1u, arg_2.x, 4294967295u, arg_2.x)), ~vec4<u32>(arg_1.x, 1u, arg_2.x, u_input.d.x), vec4<bool>(true, true, true, true)), vec4<u32>(u_input.c.x, 1u, ~u_input.c.x, 0u)), 916f);
    let var_1 = var_0.e;
    var var_2 = vec2<i32>(_wgslsmith_add_i32(-abs(0i), ~u_input.a.x), firstTrailingBit(u_input.b));
    var var_3 = !(!select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, false)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, false), all(vec3<bool>(false, false, false))), select(any(vec4<bool>(false, false, true, true)), all(vec2<bool>(false, false)), all(vec3<bool>(false, true, true)))));
    return Struct_2(~(-_wgslsmith_add_vec2_i32(~global0.a.wy, -var_0.c)), !(!vec2<bool>(var_3.x, false)), Struct_1(0u, _wgslsmith_div_f32(var_0.e, 1000f), _wgslsmith_add_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(u_input.a.yx, vec2<i32>(23903i, var_0.c.x))), -u_input.a.zw), 0u, -570f), false, Struct_1(0u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(vec2<f32>(-1334f, var_0.b), true, Struct_1(u_input.d.x, var_0.b, vec2<i32>(arg_0.x, 75183i), 71829u, var_0.b))))), 399f)), firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(var_2.x, 14436i), -20721i)), 39923u & ~_wgslsmith_clamp_u32(1u, 0u, 4294967295u), 258f));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = select(select(!(!select(arg_2.b, arg_2.b, true)), vec2<bool>(!arg_2.d, true), arg_2.b), vec2<bool>(!(!arg_2.d || arg_2.d), !(u_input.d.x != arg_2.e.d) || arg_2.b.x), vec2<bool>(arg_2.d, all(!vec4<bool>(true, false, arg_2.d, arg_2.d)) | arg_2.d));
    let var_1 = func_2(-firstTrailingBit(~arg_2.e.c), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.d, 73345u, u_input.d.x, u_input.d.x) ^ u_input.c, _wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(arg_1.d, 41957u, 1u, 47895u))) & vec4<u32>(arg_1.a ^ _wgslsmith_add_u32(arg_2.c.a, 0u), _wgslsmith_div_u32(~63613u, ~54965u), _wgslsmith_dot_vec2_u32(max(vec2<u32>(0u, u_input.c.x), vec2<u32>(4294967295u, 3782u)), vec2<u32>(34915u, 1u)), min(~35047u, arg_1.a)), u_input.c);
    let var_2 = arg_0;
    global0 = Struct_4(u_input.a);
    let var_3 = -30205i | (var_1.a.x & (_wgslsmith_dot_vec4_i32(-vec4<i32>(41339i, -1i, global0.a.x, 15324i), -var_2.a) ^ -6424i));
    return Struct_2(firstTrailingBit(_wgslsmith_sub_vec2_i32(var_2.a.zy, global0.a.xy & vec2<i32>(var_3, var_1.e.c.x)) & (_wgslsmith_clamp_vec2_i32(u_input.a.zz, arg_2.e.c, u_input.a.zw) & ~arg_0.a.zy)), func_2(vec2<i32>(var_3, ~(-var_2.a.x)), ~(~(~u_input.c)), vec4<u32>(4356u, arg_1.d >> ((u_input.d.x & arg_1.d) % 32u), 57819u, max(u_input.c.x, var_1.c.d))).b, var_1.e, !select(true, !any(vec3<bool>(false, arg_2.d, arg_2.b.x)), true), Struct_1(_wgslsmith_dot_vec2_u32(~abs(u_input.c.wy), abs(u_input.c.yz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(708f + arg_2.c.e) + _wgslsmith_f_op_f32(-var_1.c.e)) * -756f), min(~vec2<i32>(9105i, arg_1.c.x), u_input.a.xz), max(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, var_1.e.a, 8275u), arg_1.d), ~(arg_2.c.d << (arg_1.a % 32u))), -900f));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1482f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(arg_0.c.b, arg_0.e.b), arg_0.b.x, Struct_1(arg_0.e.d, arg_1.c.e, vec2<i32>(0i, global0.a.x), 1u, arg_1.e.b))))))));
    let var_1 = Struct_4(vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 14029i), arg_1.e.c), -7663i, global0.a.x, 1i));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.e.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.e + arg_0.e.e) - arg_0.e.e) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-943f))))), arg_0.c.b, 745f));
    global0 = Struct_4((reverseBits(-vec4<i32>(-10925i, -34847i, var_1.a.x, arg_1.c.c.x)) | vec4<i32>(_wgslsmith_mod_i32(14599i, var_1.a.x), firstLeadingBit(arg_0.e.c.x), _wgslsmith_mult_i32(arg_0.e.c.x, -3504i), var_1.a.x)) ^ _wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_1.e.c.x, 0i, u_input.a.x, 1i) << (~u_input.c % vec4<u32>(32u)), vec4<i32>(1i, var_1.a.x >> (44690u % 32u), func_1(Struct_4(vec4<i32>(var_1.a.x, arg_1.e.c.x, 2147483647i, global0.a.x)), Struct_1(u_input.c.x, arg_0.c.b, u_input.a.xw, arg_0.c.a, -507f), arg_1).c.c.x, _wgslsmith_add_i32(0i, global0.a.x)), var_1.a >> (min(u_input.c, vec4<u32>(0u, arg_0.e.a, 1u, 23325u)) % vec4<u32>(32u))));
    let var_3 = func_1(var_1, Struct_1(max(select(8277u ^ arg_1.c.d, 0u, arg_1.d), ~_wgslsmith_mod_u32(4294967295u, 1u)), _wgslsmith_f_op_f32(692f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1451f, var_0) * 1f)), ~(~(-var_1.a.wy)), u_input.c.x, -1000f), func_2(arg_0.e.c, max(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.e.d, arg_1.e.d, 13467u, 4294967295u), vec4<u32>(arg_0.c.d, u_input.d.x, arg_1.e.a, 0u)), vec4<u32>(firstLeadingBit(arg_0.c.d), arg_0.e.d, arg_1.e.d, arg_0.e.a)), u_input.c ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 22860u, 1u, 0u) << (vec4<u32>(31692u, u_input.c.x, 1u, 13907u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(u_input.d.x, u_input.d.x, 49318u, 4294967295u)))));
    return (reverseBits(i32(-1i) * -5256i) | _wgslsmith_dot_vec4_i32(reverseBits(u_input.a), abs(vec4<i32>(global0.a.x, arg_1.a.x, u_input.a.x, -24583i)) ^ vec4<i32>(1i, arg_1.a.x, global0.a.x, u_input.a.x))) ^ arg_0.e.c.x;
}

fn func_6(arg_0: u32, arg_1: i32) -> Struct_3 {
    global0 = Struct_4(vec4<i32>(reverseBits(~0i), arg_1, u_input.b, reverseBits(u_input.b >> (arg_0 % 32u))));
    var var_0 = arg_0 << (108543u % 32u);
    var_0 = 11279u;
    global0 = Struct_4(vec4<i32>(global0.a.x, _wgslsmith_dot_vec2_i32(reverseBits(global0.a.xy), abs(~global0.a.ww)), ~35929i, -global0.a.x));
    var var_1 = u_input.d.x;
    return Struct_3(Struct_2(vec2<i32>(func_2(min(global0.a.yz, global0.a.wx), ~vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 1u), u_input.c).e.c.x, arg_1), !select(func_1(Struct_4(vec4<i32>(57704i, u_input.a.x, 39615i, u_input.b)), Struct_1(8362u, -426f, global0.a.zw, 0u, -1062f), Struct_2(global0.a.zw, vec2<bool>(false, true), Struct_1(64727u, -592f, u_input.a.yz, 0u, 437f), true, Struct_1(34783u, 1107f, u_input.a.ww, arg_0, -1606f))).b, vec2<bool>(true, false), vec2<bool>(false, true)), func_2(_wgslsmith_div_vec2_i32(min(vec2<i32>(global0.a.x, u_input.a.x), vec2<i32>(global0.a.x, global0.a.x)), func_1(Struct_4(global0.a), Struct_1(74483u, -1000f, global0.a.ww, 41019u, -488f), Struct_2(vec2<i32>(u_input.b, arg_1), vec2<bool>(false, false), Struct_1(23992u, 311f, u_input.a.yx, 52610u, -1442f), false, Struct_1(54438u, 1154f, global0.a.yz, 6442u, -1686f))).e.c), firstTrailingBit(_wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, u_input.c)), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c.wzz, vec3<u32>(0u, arg_0, arg_0)), u_input.d.x, arg_0, 1u)).c, true, func_2(global0.a.zy, u_input.c, vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(arg_0, 67430u, 106658u)), arg_0, 23334u, 11803u)).c), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1358f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f), -2028f)), _wgslsmith_f_op_f32(210f * 349f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(420f * 1000f), _wgslsmith_f_op_f32(1212f + -162f)))), ~arg_0);
}

fn func_7(arg_0: u32, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_4 {
    let var_0 = Struct_4(vec4<i32>(((global0.a.x >> (arg_1.c % 32u)) | arg_1.a.e.c.x) | u_input.b, -31020i, ~global0.a.x, global0.a.x));
    global0 = Struct_4(_wgslsmith_mod_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 67072i, arg_1.a.a.x, 17504i), var_0.a) & -(~vec4<i32>(16220i, -2147483647i, global0.a.x, var_0.a.x)), vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, reverseBits(u_input.b)), 2530i, _wgslsmith_div_i32(8652i, ~52382i), i32(-1i) * -arg_1.a.e.c.x)));
    global0 = var_0;
    global0 = var_0;
    let var_1 = max(u_input.d.xz, u_input.c.zz) ^ vec2<u32>(func_1(var_0, arg_1.a.e, Struct_2(firstLeadingBit(vec2<i32>(-34614i, arg_1.a.e.c.x)), func_6(1u, 1i).a.b, func_1(Struct_4(vec4<i32>(var_0.a.x, arg_1.a.e.c.x, arg_1.a.e.c.x, u_input.b)), arg_1.a.c, Struct_2(arg_1.a.e.c, vec2<bool>(false, true), arg_1.a.c, false, Struct_1(u_input.d.x, 1000f, vec2<i32>(-2147483647i, global0.a.x), u_input.c.x, 1360f))).c, any(vec4<bool>(arg_1.a.d, arg_1.a.b.x, arg_1.a.d, false)), Struct_1(arg_1.a.e.a, 139f, vec2<i32>(-73657i, arg_1.a.e.c.x), 0u, -1314f))).c.d, arg_1.a.e.a);
    return Struct_4(vec4<i32>(u_input.a.x, select(min(~2147483647i, u_input.a.x), -_wgslsmith_sub_i32(var_0.a.x, 1i), false), var_0.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.a.e.c.x, arg_1.a.e.c.x, arg_1.a.a.x), vec3<i32>(-29233i, 45289i, -33300i) << (u_input.d % vec3<u32>(32u))), -(var_0.a.wxz & global0.a.yyy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(select(~0u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, u_input.d.x, u_input.d.x)), min(u_input.d, u_input.d)) & _wgslsmith_add_u32(~u_input.d.x, ~u_input.d.x), !any(vec3<bool>(true, true, true))), func_6(_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_add_u32(12896u, u_input.d.x) & ~u_input.d.x, u_input.c.x), abs(func_5(Struct_2(global0.a.yy, vec2<bool>(true, false), Struct_1(0u, -306f, global0.a.yz, 35720u, 181f), false, Struct_1(u_input.c.x, 372f, u_input.a.xx, 15750u, 617f)), func_1(Struct_4(vec4<i32>(u_input.b, 1i, 0i, u_input.b)), Struct_1(u_input.d.x, 2008f, global0.a.zw, 46382u, 1401f), Struct_2(vec2<i32>(-35895i, -1i), vec2<bool>(true, false), Struct_1(u_input.c.x, -205f, global0.a.xy, u_input.d.x, 732f), false, Struct_1(0u, -1614f, global0.a.xz, u_input.c.x, 658f)))))), !func_2(func_2(vec2<i32>(global0.a.x, global0.a.x), ~u_input.c, u_input.c).c.c, _wgslsmith_add_vec4_u32(~u_input.c, u_input.c), ~u_input.c).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -258f) - _wgslsmith_f_op_f32(step(-1015f, _wgslsmith_f_op_f32(abs(438f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-147f - -375f) + -1494f), 480f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1907f + 1700f) * 960f))), var_0.a.xy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -558f, -692f, 301f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(377f, 1000f, 543f, 1000f) * vec4<f32>(397f, 822f, -707f, 1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-956f, 1000f, 342f, -1000f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(350f, 1541f, -179f, -1122f) - vec4<f32>(-1162f, 275f, 336f, -2317f)))))));
}

