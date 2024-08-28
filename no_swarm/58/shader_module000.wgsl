struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec4<bool>, 7>;

var<private> global2: f32;

var<private> global3: array<bool, 2>;

var<private> global4: vec2<f32> = vec2<f32>(1080f, -493f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: bool) -> vec2<f32> {
    let var_0 = Struct_3(arg_0, Struct_1(_wgslsmith_f_op_f32(select(961f, global4.x, false)), true, 4294967295u, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global4.x)), _wgslsmith_f_op_f32(-global4.x)), _wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(step(1236f, global4.x))))), 72950i));
    let var_1 = all(!vec4<bool>(arg_2, false, any(select(vec2<bool>(global3[_wgslsmith_index_u32(arg_0, 2u)], true), vec2<bool>(arg_2, false), true)), any(select(global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(arg_0, 7u)], global1[_wgslsmith_index_u32(var_0.b.c, 7u)]))));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -942f), vec2<f32>(-1077f, global4.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b.a, global4.x))), vec2<bool>(true, true))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1191f), var_0.b.a)))));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(firstLeadingBit(firstLeadingBit(87846u)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.x * _wgslsmith_div_f32(global4.x, global4.x)), _wgslsmith_f_op_f32(-global4.x)), false, 0u, _wgslsmith_f_op_f32(global4.x - global4.x), firstTrailingBit(u_input.a)));
    var var_1 = Struct_3(_wgslsmith_add_u32(firstTrailingBit(103247u), 1u), Struct_1(_wgslsmith_f_op_f32(-709f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.d))), global3[_wgslsmith_index_u32(var_0.a, 2u)] || true, _wgslsmith_dot_vec3_u32(vec3<u32>(~42207u, ~var_0.b.c, 41021u), _wgslsmith_mod_vec3_u32(vec3<u32>(73224u, 36673u, var_0.b.c), _wgslsmith_sub_vec3_u32(vec3<u32>(46011u, 35820u, 4460u), vec3<u32>(var_0.a, var_0.a, 1u)))), _wgslsmith_f_op_vec2_f32(func_2(abs(27648u), vec2<i32>(u_input.a ^ -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.e, 11546i), vec2<i32>(-17970i, u_input.a))), !all(vec4<bool>(true, false, true, false)))).x, -_wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(-2147483647i, u_input.a))));
    var var_2 = -(~(vec3<i32>(~2147483647i, u_input.a, -1i) | _wgslsmith_div_vec3_i32(max(vec3<i32>(u_input.a, 0i, var_1.b.e), vec3<i32>(0i, 26401i, var_1.b.e)), ~vec3<i32>(0i, u_input.a, var_1.b.e))));
    var_2 = abs(vec3<i32>(~var_1.b.e, -76378i, ~(i32(-1i) * -21467i)) & vec3<i32>(var_1.b.e, 1i, 11471i));
    let var_3 = -492f;
    return var_2.x;
}

