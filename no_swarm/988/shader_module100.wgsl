struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(534f, -844f, 656f, -551f, -189f, 328f, 365f, -1000f, 899f, 1652f, 419f);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: u32) -> vec2<u32> {
    let var_0 = firstLeadingBit(1u);
    global0 = array<f32, 11>();
    var var_1 = all(vec4<bool>(true || !all(vec3<bool>(true, true, false)), any(vec3<bool>(false, false, any(vec2<bool>(true, false)))), false, any(vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_mult_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(32929u, min(75492u, 86726u)), vec2<u32>(0u | arg_0, firstLeadingBit(4294967295u)))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0, 4294967295u) << (max(vec2<u32>(78038u, 0u), vec2<u32>(22072u, var_0)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(44943u, 0u), ~1u)));
    let var_3 = !(!(!(!(global0[_wgslsmith_index_u32(1u, 11u)] < -586f))));
    return vec2<u32>(~_wgslsmith_mod_u32(~var_0, 62646u), ~var_2.x);
}

fn func_2() -> Struct_1 {
    let var_0 = ~u_input.b;
    global0 = array<f32, 11>();
    let var_1 = Struct_1(~func_3(1u, _wgslsmith_add_vec3_i32(vec3<i32>(12593i, 228i, var_0), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.c.x), vec3<i32>(u_input.c.x, -1i, -13960i))), ~22089u), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 1u))), vec3<u32>(1u, 1u, 1u), -_wgslsmith_add_i32(u_input.a.x, firstLeadingBit(var_0)) >= _wgslsmith_div_i32(u_input.c.x, var_0), abs(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(26175u, 360u, 58201u), vec3<u32>(21819u, 6612u, 4294967295u)), 16558u), 1u, ~(~4294967295u))));
    global0 = array<f32, 11>();
    var var_2 = !(!vec2<bool>(all(vec3<bool>(var_1.d, false, var_1.d)), all(select(vec2<bool>(true, var_1.d), vec2<bool>(true, false), var_1.d))));
    return Struct_1(var_1.b, ~(~vec2<u32>(var_1.e, var_1.b.x)) << (~var_1.b % vec2<u32>(32u)), var_1.c, true, abs(56429u) << (~(~1u) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_add_vec4_i32(abs(u_input.c), max(u_input.c, vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b, u_input.c.x), u_input.a.x), -(~u_input.a.x), abs(_wgslsmith_mod_i32(-10480i, -2147483647i)), u_input.c.x)));
    var var_2 = arg_0.c;
    var var_3 = func_2();
    global0 = array<f32, 11>();
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    return arg_0;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = max(_wgslsmith_mod_vec4_i32(u_input.c, countOneBits(select(_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(1i, u_input.b, u_input.a.x, -21285i)), abs(u_input.c), u_input.c.x <= -2187i))), vec4<i32>(~(-2147483647i), i32(-1i) * -(u_input.b ^ -2147483647i), -19233i, -2147483647i));
    global0 = array<f32, 11>();
    return func_5(func_4(func_2(), !(!select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0))), ~24135u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1679f, 1000f, 380f, global0[_wgslsmith_index_u32(0u, 11u)]), vec4<f32>(global0[_wgslsmith_index_u32(0u, 11u)], -1000f, -1105f, global0[_wgslsmith_index_u32(15246u, 11u)]))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-822f, 1001f, -1000f, -1104f)))) + vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), global0[_wgslsmith_index_u32(func_3(_wgslsmith_mult_u32(1u, 0u), u_input.c.xzw & var_0.xxz, reverseBits(0u)).x, 11u)], -114f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(204f * -919f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(69535u, 11u)]))))));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<u32> {
    let var_0 = arg_1;
    let var_1 = ~arg_2.a;
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    return firstLeadingBit(_wgslsmith_div_vec2_u32(abs(firstTrailingBit(vec2<u32>(var_0.b.x, var_1.x))), ~abs(vec2<u32>(var_0.a.x, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~func_6(~0i, func_1(u_input.b == u_input.a.x), Struct_1(vec2<u32>(1u, 1u), vec2<u32>(9665u, 90492u), vec3<u32>(1u, 1u, 1u), all(vec3<bool>(true, false, false)), _wgslsmith_div_u32(0u, 1u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(469f, 403f, -800f)), vec3<f32>(152f, global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(10825u, 11u)]), func_2().d))), vec2<u32>(reverseBits(845u), ~func_6(u_input.a.x, Struct_1(vec2<u32>(2680u, 0u), vec2<u32>(1u, 101637u), vec3<u32>(7758u, 95546u, 4294967295u), false, 8050u), func_1(false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4025u, 11u)], global0[_wgslsmith_index_u32(73551u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)]))).x), ~countOneBits(vec3<u32>(1u, 1u, 1u)), !(!(!all(vec2<bool>(true, true)))), ~(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(86339u, 38798u, 54373u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u)), 32204u)));
    var var_1 = -573f;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1770f, global0[_wgslsmith_index_u32(var_0.c.x, 11u)], 469f, global0[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(var_0.e, 11u)], global0[_wgslsmith_index_u32(var_0.e, 11u)], global0[_wgslsmith_index_u32(var_0.b.x, 11u)], 1185f)))), vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 11u)]), global0[_wgslsmith_index_u32(var_0.e & var_0.c.x, 11u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(30063u, 11u)]), -577f)))));
    var var_3 = 3177u;
    let var_4 = true;
    let var_5 = vec3<u32>(abs(0u ^ var_0.c.x), func_2().e, func_4(func_5(Struct_1(var_0.c.xz, vec2<u32>(var_0.b.x, var_0.c.x), vec3<u32>(0u, var_0.e, var_0.e), true, 64900u), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(sign(var_2.x)), -1000f, 546f)), !(!vec3<bool>(true, var_0.d, var_0.d)), 8455u).a.x);
    var_0 = Struct_1(vec2<u32>(~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_5.x, 0u), vec3<u32>(var_0.c.x, var_0.c.x, 1u))), 13799u), vec2<u32>(1u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_5.x, 22058u, var_0.a.x) | vec3<u32>(7522u, var_0.c.x, 1u)), (vec3<u32>(56263u, 0u, 131824u) << (var_0.c % vec3<u32>(32u))) ^ countOneBits(var_5))), var_0.c, true, 36165u);
    global0 = array<f32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(ceil(720f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x))), global0[_wgslsmith_index_u32(var_5.x, 11u)]), vec4<u32>(~countOneBits(var_0.a.x >> (var_0.e % 32u)), _wgslsmith_add_u32(~25522u | func_3(var_0.e, u_input.c.xww, var_5.x).x, 4294967295u & var_0.b.x), var_5.x, 0u));
}

