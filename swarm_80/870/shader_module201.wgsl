struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(2147483647i), vec4<f32>(-1026f, 530f, 1707f, -366f)), Struct_2(Struct_1(13141i), vec4<f32>(162f, -575f, -1745f, -556f)), Struct_2(Struct_1(-1i), vec4<f32>(-2103f, -590f, 740f, 491f)), Struct_2(Struct_1(-10223i), vec4<f32>(-1000f, -1567f, 1980f, 1732f)), Struct_2(Struct_1(-10396i), vec4<f32>(933f, -1668f, 744f, -354f)), Struct_2(Struct_1(1i), vec4<f32>(-1000f, -574f, -323f, 1515f)), Struct_2(Struct_1(2147483647i), vec4<f32>(-150f, 1000f, 386f, -1663f)), Struct_2(Struct_1(2147483647i), vec4<f32>(1000f, 1000f, 378f, -1148f)), Struct_2(Struct_1(-8847i), vec4<f32>(493f, 1000f, 353f, -447f)), Struct_2(Struct_1(-42332i), vec4<f32>(214f, -186f, 1129f, 237f)), Struct_2(Struct_1(-1i), vec4<f32>(-1051f, -1000f, 309f, -509f)), Struct_2(Struct_1(65543i), vec4<f32>(316f, 898f, 492f, 190f)), Struct_2(Struct_1(21966i), vec4<f32>(269f, 610f, -437f, -132f)), Struct_2(Struct_1(-16097i), vec4<f32>(975f, 877f, -809f, -1442f)), Struct_2(Struct_1(1i), vec4<f32>(1000f, -670f, -1010f, -580f)), Struct_2(Struct_1(-21874i), vec4<f32>(105f, 1689f, 393f, -690f)), Struct_2(Struct_1(47658i), vec4<f32>(406f, 141f, -1000f, 1000f)), Struct_2(Struct_1(2147483647i), vec4<f32>(2015f, 2129f, -968f, 953f)), Struct_2(Struct_1(41256i), vec4<f32>(-382f, 2014f, -427f, 956f)), Struct_2(Struct_1(0i), vec4<f32>(1618f, 652f, -1364f, 692f)), Struct_2(Struct_1(-11468i), vec4<f32>(883f, -716f, -1000f, 732f)), Struct_2(Struct_1(0i), vec4<f32>(2043f, 630f, 1000f, 601f)), Struct_2(Struct_1(-1i), vec4<f32>(214f, 671f, 137f, 1785f)), Struct_2(Struct_1(2147483647i), vec4<f32>(279f, -1000f, 291f, -148f)), Struct_2(Struct_1(-69778i), vec4<f32>(144f, 1457f, -1582f, 1000f)), Struct_2(Struct_1(2147483647i), vec4<f32>(-1637f, -602f, 1000f, -687f)), Struct_2(Struct_1(i32(-2147483648)), vec4<f32>(870f, 915f, 577f, 1117f)), Struct_2(Struct_1(-10607i), vec4<f32>(-634f, -1455f, -324f, -2094f)), Struct_2(Struct_1(20632i), vec4<f32>(1736f, 717f, -278f, 452f)));

