struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = vec2<u32>(~14034u, 26088u);
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_1 = arg_1;
    var var_2 = var_1.d;
    return Struct_2(Struct_1(select(vec3<bool>(var_2.a.x, any(var_2.b), var_1.d.a.x), vec3<bool>(true, var_2.b.x, true), var_1.d.a.x == var_1.d.b.x), var_2.b, 117886u, ~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, arg_2.x), var_1.d.d))), Struct_1(!var_2.b.wyx, select(!select(var_1.d.b, arg_1.d.b, var_2.a.x), select(var_2.b, vec4<bool>(true, var_2.b.x, false, var_2.a.x), false), var_2.b), var_2.d.x, _wgslsmith_div_vec2_u32(firstLeadingBit(var_2.d), vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(arg_2.xx, vec2<u32>(4294967295u, 54631u))))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 5>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(477f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1388f, -982f)) * 2099f)), -434f));
    let var_1 = ~(~_wgslsmith_div_vec4_u32(max(~vec4<u32>(27323u, u_input.b, arg_1.d.x, arg_1.d.x), abs(vec4<u32>(44951u, arg_0, 40007u, 0u))), vec4<u32>(~u_input.b, min(u_input.b, 22118u), ~0u, ~30099u)));
    let var_2 = vec4<u32>(0u, 4294967295u, 4294967295u, _wgslsmith_mult_u32(arg_1.d.x, abs(1u)));
    global0 = array<Struct_1, 5>();
    return ~_wgslsmith_div_u32(arg_1.c, 6309u);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool) -> f32 {
    global0 = array<Struct_1, 5>();
    var var_0 = ~vec4<i32>(firstLeadingBit(u_input.a), firstTrailingBit(u_input.a), (u_input.a | -10529i) | u_input.a, -19448i);
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(34674i, _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_0.x, 1i), vec3<i32>(var_0.x, -1424i, -1i)), vec3<i32>(~(-2147483647i), u_input.a, max(var_0.x, 0i))), _wgslsmith_sub_i32(~(-u_input.a), max(u_input.a, -2147483647i)), ~_wgslsmith_clamp_i32(var_0.x, ~0i, -var_0.x)), min(vec4<i32>(~(-650i << (u_input.b % 32u)), _wgslsmith_dot_vec2_i32(var_0.xz >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)), ~vec2<i32>(-22162i, 0i)), -70566i, u_input.a), -vec4<i32>(1i, ~u_input.a, _wgslsmith_dot_vec3_i32(var_0.yxz, vec3<i32>(-1i, u_input.a, var_0.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_0.x, 0i, 2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, var_0.x)))));
    var var_2 = func_1(~u_input.b | 93748u, Struct_4(var_1.x, Struct_3(1627f, ~(-1i)), vec3<i32>(~(-3759i), _wgslsmith_mod_i32(1i, -u_input.a), max(var_1.x, abs(u_input.a))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(32644u, 4294967295u, 17184u, u_input.b), ~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) & _wgslsmith_sub_u32(4294967295u, u_input.b), 5u)]), ~(~vec3<u32>(u_input.b, _wgslsmith_clamp_u32(35040u, u_input.b, 96754u), 56930u))).a;
    var_0 = var_1;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -1110f))), 792f, false || !any(!vec2<bool>(arg_1, false))));
}

