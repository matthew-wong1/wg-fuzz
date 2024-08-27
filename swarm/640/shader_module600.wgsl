struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(-1403i, 2147483647i, 0i, -30618i, 30655i, -21548i, 28395i, 45507i, -1i, i32(-2147483648));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1110f, 716f, 482f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(445f * -1221f), _wgslsmith_f_op_f32(sign(-2225f)), _wgslsmith_div_f32(1582f, 781f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1297f, -258f, -1521f) * vec3<f32>(640f, -1418f, 1417f)))))), !vec3<bool>(true, arg_0.x, arg_0.x)));
    var var_1 = min(1u, abs(firstTrailingBit(2347u)));
    let var_2 = true;
    let var_3 = vec4<i32>(u_input.b.x, _wgslsmith_div_i32(_wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4682u, 10u)], -2147483647i, global0[_wgslsmith_index_u32(11531u, 10u)], u_input.a), vec4<i32>(-24504i, u_input.a, u_input.b.x, global0[_wgslsmith_index_u32(u_input.d.x, 10u)])), _wgslsmith_add_i32(abs(-8706i), global0[_wgslsmith_index_u32(31160u, 10u)])), 0i), -18564i, u_input.b.x);
    let var_4 = Struct_1(!(!vec3<bool>(u_input.d.x != arg_1.x, arg_1.x != u_input.d.x, false)), select(~(~vec2<u32>(4294967295u, arg_1.x)), vec2<u32>(_wgslsmith_mod_u32(u_input.c.x, ~u_input.d.x), u_input.c.x), true), var_0.x);
    return !vec3<bool>(any(select(select(vec4<bool>(false, false, arg_0.x, var_4.a.x), vec4<bool>(arg_0.x, var_2, arg_0.x, var_4.a.x), false), !vec4<bool>(var_2, true, true, var_2), vec4<bool>(true, true, var_2, true))), select(var_0.x == _wgslsmith_f_op_f32(178f + var_0.x), var_4.a.x, firstLeadingBit(u_input.c.x) < firstTrailingBit(u_input.c.x)), var_4.a.x);
}

fn func_2() -> Struct_1 {
    var var_0 = ~(~_wgslsmith_add_vec4_u32(vec4<u32>(select(0u, 0u, true), u_input.c.x, ~1u, abs(1u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.d.x, u_input.c.x, u_input.d.x, 4294967295u), ~u_input.c)));
    return Struct_1(select(select(vec3<bool>(true, all(vec3<bool>(false, false, false)), true), func_3(vec3<bool>(true, true, true), ~u_input.c.ww), true), func_3(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), vec3<bool>(false, true, false), true), var_0.yx), vec3<bool>(!all(vec3<bool>(true, false, true)), _wgslsmith_div_u32(u_input.d.x, 1u) != (4294967295u >> (0u % 32u)), true)), ~var_0.wz, -241f);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global0 = array<i32, 10>();
    var var_0 = vec3<bool>(u_input.a > global0[_wgslsmith_index_u32(countOneBits(max(arg_0.b.x, abs(1u))), 10u)], true, func_3(arg_3.a, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.wx, vec2<u32>(arg_3.b.x, arg_0.b.x)), ~u_input.c.wz)).x || !func_3(!arg_3.a, ~arg_3.b).x);
    var var_1 = Struct_1(!arg_3.a, u_input.c.yz, arg_3.c);
    var var_2 = Struct_2(15532i);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, 1637f, arg_0.c) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.c, -1474f, 1446f))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-134f, 1588f, 981f), vec3<f32>(791f, 227f, 454f))))));
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1475f)), func_2().c, any(vec3<bool>(select(arg_2.c != -375f, false, false), true, reverseBits(arg_3.b.x) < _wgslsmith_div_u32(arg_2.b.x, arg_2.b.x)))));
    let var_1 = arg_3.a.x;
    let var_2 = Struct_1(!(!arg_3.a), ~arg_2.b, var_0);
    return u_input.c;
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = func_5(func_4(func_2(), false, Struct_2(-8384i), func_2()), firstLeadingBit(func_4(func_2(), any(vec3<bool>(true, true, true)), func_4(Struct_1(vec3<bool>(true, false, false), vec2<u32>(1u, 73520u), arg_0), false, func_4(Struct_1(vec3<bool>(true, true, true), vec2<u32>(u_input.c.x, u_input.c.x), -1316f), true, Struct_2(global0[_wgslsmith_index_u32(u_input.d.x, 10u)]), Struct_1(vec3<bool>(false, false, true), u_input.d.xz, 2399f)), Struct_1(vec3<bool>(true, false, false), u_input.d.yx, arg_0)), Struct_1(vec3<bool>(true, true, true), vec2<u32>(83772u, 4294967295u), _wgslsmith_f_op_f32(989f + arg_0))).a), Struct_1(func_2().a, vec2<u32>(abs(0u), 48051u), _wgslsmith_div_f32(-319f, arg_0)), func_2());
    var var_1 = var_0.xyx;
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_div_f32(arg_0, arg_0)), arg_0), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), 373f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), vec2<f32>(472f, arg_0), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 915f), vec2<f32>(1152f, -349f), vec2<bool>(false, false))))))));
    let var_3 = Struct_2(firstLeadingBit(~(i32(-1i) * -19639i)));
    var var_4 = select(vec2<i32>(reverseBits(_wgslsmith_mult_i32(var_3.a, 0i) >> (~var_1.x % 32u)), ~abs(var_3.a) >> (var_0.x % 32u)), ~countOneBits(vec2<i32>(max(var_3.a, 15040i), reverseBits(var_3.a))), vec2<bool>(func_2().a.x, false));
    return (~(~(-var_4.x)) | _wgslsmith_sub_i32(_wgslsmith_mult_i32(~1i, abs(var_3.a)), _wgslsmith_add_i32(40229i, -global0[_wgslsmith_index_u32(1u, 10u)]))) == 16111i;
}