var<private> global2: Struct_1 = Struct_1(21176i);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_sub_vec3_u32(abs(~(~vec3<u32>(u_input.b, 0u, 14728u))) >> (~vec3<u32>(612u, ~4294967295u, abs(u_input.b)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(~(~(vec3<u32>(u_input.b, u_input.b, 0u) ^ vec3<u32>(90862u, u_input.b, 18669u))), min(max(abs(vec3<u32>(1u, 101359u, 24437u)), firstLeadingBit(vec3<u32>(u_input.b, u_input.b, u_input.b))), ~vec3<u32>(1u, u_input.b, u_input.b))));
    let var_1 = 1u;
    global2 = arg_2;
    global0 = array<i32, 4>();
    let var_2 = _wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1, var_1, var_1), ~vec3<u32>(1u, u_input.b, var_0.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.x, 4294967295u, 4294967295u) | vec3<u32>(var_0.x, var_1, 0u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(26219u, var_1, u_input.b), vec3<u32>(var_1, 4294967295u, var_0.x)), ~4294967295u, u_input.b))) >> (~vec3<u32>(var_1 | 52687u, var_1, var_1) % vec3<u32>(32u));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_1)))), arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 * 1000f))))));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    let var_0 = vec4<bool>(true, true, true, true);
    global0 = array<i32, 4>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(false, 696f, Struct_1(-1i)))), vec4<f32>(251f, _wgslsmith_f_op_f32(f32(-1f) * -354f), _wgslsmith_f_op_f32(f32(-1f) * -1495f), _wgslsmith_f_op_f32(1485f + 1285f)), var_0.x && any(vec2<bool>(false, var_0.x)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -150f), 1f, _wgslsmith_f_op_f32(393f + 917f), _wgslsmith_f_op_f32(f32(-1f) * -209f)))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(380f, -465f, -534f, 524f), vec4<f32>(114f, -482f, 184f, -827f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(568f, -327f, 1998f, -1435f)), vec4<bool>(var_0.x, false, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1501f, -917f, -439f))))));
    var var_2 = var_0.x;
    let var_3 = Struct_2(Struct_1(_wgslsmith_mod_i32(-3920i, 36243i)), var_1);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x + var_1.x) + -1432f)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: f32, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(ceil(159f)), arg_2, arg_2));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_3.wxw, firstLeadingBit(arg_3.wyz ^ arg_3.zxz)), 29u)];
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(-vec3<i32>(global0[_wgslsmith_index_u32(0u, 4u)], ~global0[_wgslsmith_index_u32(~u_input.b, 4u)], _wgslsmith_sub_i32(u_input.a.x, -2147483647i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 4u)], global2.a, 0i), vec4<i32>(-3732i, u_input.a.x, u_input.a.x, -1i))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, 0i, global0[_wgslsmith_index_u32(u_input.b, 4u)]), global0[_wgslsmith_index_u32(~u_input.b, 4u)], u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-21485i, global2.a, -1i), vec3<i32>(-10430i, 49175i, u_input.a.x))), ~(~vec4<i32>(46933i, global2.a, -2488i, global0[_wgslsmith_index_u32(u_input.b, 4u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1231f))), _wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(9163i, -2147483647i, global2.a), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec3<i32>(0i, 35154i, global2.a))))))), ~(~max(vec4<u32>(14596u, u_input.b, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, u_input.b, 0u))) >> (~firstTrailingBit(select(vec4<u32>(4294967295u, 23u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<bool>(false, false, false, false))) % vec4<u32>(32u)));
    let var_1 = Struct_2(var_0.a, vec4<f32>(-934f, -295f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - 533f)), 1299f));
    global1 = array<Struct_2, 29>();
    let var_2 = func_4(vec3<i32>(-1i, _wgslsmith_add_i32(10161i, _wgslsmith_mult_i32(abs(-2147483647i), abs(var_1.a.a))), _wgslsmith_div_i32(i32(-1i) * -32501i, ~_wgslsmith_mod_i32(var_1.a.a, global2.a))), ~vec4<i32>(-15655i, _wgslsmith_sub_i32(global2.a, var_1.a.a), u_input.a.x ^ global2.a, 1i) ^ (_wgslsmith_clamp_vec4_i32(~vec4<i32>(8736i, var_1.a.a, -12053i, 0i), vec4<i32>(global2.a, global2.a, -39372i, var_1.a.a) >> (vec4<u32>(u_input.b, 0u, 47440u, u_input.b) % vec4<u32>(32u)), select(vec4<i32>(44512i, u_input.a.x, var_1.a.a, 0i), vec4<i32>(var_0.a.a, 1i, -1i, u_input.a.x), vec4<bool>(false, false, false, false))) << (vec4<u32>(0u, _wgslsmith_mult_u32(2315u, 79154u), 1u, u_input.b) % vec4<u32>(32u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1035f - var_1.b.x))), vec4<u32>(u_input.b >> (~u_input.b % 32u), 88096u, ~(~(~1u)), ~18857u)).a;
    global2 = func_4(firstTrailingBit(-vec3<i32>(_wgslsmith_div_i32(-21717i, global2.a), -1i, func_4(vec3<i32>(-1i, 0i, u_input.a.x), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(u_input.b, 4u)], -1i, 2147483647i), var_1.b.x, vec4<u32>(22459u, 42314u, 22649u, 1u)).a.a)), ~(-(~(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 4u)], var_2.a, 7818i, var_2.a)))), 344f, _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(36212u, 70962u, u_input.b, u_input.b), vec4<u32>(u_input.b, 4294967295u, 22277u, 62660u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<u32>(u_input.b, u_input.b, 57058u, 0u))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 46010u), vec2<u32>(0u, 4294967295u)), u_input.b, 1u, ~u_input.b), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 8001u, 31530u, 4294967295u), vec4<u32>(1u, 4294967295u, 9364u, 4294967295u))) << (_wgslsmith_mult_vec4_u32(~(~vec4<u32>(5019u, u_input.b, u_input.b, 0u)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(4294967295u, 11173u, 53420u, u_input.b)), vec4<u32>(u_input.b, u_input.b, 0u, 30138u) ^ vec4<u32>(32063u, 1u, u_input.b, 1u))) % vec4<u32>(32u))).a;
    return Struct_1(var_2.a);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    global0 = array<i32, 4>();
    var var_0 = Struct_1(firstTrailingBit(global0[_wgslsmith_index_u32(abs(u_input.b), 4u)]));
    let var_1 = -min(max(~vec3<i32>(-5673i, -9446i, -15527i), select(vec3<i32>(-28689i, 1i, -29868i), vec3<i32>(u_input.a.x, global2.a, -5135i), arg_2)), vec3<i32>(u_input.a.x, 16858i, var_0.a) ^ vec3<i32>(0i, global0[_wgslsmith_index_u32(28278u, 4u)], arg_1.a)) << (firstLeadingBit(_wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 50834u, 0u), vec3<u32>(u_input.b, 21823u, u_input.b))), ~(vec3<u32>(40859u, u_input.b, u_input.b) ^ vec3<u32>(u_input.b, u_input.b, 4294967295u)))) % vec3<u32>(32u));
    let var_2 = _wgslsmith_div_u32(min(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b, u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 680u), vec2<u32>(24836u, 19926u))), u_input.b), u_input.b) << (reverseBits(~_wgslsmith_clamp_u32(42274u, u_input.b, firstTrailingBit(u_input.b))) % 32u);
    var var_3 = -(abs(max(var_1, select(var_1, vec3<i32>(-2147483647i, -1i, global0[_wgslsmith_index_u32(u_input.b, 4u)]), true))) | countOneBits(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a.x, var_0.a, global0[_wgslsmith_index_u32(40417u, 4u)]), min(var_1, vec3<i32>(arg_1.a, 0i, global0[_wgslsmith_index_u32(0u, 4u)])))));
    return global1[_wgslsmith_index_u32(reverseBits(u_input.b), 29u)];
}