fn func_2() -> bool {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(func_3(u_input.b, Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, false, true, false), u_input.b, vec2<u32>(124981u, 591u))), Struct_4(u_input.a, Struct_3(-496f, -17237i), vec3<i32>(0i, 2147483647i, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec3<u32>(u_input.b, 19489u, u_input.b)).a.b, !select(true, true, false)))), -2147483647i);
    var var_1 = _wgslsmith_mod_vec2_i32(~((vec2<i32>(-2147483647i, -2147483647i) ^ ~vec2<i32>(u_input.a, var_0.b)) | -vec2<i32>(u_input.a, var_0.b)), _wgslsmith_mult_vec2_i32(reverseBits(max(vec2<i32>(20019i, var_0.b) ^ vec2<i32>(-28645i, u_input.a), ~vec2<i32>(-107525i, u_input.a))), vec2<i32>(-1i, ~1i)));
    var var_2 = vec2<bool>(!(all(vec3<bool>(true, false, false)) | (false & (var_0.a <= var_0.a))), reverseBits(u_input.b) != _wgslsmith_div_u32(~0u, max(firstLeadingBit(104324u), _wgslsmith_mult_u32(u_input.b, u_input.b))));
    return var_2.x;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = Struct_1(select(!func_1(1u, arg_1, ~vec3<u32>(18237u, 31235u, 53672u)).b.a, arg_0.a.a, !vec3<bool>(true, true, arg_2)), func_1(0u, arg_1, vec3<u32>(arg_0.b.d.x, ~u_input.b, arg_0.a.c)).a.b, _wgslsmith_mod_u32(101670u, max(~arg_0.a.d.x, 4294967295u)), vec2<u32>(_wgslsmith_div_u32(~_wgslsmith_sub_u32(50405u, u_input.b), min(60429u, 4294967295u)), arg_1.d.c));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -947f);
    global0 = array<Struct_1, 5>();
    let var_2 = var_0.b;
    var var_3 = arg_1;
    return Struct_3(var_3.b.a, _wgslsmith_dot_vec2_i32(vec2<i32>(min(17179i, -1i ^ arg_1.c.x), u_input.a), vec2<i32>(-abs(-2147483647i), var_3.c.x)));
}

fn func_6(arg_0: f32, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec2<i32>) -> Struct_3 {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_0 = arg_2.b;
    var var_1 = arg_1.b;
    return arg_2.b;
}