fn func_6(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_2 {
    global0 = array<i32, 10>();
    let var_0 = vec2<i32>(0i, 2147483647i);
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c, 785f));
    return Struct_2(u_input.a);
}

fn func_7(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_1(func_3(func_2().a, vec2<u32>(_wgslsmith_dot_vec4_u32(~u_input.c, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 33369u, 7162u, u_input.c.x), vec4<u32>(u_input.d.x, 0u, 4294967295u, 0u))), 4294967295u)), u_input.d.yx, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(633f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -622f) + _wgslsmith_f_op_f32(ceil(205f))))));
    let var_1 = Struct_2(_wgslsmith_div_i32(min(u_input.b.x, arg_0.a), _wgslsmith_dot_vec4_i32(~reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(var_0.b.x, 10u)], arg_2.a, arg_0.a, arg_1)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 10u)], -65807i, -19071i), vec4<i32>(-20638i, -8192i, -19505i, 58277i), vec4<i32>(-28743i, u_input.a, arg_1, -29646i)))));
    var_0 = Struct_1(var_0.a, var_0.b >> ((vec2<u32>(~u_input.d.x, firstTrailingBit(1021u)) << (countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(37167u, u_input.d.x), var_0.b)) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(781f * _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(select(var_0.c, var_0.c, false))))));
    global0 = array<i32, 10>();
    return 596f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_7(func_6(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -327f) + -192f))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, func_1(-1548f), true, true), true), func_2()), global0[_wgslsmith_index_u32(24207u, 10u)], Struct_2(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, 1i), min(_wgslsmith_mod_i32(-2147483647i, -11882i), u_input.a)))));
    global0 = array<i32, 10>();
    let var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(u_input.c), u_input.c, ~(~(u_input.c << (u_input.c % vec4<u32>(32u))))), u_input.c);
    let var_2 = vec3<u32>(max(~u_input.d.x, var_1.x), 0u, abs(1u));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, min(~reverseBits(vec3<u32>(12874u, 1u, var_1.x)), ~(~vec3<u32>(var_1.x, 74758u, 6951u) | ~u_input.d)), 25960i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1176f, 291f, -1408f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-964f, -1120f, -777f)))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1368f))), _wgslsmith_f_op_f32(f32(-1f) * -931f), _wgslsmith_f_op_f32(f32(-1f) * -956f))), select(firstLeadingBit(~var_1.x), var_2.x, true));
}

