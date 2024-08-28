struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: Struct_3;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global1 = Struct_3(_wgslsmith_sub_u32(global1.c, ~countOneBits(~2790u)), (i32(-1i) * -(global1.b ^ u_input.a)) | 1i, global1.a);
    var var_0 = select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(_wgslsmith_f_op_f32(169f + 772f) != _wgslsmith_f_op_f32(sign(1580f)), true, true, !any(vec3<bool>(false, true, true))), true), any(vec4<bool>(true, true, true, true)));
    var var_1 = Struct_4(Struct_3(_wgslsmith_mod_u32(~(~4294967295u), abs(global1.c)), u_input.a, global1.c));
    let var_2 = 0u;
    let var_3 = any(!(!select(select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_0.x, false, false, var_0.x), var_0.x), vec4<bool>(var_0.x, false, true, false), true)));
    return var_2;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: bool, arg_3: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -407f)), 1f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-292f, -1062f)) + _wgslsmith_f_op_f32(-2094f - -756f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-504f, 2307f)))))));
    global0 = arg_1.x;
    var var_1 = select(1i, -u_input.a, true);
    var var_2 = ~(~arg_1);
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(var_0 * 1030f)), var_0)), _wgslsmith_f_op_f32(min(var_0, var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(1669f * var_0))));
    return !vec2<bool>(arg_2, arg_0 && !any(vec2<bool>(true, arg_0)));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = -_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(arg_0.b, u_input.a, 13210i), vec3<i32>(u_input.a, -43680i, arg_0.b) >> (vec3<u32>(6013u, 4294967295u, arg_0.c) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_div_i32(global1.b, u_input.a), -2147483647i, u_input.a)), ~(-vec3<i32>(global1.b, -1i, global1.b)) >> (select(~vec3<u32>(4294967295u, 70320u, global1.a), vec3<u32>(0u, global1.c, 1u), true) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-569f, 154f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(509f, 1000f)), _wgslsmith_f_op_f32(-1473f * 1348f))));
    var var_2 = Struct_1(global1.b, 55193u, any(vec4<bool>(true, arg_1.x, false, false)) || false, vec2<u32>(~arg_0.c, arg_0.c), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) - -980f))), var_1.x));
    let var_3 = arg_0;
    let var_4 = func_4(false, vec3<u32>(func_3(), var_2.d.x, var_2.b), _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(2147483647i, var_2.a, 22435i), 0i) < (1i >> (arg_0.c % 32u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, arg_0.c), var_2.d));
    return Struct_3(9355u, var_2.a, ~arg_0.a);
}

fn func_5(arg_0: Struct_3) -> f32 {
    return 1226f;
}

fn func_6(arg_0: f32) -> Struct_3 {
    let var_0 = func_2(Struct_3(_wgslsmith_add_u32(countOneBits(global1.a) >> (1u % 32u), global1.a), _wgslsmith_sub_i32(u_input.a >> ((15878u & global1.a) % 32u), 1i), 9175u), vec2<bool>(true, !(!func_4(true, vec3<u32>(1u, global1.c, global1.a), false, 16580u).x)));
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(~var_0.a, 0u), ~var_0.a) & ~(vec3<u32>(1u, var_0.a, 40971u) & (vec3<u32>(133544u, global1.a, 4294967295u) ^ vec3<u32>(16057u, 0u, var_0.a))), ~vec3<u32>(var_0.a, 2739u, 19839u) & _wgslsmith_add_vec3_u32(abs(vec3<u32>(var_0.c, 47294u, 4587u)), min(countOneBits(vec3<u32>(1u, 0u, 35373u)), _wgslsmith_add_vec3_u32(vec3<u32>(global1.a, var_0.c, 5780u), vec3<u32>(global1.a, global1.c, 76944u)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -3583f, arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 524f, arg_0) * vec3<f32>(465f, arg_0, arg_0))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1316f, -229f, arg_0) * vec3<f32>(383f, -816f, arg_0)))))))));
    let var_3 = 456f;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_3, _wgslsmith_f_op_f32(var_2.x + var_3), true))))), -1000f);
    return func_2(func_2(func_2(func_2(func_2(Struct_3(4294967295u, u_input.a, global1.c), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), vec2<bool>(true, 25360u >= global1.c)), vec2<bool>(false, true)), vec2<bool>(func_4(all(vec3<bool>(false, true, true)), vec3<u32>(_wgslsmith_mod_u32(var_1.x, 1u), global1.a, ~var_1.x), true, ~(~global1.a)).x, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))))));
}

