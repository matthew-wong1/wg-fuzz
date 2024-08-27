struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: f32 = -194f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(false);
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -942f);
    return _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, countOneBits(u_input.a)), _wgslsmith_div_u32(38402u, _wgslsmith_add_u32(u_input.a, 0u)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1001f, -1144f, 1148f)), vec3<f32>(-1129f, -316f, -1318f)), vec3<f32>(_wgslsmith_f_op_f32(ceil(919f)), 477f, _wgslsmith_f_op_f32(sign(783f))))))));
    global0 = !arg_0;
    global0 = true;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -936f))) + _wgslsmith_f_op_f32(var_0.x + -251f)));
    let var_1 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), var_0.x)) - -1000f)) > _wgslsmith_f_op_f32(round(-348f));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> bool {
    let var_0 = arg_1;
    return arg_3;
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = Struct_1(func_4(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), Struct_1(false), firstLeadingBit(max(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 23849u)), vec2<u32>(u_input.a, u_input.a))), func_3(true, firstTrailingBit(_wgslsmith_mod_u32(4294967295u, u_input.a)), Struct_1(true))));
    return u_input.a;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: u32, arg_3: vec3<bool>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) - -643f)));
    global1 = -212f;
    let var_0 = Struct_1(arg_0.x);
    global0 = arg_3.x;
    var var_1 = 36614u;
    return Struct_1(arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec2<bool>(_wgslsmith_sub_u32(4294967295u, 33684u) == func_1(), true));
    let var_1 = func_5(!var_0, -(~vec4<i32>(-66656i, 2147483647i, firstTrailingBit(1i), ~3986i)), ~(~_wgslsmith_clamp_u32(u_input.a, max(4294967295u, u_input.a), func_2(-2147483647i))), vec3<bool>(!(var_0.x & var_0.x), var_0.x & true, var_0.x));
    global0 = func_4(select(vec3<bool>(var_1.a, var_0.x, true), select(!(!vec3<bool>(false, false, var_0.x)), !select(vec3<bool>(true, false, true), vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, false, true)), true), select(vec3<bool>(select(true, true, true), var_1.a, true), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(var_0.x, var_1.a, var_0.x), vec3<bool>(false, var_0.x, var_0.x)), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, var_0.x, false), true)), true)), Struct_1(u_input.a < ((u_input.a >> (u_input.a % 32u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(26431u, u_input.a, u_input.a), vec3<u32>(7240u, 1u, 1u)))), vec2<u32>(reverseBits(~u_input.a), ~(u_input.a ^ u_input.a)) & vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(4294967295u, u_input.a, 4294967295u))), var_1.a);
    var var_2 = select(vec3<u32>(_wgslsmith_add_u32(0u, 69067u), 15997u, 1u) ^ vec3<u32>(~(4294967295u >> (u_input.a % 32u)), ~_wgslsmith_mult_u32(u_input.a, u_input.a), ~u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a | u_input.a, 71779u, u_input.a) ^ (~vec3<u32>(66631u, 1u, u_input.a) << (select(vec3<u32>(u_input.a, 73513u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a), false) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.a, 49970u, 23545u)), ~vec3<u32>(4294967295u, 34601u, 11185u)) << (max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u)), ~vec3<u32>(9614u, u_input.a, u_input.a)) % vec3<u32>(32u))), any(select(!select(var_0, var_0, false), vec2<bool>(var_1.a, var_0.x), !(!var_0))));
    var var_3 = func_5(var_0, _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, i32(-1i) * -2147483647i, ~1i, -80640i), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-27661i, 33402i, 77405i, 11976i), vec4<i32>(12648i, -2147483647i, 2147483647i, 14878i), vec4<i32>(-34145i, -8450i, -1i, 4462i))) ^ vec4<i32>(-403i, _wgslsmith_div_i32(3729i >> (var_2.x % 32u), 0i << (0u % 32u)), 1i, ~_wgslsmith_add_i32(-1i, -2147483647i)), ~_wgslsmith_clamp_u32(41359u | (u_input.a ^ 3436u), ~4294967295u, 4294967295u), vec3<bool>(!any(!vec4<bool>(var_1.a, var_0.x, var_1.a, var_0.x)), true, !(!(!var_1.a))));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f)))), _wgslsmith_f_op_f32(f32(-1f) * -921f));
    let var_5 = ~(-1630i) | _wgslsmith_mod_i32(0i, max(countOneBits(-33151i) >> (var_2.x % 32u), 1989i & _wgslsmith_dot_vec4_i32(vec4<i32>(-35976i, 1610i, -1i, -25230i), vec4<i32>(0i, 61474i, -47501i, -1i))));
    let var_6 = -393f;
    var var_7 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -14929i, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -810f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - _wgslsmith_f_op_f32(exp2(var_6))) - _wgslsmith_f_op_f32(-var_6))), -43651i, firstTrailingBit(_wgslsmith_clamp_u32(~u_input.a, var_2.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, 1u), ~0u))), select(-_wgslsmith_clamp_vec2_i32(vec2<i32>(7177i, 1i), -vec2<i32>(-37677i, 0i), vec2<i32>(var_5, var_5) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(var_5, 1i, var_5), var_5), vec2<i32>(abs(0i), min(var_5, var_5))), !(!var_7.a)));
}

