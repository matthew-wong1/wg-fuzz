struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_3(~vec2<u32>(countOneBits(u_input.a.x), u_input.a.x), vec4<i32>(u_input.d | reverseBits(i32(-1i) * -1i), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 0i, u_input.c) & vec3<i32>(-22423i, -15619i, u_input.d), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -2147483647i, 1i), vec3<i32>(u_input.c, -1i, u_input.c))), -1i, 1i), !(abs(u_input.b.x) == 0u), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -997f) - -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-912f, -649f))))));
    var var_1 = abs(u_input.e);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(round(var_0.d.a)), _wgslsmith_div_f32(var_0.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-980f, 350f)))));
    var_2 = Struct_2(192f, _wgslsmith_f_op_f32(var_2.b * 545f));
    var var_3 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-511f, var_0.d.b)) * _wgslsmith_f_op_f32(f32(-1f) * -459f))));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(trunc(1f))))));
    let var_1 = firstTrailingBit(vec3<u32>(_wgslsmith_sub_u32(arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), ~vec2<u32>(1u, 27790u))), select(abs(max(arg_1, 7590u)), _wgslsmith_sub_u32(countOneBits(u_input.e), u_input.a.x), true), u_input.e));
    let var_2 = Struct_1(vec2<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true)), true), ~_wgslsmith_add_vec3_u32(~select(vec3<u32>(arg_1, 4294967295u, arg_0.x), var_1, true), _wgslsmith_sub_vec3_u32(~var_1, abs(var_1))), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.b, ~(~vec2<u32>(arg_0.x, arg_1))), abs(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(27540u, arg_1), arg_0)))));
    let var_3 = !(!vec4<bool>(all(select(vec2<bool>(false, var_2.a.x), vec2<bool>(true, var_2.a.x), var_2.a)), !var_2.a.x, !(false && var_2.a.x), true));
    var var_4 = Struct_4(Struct_3(abs(_wgslsmith_mult_vec2_u32(u_input.b, var_1.yy)) >> (u_input.b % vec2<u32>(32u)), ~vec4<i32>(2147483647i, u_input.c, 20517i, -2147483647i) | -countOneBits(vec4<i32>(u_input.c, -1i, -42334i, -2147483647i)), any(var_3.yy), Struct_2(-188f, -616f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))), Struct_2(var_0, _wgslsmith_div_f32(486f, 1388f)));
    return var_2;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_4 {
    let var_0 = func_2(countOneBits(firstLeadingBit(vec2<u32>(u_input.a.x, u_input.b.x))), 24417u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1670f - -2322f), -393f)));
    let var_2 = u_input.b.x << (~(~(~4294967295u)) % 32u);
    return Struct_4(Struct_3(vec2<u32>(var_2, var_0.c.x), vec4<i32>(u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, 1i), vec3<i32>(u_input.c, 2147483647i, u_input.c) & vec3<i32>(-12847i, u_input.c, u_input.d)), firstTrailingBit(-u_input.c), 1i), all(!(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false))), Struct_2(arg_1.b, _wgslsmith_f_op_f32(-1254f * arg_0.x))), 991f, arg_2);
}

fn func_4(arg_0: Struct_4) -> bool {
    var var_0 = false;
    var_0 = !(_wgslsmith_add_i32(~_wgslsmith_div_i32(-2147483647i, arg_0.a.b.x), ~arg_0.a.b.x) >= -select(-2147483647i, -13503i, func_2(vec2<u32>(1u, u_input.e), u_input.b.x).a.x));
    var var_1 = _wgslsmith_sub_u32(u_input.e, 20107u ^ ~func_2(_wgslsmith_mod_vec2_u32(arg_0.a.a, arg_0.a.a), 4294967295u).c.x);
    var var_2 = _wgslsmith_sub_vec3_u32(~(select(~vec3<u32>(u_input.e, arg_0.a.a.x, 37764u), ~vec3<u32>(u_input.b.x, u_input.b.x, 1u), !vec3<bool>(arg_0.a.c, arg_0.a.c, arg_0.a.c)) << (~vec3<u32>(arg_0.a.a.x, 20798u, 0u) % vec3<u32>(32u))), select(vec3<u32>(0u, ~firstLeadingBit(53676u), ~0u), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(66646u, u_input.e, 1u), vec3<u32>(4294967295u, 34417u, 4294967295u))), any(!select(vec3<bool>(arg_0.a.c, true, false), vec3<bool>(true, true, true), arg_0.a.c))));
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, ~_wgslsmith_mod_u32(~39198u, ~u_input.a.x)), 20887u, var_2.x);
    return !(arg_0.a.c || (1644i == arg_0.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    let var_1 = select(vec2<bool>(false, true), vec2<bool>(true, true & func_4(func_1(vec4<f32>(-639f, -1577f, 1011f, -2140f), Struct_2(649f, -579f), Struct_2(1000f, 489f)))), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, true, true, true)), all(vec4<bool>(false, true, false, true)))), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), all(vec4<bool>(true, true, false, true))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * 879f);
    var var_3 = -(~(~u_input.c));
    var_0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(-var_2))))), (vec3<u32>(firstLeadingBit(u_input.e), ~u_input.b.x, u_input.b.x) << (abs(vec3<u32>(1u, 80271u, u_input.b.x)) % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.b.x, _wgslsmith_clamp_u32(44509u, 1658u, 39304u), u_input.e << (u_input.a.x % 32u)), vec3<u32>(abs(u_input.b.x), ~9457u, 61592u & u_input.e)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, _wgslsmith_f_op_f32(var_2 - 1614f), _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(var_2 * var_2)), -614f) - vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2, var_2))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(776f)), var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(640f + -479f)), -1027f)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(19190u, _wgslsmith_div_u32(0u, u_input.b.x), u_input.b.x, u_input.e ^ u_input.b.x), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a.x, 1u), vec4<u32>(u_input.e, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(10427u, u_input.b.x, u_input.e, 42028u)), countOneBits(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 49318u)))), u_input.e | _wgslsmith_div_u32(55563u, u_input.e), ~_wgslsmith_sub_u32(0u, 4294967295u | u_input.b.x), ~u_input.b.x));
}