fn func_1() -> Struct_1 {
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(686f, 718f) * vec2<f32>(global4.x, 990f)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_2(13405u, vec2<i32>(1i, -7410i), true))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-481f, global4.x) * vec2<f32>(global4.x, -858f))))) - vec2<f32>(_wgslsmith_f_op_f32(exp2(global4.x)), global4.x));
    global0 = global3[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, 1u, 1u), vec3<u32>(_wgslsmith_sub_u32(68732u, 34814u), select(20898u, 0u, global3[_wgslsmith_index_u32(0u, 2u)]), 36451u)) >> (abs(~14335u | _wgslsmith_clamp_u32(46191u, 68014u, 4294967295u)) % 32u)), 2u)];
    var var_0 = Struct_3(33961u, Struct_1(global4.x, true, _wgslsmith_mod_u32(22497u, 37091u), -171f, ~(1i ^ u_input.a)));
    global3 = array<bool, 2>();
    global3 = array<bool, 2>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.x, var_0.b.d) - -128f) - var_0.b.a), !(!(-1455f <= var_0.b.a)) == true, ~var_0.b.c, _wgslsmith_f_op_vec2_f32(func_2(28239u, select(abs(vec2<i32>(var_0.b.e, -39493i)), vec2<i32>(2147483647i, -222i) | vec2<i32>(u_input.a, 30705i), true), true)).x, _wgslsmith_mult_i32(~(-3362i), abs(func_3())));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = true;
    let var_1 = func_1();
    global3 = array<bool, 2>();
    let var_2 = arg_3;
    var var_3 = min(_wgslsmith_mod_vec4_u32(vec4<u32>(2189u, firstLeadingBit(~arg_3.a.c), 25799u, ~var_2.c << (75630u % 32u)), ~countOneBits(~vec4<u32>(4294967295u, 60893u, arg_1.c, arg_3.a.c))), ~(~vec4<u32>(19225u, 15168u, ~0u, select(var_1.c, 22500u, true))));
    return _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.a * arg_3.a.a) - _wgslsmith_f_op_f32(ceil(-2620f))), _wgslsmith_f_op_f32(1905f * 1351f), 539f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1070f, var_2.b)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.d, var_1.a, var_1.d, -1102f))))), vec4<f32>(global4.x, var_2.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-149f))), 333f), global1[_wgslsmith_index_u32(~(~var_1.c), 7u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-304f)) + _wgslsmith_div_f32(-579f, 357f))))) * global4.x);
    global2 = 1082f;
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(all(!select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(25079u, 2u)], false), global3[_wgslsmith_index_u32(57927u, 2u)] || global3[_wgslsmith_index_u32(0u, 2u)])), func_1(), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 29627i, u_input.a), vec4<i32>(u_input.a, 2147483647i, 1i, u_input.a)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), ~vec4<i32>(0i, u_input.a, -1i, u_input.a) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 24427u, 45036u, 70171u), vec4<u32>(13410u, 72605u, 31015u, 0u)) % vec4<u32>(32u))) | (_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, 2147483647i) << (vec4<u32>(27425u, 76857u, 110767u, 0u) % vec4<u32>(32u)), ~vec4<i32>(24704i, 1i, u_input.a, -47833i)) >> (abs(select(vec4<u32>(1u, 1u, 23830u, 0u), vec4<u32>(6867u, 20831u, 4294967295u, 25681u), global1[_wgslsmith_index_u32(28756u, 7u)])) % vec4<u32>(32u))), Struct_2(func_1(), 917f, 4294967295u, func_1(), global3[_wgslsmith_index_u32(0u, 2u)])));
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_1.yz);
    let var_3 = global3[_wgslsmith_index_u32(~(~1u), 2u)];
    var var_4 = Struct_3(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, select(1u, 25095u, true), ~11096u), reverseBits(abs(vec3<u32>(0u, 1u, 17101u)))), 3789u), Struct_1(-312f, any(!vec2<bool>(global3[_wgslsmith_index_u32(0u, 2u)], false)), ~1u, 1201f, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a, -1i), i32(-1i) * -4116i), max(select(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, 0i), vec2<bool>(global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(14637u, 2u)])), firstLeadingBit(vec2<i32>(u_input.a, 42118i))))));
    var var_5 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_4.b.d + 976f)))), true, ~(~4024u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(var_2.x + 1207f))), ~var_4.b.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -866f)), var_4.b.c, var_4.b, (~var_4.b.e == min(u_input.a, ~u_input.a)) == any(select(vec3<bool>(true, false, false), select(vec3<bool>(var_4.b.b, var_4.b.b, var_4.b.b), vec3<bool>(true, false, false), vec3<bool>(true, var_4.b.b, var_4.b.b)), !global3[_wgslsmith_index_u32(var_4.a, 2u)])));
    var var_6 = min(var_4.b.c, min(52532u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_4.a, 0u, 4294967295u), vec4<u32>(0u, var_4.b.c, var_4.b.c, 4294967295u)))) << (var_4.b.c % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(-53015i), _wgslsmith_dot_vec4_i32(abs(min(vec4<i32>(3629i, var_5.d.e, 200i, var_4.b.e), vec4<i32>(u_input.a, -57961i, 2147483647i, 2147483647i))), countOneBits(vec4<i32>(u_input.a, u_input.a, var_5.d.e, 0i))), select(-1i, _wgslsmith_div_i32(u_input.a, var_4.b.e) >> (select(1u, 4294967295u, false) % 32u), var_4.b.b), abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_5.a.e, -2147483647i, u_input.a, -1i), vec4<i32>(-7493i, 0i, var_5.d.e, var_4.b.e)))), ~var_4.b.e ^ u_input.a, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.b.a, 544f)))), -50495i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), -275f, var_1.x, -585f)))));
}