fn func_6(arg_0: Struct_2, arg_1: f32) -> bool {
    var var_0 = Struct_2(arg_0.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(true, arg_0.b.x, Struct_1(arg_0.a.a)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_0.b + vec4<f32>(arg_0.b.x, arg_0.b.x, arg_1, arg_1))))))));
    let var_1 = _wgslsmith_f_op_f32(round(873f));
    global0 = array<i32, 4>();
    var var_2 = (vec3<i32>(-1i) * -select(vec3<i32>(-1i, var_0.a.a, global2.a), vec3<i32>(arg_0.a.a, arg_0.a.a, var_0.a.a), vec3<bool>(false, true, false))) & reverseBits(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(-1i, -1i, 2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(201i, global2.a, 46418i), vec3<i32>(var_0.a.a, -2147483647i, var_0.a.a))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, global0[_wgslsmith_index_u32(u_input.b, 4u)]) >> (vec3<u32>(u_input.b, 0u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(arg_0.a.a, 1i, -2147483647i)), ~(-vec3<i32>(2147483647i, var_0.a.a, global2.a))));
    let var_3 = vec2<i32>(_wgslsmith_mult_i32(-func_1().a, abs(~17410i)), ~abs(countOneBits(2147483647i))) >> (((reverseBits(vec2<u32>(4294967295u, u_input.b)) >> ((vec2<u32>(u_input.b, 0u) | ~vec2<u32>(41091u, u_input.b)) % vec2<u32>(32u))) ^ ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.b), countOneBits(vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(1u, u_input.b))) % vec2<u32>(32u));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global1 = array<Struct_2, 29>();
    global0 = array<i32, 4>();
    global1 = array<Struct_2, 29>();
    var var_1 = !vec2<bool>(func_6(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-322f, 112f, 450f, -197f) + vec4<f32>(723f, -741f, -380f, 605f)), func_1(), false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1592f * -1818f), 797f))), true);
    var_0 = ~(_wgslsmith_sub_u32(~u_input.b, u_input.b) ^ u_input.b) <= countOneBits(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(func_4(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-36883i, global0[_wgslsmith_index_u32(43565u, 4u)], 7411i), vec3<i32>(u_input.a.x, -60024i, -12537i), vec3<i32>(2147483647i, -2147483647i, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(global2.a, 1i, 5687i, global0[_wgslsmith_index_u32(u_input.b, 4u)]), vec4<i32>(global2.a, global2.a, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 4u)])) << (vec4<u32>(u_input.b, u_input.b, 1u, u_input.b) % vec4<u32>(32u)), _wgslsmith_f_op_f32(trunc(-1532f)), vec4<u32>(reverseBits(1u), 0u, u_input.b, abs(u_input.b))).a.a, _wgslsmith_sub_i32(4179i, i32(-1i) * -u_input.a.x)), _wgslsmith_sub_vec4_i32(-vec4<i32>(global2.a, func_4(vec3<i32>(15181i, u_input.a.x, 0i), vec4<i32>(-2147483647i, global2.a, 31803i, 55173i), 439f, vec4<u32>(29033u, u_input.b, u_input.b, 4294967295u)).a.a, -2147483647i, global2.a), select(min(-vec4<i32>(1i, 33588i, 1i, 9124i), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, global0[_wgslsmith_index_u32(47870u, 4u)], u_input.a.x, u_input.a.x), vec4<i32>(global0[_wgslsmith_index_u32(72097u, 4u)], u_input.a.x, global0[_wgslsmith_index_u32(9857u, 4u)], 21580i))), vec4<i32>(global2.a, max(global2.a, 10156i), global2.a, u_input.a.x), select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(true, true, var_1.x, true), false), var_1.x))), 1593f, ~reverseBits(vec2<u32>(u_input.b, countOneBits(4294967295u))), _wgslsmith_add_vec4_u32(~vec4<u32>(~1u, ~u_input.b, u_input.b, 1u), ~(~abs(vec4<u32>(50310u, u_input.b, 4294967295u, 0u)))));
}