fn func_7(arg_0: vec2<u32>, arg_1: Struct_4) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = -5094i;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-931f))), 766f, 295f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(657f - 1116f) - -490f)))));
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(0i, _wgslsmith_sub_i32(-57037i, arg_1.a.b) ^ var_0.a.b, -2147483647i), u_input.a), vec2<i32>(-countOneBits(global1.b), _wgslsmith_sub_i32(i32(-1i) * -1i, firstLeadingBit(-8946i))));
    global1 = func_2(arg_1.a, vec2<bool>(true, any(vec2<bool>(true, true)) && true));
    return Struct_1(var_3, var_0.a.a | 98567u, (select(true, true, any(vec2<bool>(false, true))) || any(vec3<bool>(true, false, true))) || !(true || any(vec2<bool>(false, false))), firstLeadingBit(vec2<u32>(_wgslsmith_mult_u32(global1.c, 40709u | arg_0.x), _wgslsmith_mult_u32(reverseBits(4294967295u), var_0.a.a))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))))), var_2.x));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: i32) -> bool {
    let var_0 = ~(-arg_0.a.a);
    var var_1 = Struct_3(global1.c, -54699i, global1.a);
    let var_2 = 1u;
    var var_3 = select(vec2<bool>(true, abs(~u_input.a) > (_wgslsmith_clamp_i32(var_0, var_0, var_0) << (12616u % 32u))), vec2<bool>(arg_0.a.e.x >= arg_0.a.e.x, arg_0.a.c), arg_0.a.c);
    var var_4 = func_7(_wgslsmith_div_vec2_u32(vec2<u32>(global1.c ^ 0u, 1u), vec2<u32>(var_1.c, abs(37862u)) >> (vec2<u32>(35890u >> (var_2 % 32u), ~var_2) % vec2<u32>(32u))), Struct_4(func_6(_wgslsmith_f_op_f32(func_5(func_2(Struct_3(var_1.c, 2147483647i, arg_0.a.b), vec2<bool>(arg_0.a.c, false)))))));
    return arg_0.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(Struct_1(global1.b, 6490u, true, vec2<u32>(~global1.c, global1.c), vec2<f32>(-246f, _wgslsmith_f_op_f32(f32(-1f) * -381f)))), ~abs(vec4<u32>(global1.c, global1.c, _wgslsmith_div_u32(global1.a, global1.a), 4294967295u)), _wgslsmith_mult_i32(global1.b, min(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, 1i), vec4<i32>(global1.b, u_input.a, -1i, 1i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -37817i), ~vec2<i32>(-30735i, -2147483647i)))));
    var var_1 = firstLeadingBit(firstLeadingBit(select(vec3<i32>(~u_input.a, -37215i, -8809i), firstLeadingBit(vec3<i32>(-32006i, global1.b, -5682i)) & countOneBits(vec3<i32>(u_input.a, u_input.a, global1.b)), func_7(~vec2<u32>(4294967295u, 0u), Struct_4(Struct_3(55398u, -18741i, global1.c))).c)));
    global0 = abs(~118894u);
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(613f, -727f))), vec2<f32>(-1000f, -580f))))));
    global0 = 0u;
    var var_3 = vec3<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 1i, global1.b, u_input.a) & -vec4<i32>(1i, global1.b, var_1.x, u_input.a), abs(-vec4<i32>(global1.b, 38028i, -2147483647i, var_1.x)))), -2147483647i, global1.b ^ -1i);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<i32>(func_6(var_2.x).b, var_1.x, countOneBits(global1.b), -2147483647i << (0u % 32u)) << (vec4<u32>(func_6(1940f).a, global1.c, _wgslsmith_mod_u32(1u, 50697u), 109083u) % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_2.x)), 1441f))), var_2.x, 1000f), vec3<f32>(_wgslsmith_f_op_f32(749f + var_2.x), _wgslsmith_f_op_f32(370f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(-var_2.x), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - -349f)), -func_2(Struct_3(74178u, var_3.x >> (4533u % 32u), global1.c & 0u), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true))).b);
}