fn func_7(arg_0: Struct_3) -> Struct_2 {
    global0 = array<Struct_1, 5>();
    let var_0 = func_1(abs(4294967295u), Struct_4(9558i, func_6(arg_0.a, func_5(Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, false, true, true), u_input.b, vec2<u32>(u_input.b, u_input.b)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, false, false, true), 58104u, vec2<u32>(1u, u_input.b))), Struct_4(arg_0.b, Struct_3(arg_0.a, arg_0.b), vec3<i32>(arg_0.b, arg_0.b, arg_0.b), global0[_wgslsmith_index_u32(u_input.b, 5u)]), func_2(), -vec4<i32>(arg_0.b, arg_0.b, 2147483647i, u_input.a)), Struct_4(u_input.a, func_6(arg_0.a, Struct_3(-1121f, u_input.a), Struct_4(arg_0.b, arg_0, vec3<i32>(26320i, u_input.a, u_input.a), Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, true, false, false), u_input.b, vec2<u32>(u_input.b, u_input.b))), vec2<i32>(-1i, arg_0.b)), reverseBits(vec3<i32>(-31620i, 1i, -15784i)), func_1(u_input.b, Struct_4(arg_0.b, arg_0, vec3<i32>(u_input.a, 6893i, arg_0.b), global0[_wgslsmith_index_u32(50146u, 5u)]), vec3<u32>(55193u, 1901u, 1u)).b), ~_wgslsmith_add_vec2_i32(vec2<i32>(32026i, -13317i), vec2<i32>(1i, arg_0.b))), select(vec3<i32>(1i, -12205i, arg_0.b), countOneBits(~vec3<i32>(-72890i, 1i, u_input.a)), 22461u < _wgslsmith_dot_vec3_u32(vec3<u32>(83220u, 40278u, 57068u), vec3<u32>(72530u, u_input.b, 4294967295u))), global0[_wgslsmith_index_u32(~(~1u), 5u)]), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(max(vec3<u32>(20579u, 0u, u_input.b), vec3<u32>(70744u, u_input.b, 40564u)) ^ vec3<u32>(u_input.b, 40604u, u_input.b), vec3<u32>(~60252u, u_input.b, 60449u)), _wgslsmith_div_vec3_u32(~(~vec3<u32>(100811u, u_input.b, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 72288u, 49394u), vec3<u32>(4294967295u, u_input.b, 1u)))));
    var var_1 = Struct_4(i32(-1i) * -arg_0.b, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + arg_0.a) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a + 892f)))), countOneBits(u_input.a)), abs(vec3<i32>(arg_0.b, -arg_0.b, -5359i)), global0[_wgslsmith_index_u32(var_0.b.c, 5u)]);
    var var_2 = Struct_4(-1i, var_1.b, ~var_1.c | _wgslsmith_add_vec3_i32(-var_1.c, _wgslsmith_sub_vec3_i32(min(vec3<i32>(2147483647i, -18999i, arg_0.b), var_1.c), vec3<i32>(-69382i, u_input.a, var_1.a) << (vec3<u32>(1u, u_input.b, var_0.b.d.x) % vec3<u32>(32u)))), var_0.a);
    let var_3 = func_6(-352f, Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(f32(-1f) * -894f))), arg_0.b), Struct_4(23832i, var_2.b, var_2.c, var_2.d), vec2<i32>(-1i) * -var_2.c.zx);
    return func_1(~(~(~1u)), Struct_4(_wgslsmith_clamp_i32(arg_0.b, max(-arg_0.b, _wgslsmith_div_i32(67834i, -10094i)), -_wgslsmith_sub_i32(var_2.b.b, var_1.c.x)), Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a * var_1.b.a))), -27023i), vec3<i32>(-firstLeadingBit(49364i), var_2.b.b, var_1.a), func_1(4294967295u, Struct_4(~var_3.b, func_6(164f, Struct_3(1321f, 2147483647i), Struct_4(-1i, Struct_3(var_1.b.a, var_3.b), var_1.c, Struct_1(var_1.d.b.yyy, vec4<bool>(var_2.d.b.x, var_2.d.b.x, var_2.d.b.x, false), var_2.d.c, var_0.b.d)), var_2.c.yx), var_2.c, var_2.d), min(~vec3<u32>(var_2.d.d.x, u_input.b, 48186u), _wgslsmith_sub_vec3_u32(vec3<u32>(74531u, var_1.d.d.x, var_1.d.c), vec3<u32>(var_2.d.c, 55505u, 1u)))).a), ~vec3<u32>(var_2.d.d.x, 1444u, ~(~0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_0 = func_7(func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(572f)))), func_5(func_1(77864u, Struct_4(u_input.a, Struct_3(-1362f, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, false, true, true), u_input.b, vec2<u32>(u_input.b, 13218u))), vec3<u32>(u_input.b, 4294967295u, 0u)), Struct_4(u_input.a, Struct_3(-1375f, u_input.a), vec3<i32>(u_input.a, 67583i, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, 1i), func_1(22441u, Struct_4(14464i, Struct_3(-431f, 0i), vec3<i32>(u_input.a, -22735i, -1607i), global0[_wgslsmith_index_u32(u_input.b, 5u)]), vec3<u32>(6131u, 67308u, u_input.b)).a), any(vec4<bool>(false, true, true, true)) || func_2(), select(vec4<i32>(-27845i, -1i, -2147483647i, u_input.a) << (vec4<u32>(u_input.b, u_input.b, u_input.b, 4012u) % vec4<u32>(32u)), vec4<i32>(0i, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(2147483647i, u_input.a, 29332i, u_input.a), false)), Struct_4(u_input.a, func_5(func_1(u_input.b, Struct_4(59607i, Struct_3(-926f, -15252i), vec3<i32>(u_input.a, 5066i, 79467i), global0[_wgslsmith_index_u32(u_input.b, 5u)]), vec3<u32>(4474u, u_input.b, 1u)), Struct_4(u_input.a, Struct_3(938f, 47852i), vec3<i32>(u_input.a, u_input.a, -14410i), global0[_wgslsmith_index_u32(u_input.b, 5u)]), true, vec4<i32>(u_input.a, u_input.a, -64764i, u_input.a)), ~vec3<i32>(2147483647i, u_input.a, u_input.a), func_1(~0u, Struct_4(u_input.a, Struct_3(-299f, 2147483647i), vec3<i32>(u_input.a, 1i, u_input.a), Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, false, true, true), 1u, vec2<u32>(u_input.b, 4294967295u))), ~vec3<u32>(u_input.b, u_input.b, u_input.b)).b), countOneBits(firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(u_input.a, 2147483647i))))));
    global0 = array<Struct_1, 5>();
    var var_1 = Struct_4(_wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(u_input.a, 39798i, -68i, 1i)), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a, u_input.a, -29544i, 14782i), -vec4<i32>(25197i, u_input.a, u_input.a, 0i))) & _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, -1i), -76781i), Struct_3(-697f, 12752i), ~(~(~vec3<i32>(u_input.a, u_input.a, -22296i))), global0[_wgslsmith_index_u32(abs(max(_wgslsmith_div_u32(var_0.b.d.x, 1u), ~46239u)), 5u)]);
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_2 = Struct_3(-1344f, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~75977u);
}

