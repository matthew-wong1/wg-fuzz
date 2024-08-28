struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(0u, vec4<i32>(2147483647i, 0i, 2147483647i, 28764i), -8182i), 43379u, 2147483647i, Struct_1(1u, vec4<i32>(25067i, 19793i, 2875i, 8629i), i32(-2147483648)), Struct_1(4294967295u, vec4<i32>(-87193i, -18465i, 1i, i32(-2147483648)), -9829i)), Struct_2(Struct_1(4294967295u, vec4<i32>(i32(-2147483648), 19067i, -25587i, -23288i), -12408i), 9479u, 0i, Struct_1(1u, vec4<i32>(0i, -51634i, 1i, 70658i), 0i), Struct_1(0u, vec4<i32>(1i, -45475i, -8034i, -9797i), -8262i)), Struct_2(Struct_1(17899u, vec4<i32>(0i, i32(-2147483648), 18928i, 0i), -26087i), 1u, 0i, Struct_1(4294967295u, vec4<i32>(23258i, -40685i, 1i, 58563i), i32(-2147483648)), Struct_1(1u, vec4<i32>(-23228i, -15430i, 10657i, i32(-2147483648)), -38196i)), Struct_2(Struct_1(1u, vec4<i32>(17339i, -13106i, 0i, 19722i), 0i), 1u, 0i, Struct_1(41883u, vec4<i32>(i32(-2147483648), -5532i, 14995i, i32(-2147483648)), i32(-2147483648)), Struct_1(46202u, vec4<i32>(1i, i32(-2147483648), -1i, 2147483647i), 2147483647i)), Struct_2(Struct_1(1u, vec4<i32>(2147483647i, 27935i, -11129i, 0i), 0i), 0u, -1i, Struct_1(1u, vec4<i32>(2147483647i, i32(-2147483648), 1i, -1i), 56708i), Struct_1(4294967295u, vec4<i32>(-13817i, 0i, -1i, 5498i), 2147483647i)), Struct_2(Struct_1(4294967295u, vec4<i32>(-7785i, -21718i, -1i, 0i), 3753i), 0u, 21541i, Struct_1(0u, vec4<i32>(1i, i32(-2147483648), -4957i, i32(-2147483648)), 7060i), Struct_1(1u, vec4<i32>(-1508i, 0i, 1i, i32(-2147483648)), -47646i)), Struct_2(Struct_1(4294967295u, vec4<i32>(-34185i, -11185i, i32(-2147483648), -31481i), -1i), 1u, 1i, Struct_1(8121u, vec4<i32>(8301i, 16184i, 35607i, -48983i), i32(-2147483648)), Struct_1(92960u, vec4<i32>(-1i, i32(-2147483648), 1i, 8776i), -33114i)), Struct_2(Struct_1(61616u, vec4<i32>(0i, -1i, -38133i, 6377i), i32(-2147483648)), 59298u, 35184i, Struct_1(13573u, vec4<i32>(-1i, 14445i, -6848i, -23858i), 0i), Struct_1(4294967295u, vec4<i32>(-1i, i32(-2147483648), -47809i, -16671i), -98272i)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-946f))), _wgslsmith_div_f32(1944f, 1063f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(-3442f, 1000f, true)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(955f, 1492f))) * -1000f)));
    global0 = array<Struct_2, 8>();
    var var_1 = ~(~vec4<u32>(~_wgslsmith_mod_u32(u_input.b, 4294967295u), countOneBits(30344u), 52813u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 37306u), abs(vec3<u32>(32188u, u_input.b, 1u)))));
    global0 = array<Struct_2, 8>();
    var_1 = vec4<u32>(u_input.b, 17062u, firstLeadingBit(20999u), var_1.x);
    return all(select(select(vec3<bool>(any(vec2<bool>(false, false)), true, true), vec3<bool>(true, true, true), ~var_1.x >= ~var_1.x), vec3<bool>(true, true, false), vec3<bool>(~var_1.x <= (u_input.b << (20244u % 32u)), false, !any(vec2<bool>(false, true)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4) -> f32 {
    let var_0 = 1321f;
    global0 = array<Struct_2, 8>();
    global0 = array<Struct_2, 8>();
    var var_1 = select(vec4<bool>(all(select(vec2<bool>(arg_2.e.a, arg_2.e.a), vec2<bool>(false, false), arg_2.a)), !arg_2.e.a, true, select(false, true, arg_2.e.a) || !(arg_2.e.a != false)), vec4<bool>(true, arg_2.e.a, true, select(any(vec3<bool>(false, true, arg_2.e.a)), (false & arg_2.e.a) | (arg_2.e.c < u_input.a.x), select(var_0 <= arg_2.d, true, false))), !vec4<bool>(true, func_3(vec2<i32>(arg_2.b.d.c, u_input.a.x) ^ u_input.a.yy), any(vec2<bool>(arg_2.e.a, false)), true));
    let var_2 = vec2<u32>(arg_0.a, _wgslsmith_add_u32(u_input.b >> ((1u | ~arg_2.c.a) % 32u), select(~(~37144u), ~arg_2.c.a, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.d)), var_0)));
}

fn func_1(arg_0: u32) -> f32 {
    global0 = array<Struct_2, 8>();
    let var_0 = 46452i;
    global0 = array<Struct_2, 8>();
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-279f, _wgslsmith_f_op_f32(f32(-1f) * -1908f), _wgslsmith_f_op_f32(1798f + 366f), -278f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1235f, -814f, 567f, 1183f)), vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(1u, u_input.a, var_0), global0[_wgslsmith_index_u32(arg_0, 8u)], Struct_4(true, global0[_wgslsmith_index_u32(u_input.b, 8u)], Struct_1(arg_0, vec4<i32>(23003i, 34245i, 7078i, 15992i), var_0), 1359f, Struct_3(true, -866f, u_input.a.x)))), 1383f, _wgslsmith_f_op_f32(abs(-361f)), 151f))))));
    global0 = array<Struct_2, 8>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_1(arg_0, u_input.a, 31596i ^ max(-4123i, var_0)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 89144u)), ~113559u, ~arg_0), ~vec3<u32>(arg_0, 4294967295u, 1u) | reverseBits(vec3<u32>(u_input.b, 19751u, 1u))), 8u)], Struct_4(true, global0[_wgslsmith_index_u32(u_input.b, 8u)], Struct_1(_wgslsmith_clamp_u32(u_input.b, 0u, u_input.b), vec4<i32>(u_input.a.x, u_input.a.x, 1i, var_0), _wgslsmith_mult_i32(var_0, var_0)), var_1.x, Struct_3(true, _wgslsmith_f_op_f32(trunc(607f)), u_input.a.x))))));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_3, arg_3: u32) -> f32 {
    global0 = array<Struct_2, 8>();
    let var_0 = Struct_1(~arg_0, u_input.a, 1i & _wgslsmith_mod_i32(abs(u_input.a.x), reverseBits(_wgslsmith_div_i32(arg_2.c, -1i))));
    global0 = array<Struct_2, 8>();
    var var_1 = var_0;
    var var_2 = (arg_2.a & true) || arg_2.a;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(~firstTrailingBit(1u))))), _wgslsmith_f_op_f32(arg_2.b * arg_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(~(~u_input.b)), ~select(vec4<i32>(1i, u_input.a.x, 0i, u_input.a.x) >> (reverseBits(vec4<u32>(u_input.b, u_input.b, 79694u, 32024u)) % vec4<u32>(32u)), u_input.a, false), u_input.a.x);
    let var_1 = _wgslsmith_dot_vec2_i32(u_input.a.zw, var_0.b.wx >> (vec2<u32>(var_0.a, ~_wgslsmith_mult_u32(4294967295u, 1u)) % vec2<u32>(32u)));
    var var_2 = vec2<i32>(var_0.c, -6467i) << (countOneBits(~(~(~vec2<u32>(var_0.a, u_input.b)))) % vec2<u32>(32u));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(57399u, _wgslsmith_dot_vec2_u32(max(~vec2<u32>(var_0.a, 37832u), countOneBits(vec2<u32>(u_input.b, u_input.b))), ~_wgslsmith_add_vec2_u32(vec2<u32>(15954u, u_input.b), vec2<u32>(u_input.b, 330u))), Struct_3(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-897f * _wgslsmith_f_op_f32(func_1(4294967295u))), -63468i | _wgslsmith_clamp_i32(4618i, 2147483647i, var_2.x)), 4294967295u)), _wgslsmith_f_op_f32(-2052f + _wgslsmith_f_op_f32(round(1f))));
    global0 = array<Struct_2, 8>();
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(105f, 583f, -1384f, -904f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(833f, -610f, 1437f, -714f), vec4<f32>(-1087f, 1568f, 328f, 645f), vec4<bool>(false, true, true, true))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-570f, 658f, -1323f, 1000f), vec4<f32>(1000f, 749f, 1084f, -371f)))), vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1061f) * 881f), 1321f, _wgslsmith_f_op_f32(103f * _wgslsmith_f_op_f32(step(157f, 1656f))), _wgslsmith_f_op_f32(f32(-1f) * -1005f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, -1254f, _wgslsmith_add_i32(var_1, _wgslsmith_add_i32(var_0.b.x, firstLeadingBit(var_2.x & 0i))));
}

