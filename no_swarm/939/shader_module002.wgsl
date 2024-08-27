struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<bool>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), 4285i, -27389i);

var<private> global2: f32 = -740f;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_4) -> vec2<f32> {
    var var_0 = arg_2.d.d;
    var var_1 = vec4<bool>(true & !any(!vec2<bool>(true, arg_2.c.a.x)), any(vec3<bool>(false, true & arg_3.a, false)), arg_2.d.e.a.x, true);
    global0 = select(-arg_2.d.b, _wgslsmith_add_i32(reverseBits(arg_3.d.b), ~35300i), !all(!arg_3.c.a) && true);
    var var_2 = vec3<i32>(0i, 66080i, arg_3.d.b) ^ ~var_0.zyz;
    var var_3 = min(arg_2.d.d, ~(arg_3.d.d << (vec4<u32>(arg_0.x, 1u, arg_1, arg_0.x) % vec4<u32>(32u))) >> (vec4<u32>(~_wgslsmith_dot_vec2_u32(arg_3.d.e.d.wx, vec2<u32>(35398u, arg_1)), ~_wgslsmith_dot_vec4_u32(arg_2.d.e.d, arg_3.d.e.d), 1u, select(arg_3.c.b, arg_3.c.b, any(vec4<bool>(false, arg_3.a, false, true)))) % vec4<u32>(32u)));
    return vec2<f32>(arg_2.d.a.a.x, _wgslsmith_f_op_f32(106f * 1832f));
}

fn func_2(arg_0: vec2<f32>) -> Struct_4 {
    global1 = max(reverseBits(~vec3<i32>(global1.x, u_input.b.x, global1.x) | u_input.b), vec3<i32>(firstLeadingBit(_wgslsmith_mult_i32(global1.x, 0i)), ~_wgslsmith_sub_i32(~u_input.c, u_input.c), reverseBits(_wgslsmith_add_i32(global1.x, _wgslsmith_add_i32(1i, 16068i)))));
    global0 = global1.x & _wgslsmith_mult_i32(~_wgslsmith_mult_i32(-global1.x, -7538i ^ global1.x), 7203i);
    global1 = ~(u_input.b << (_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(44748u, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, 69453u), vec3<u32>(u_input.a, u_input.a, 86882u))), max(vec3<u32>(29795u, u_input.a, u_input.a), vec3<u32>(1u, 620u, u_input.a)) & (vec3<u32>(4294967295u, 52956u, 49530u) | vec3<u32>(u_input.a, u_input.a, 43927u))) % vec3<u32>(32u)));
    var var_0 = Struct_4(true, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 - _wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(u_input.a, 4294967295u, 1u), 0u, Struct_4(true, Struct_2(vec2<f32>(1687f, 450f)), Struct_1(vec3<bool>(false, true, true), u_input.a, vec4<f32>(1067f, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(965u, u_input.a, 6574u, u_input.a)), Struct_3(Struct_2(arg_0), 0i, vec4<bool>(false, true, false, true), vec4<i32>(global1.x, 2147483647i, u_input.c, -2147483647i), Struct_1(vec3<bool>(true, true, false), 0u, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 998f), vec4<u32>(u_input.a, 36862u, 4294967295u, u_input.a))), Struct_2(vec2<f32>(-1568f, -685f))), Struct_4(true, Struct_2(arg_0), Struct_1(vec3<bool>(true, false, false), 4294967295u, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 162f), vec4<u32>(4294967295u, u_input.a, 1u, u_input.a)), Struct_3(Struct_2(vec2<f32>(-430f, 1169f)), global1.x, vec4<bool>(true, false, false, true), vec4<i32>(-1i, 14268i, -4072i, u_input.c), Struct_1(vec3<bool>(false, false, false), 31260u, vec4<f32>(-1395f, arg_0.x, 1007f, -419f), vec4<u32>(24511u, 19728u, u_input.a, u_input.a))), Struct_2(arg_0))))))), Struct_1(!vec3<bool>(any(vec2<bool>(false, false)), u_input.b.x <= 5535i, false), select(u_input.a, u_input.a, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-386f, arg_0.x), _wgslsmith_f_op_f32(step(1791f, arg_0.x)), 1000f, arg_0.x) - vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), -827f, _wgslsmith_f_op_f32(-arg_0.x), arg_0.x)), select(vec4<u32>(_wgslsmith_clamp_u32(109872u, u_input.a, 4294967295u), u_input.a, 1u, 0u), ~(vec4<u32>(u_input.a, 30587u, 2957u, u_input.a) | vec4<u32>(0u, u_input.a, 5559u, 0u)), select(true, true, true))), Struct_3(Struct_2(vec2<f32>(_wgslsmith_div_f32(-1690f, -657f), 1f)), _wgslsmith_div_i32(min(_wgslsmith_add_i32(-2075i, 0i), u_input.b.x), _wgslsmith_add_i32(0i << (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -7955i, u_input.b.x, -1i), vec4<i32>(u_input.b.x, u_input.b.x, -35541i, u_input.b.x)))), vec4<bool>(global1.x > ~(-1i), false, all(vec3<bool>(false, false, false)), true), vec4<i32>(firstLeadingBit(2147483647i), ~(-1i), _wgslsmith_mult_i32(global1.x, 2147483647i), i32(-1i) * -9641i), Struct_1(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), _wgslsmith_add_u32(u_input.a, 4294967295u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -1415f, arg_0.x)))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 18279u), ~vec4<u32>(u_input.a, 4294967295u, 9478u, u_input.a)))), Struct_2(arg_0));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(-abs(min(global1.x, -1i)), ~firstLeadingBit(u_input.c << (1u % 32u))), u_input.b.x << (~var_0.d.e.d.x % 32u));
    return Struct_4(true, var_0.d.a, var_0.d.e, var_0.d, Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.c.c.zz)));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(-arg_0.d.a.a)).b;
    var var_1 = arg_0.a;
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(abs(~1i), abs(_wgslsmith_add_i32(u_input.b.x, arg_0.d.b))), vec2<i32>(-_wgslsmith_div_i32(arg_0.d.b, 0i), arg_0.d.d.x)) ^ min(~min(global1.x, global1.x | global1.x), global1.x);
    let var_3 = arg_0.d;
    var var_4 = _wgslsmith_div_f32(710f, arg_1);
    return func_2(_wgslsmith_f_op_vec2_f32(select(var_0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, arg_0.c.c.x)), var_3.a.a)), vec2<f32>(_wgslsmith_f_op_f32(abs(959f)), _wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(108108u, arg_2.x, u_input.a), var_3.e.b, arg_0, arg_0)).x)), true))).d;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec4<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(arg_2.xz, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2193f + -436f), _wgslsmith_f_op_f32(f32(-1f) * -711f), -2086f >= arg_0.e.c.x))), 1211f)));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)) - arg_2.x) - arg_0.e.c.x);
    let var_1 = _wgslsmith_add_u32(abs(abs(1u)), 2111u);
    var var_2 = _wgslsmith_f_op_vec2_f32(step(var_0, _wgslsmith_f_op_vec2_f32(func_3(countOneBits(reverseBits(~vec3<u32>(u_input.a, 52935u, 52597u))), ~arg_0.e.d.x, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.c.x, var_0.x)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1239f, -456f))))), func_2(func_4(Struct_4(false, Struct_2(vec2<f32>(var_0.x, arg_1.x)), Struct_1(arg_0.e.a, var_1, vec4<f32>(-375f, arg_0.e.c.x, arg_2.x, 208f), vec4<u32>(0u, var_1, arg_0.e.b, u_input.a)), Struct_3(arg_0.a, 0i, vec4<bool>(arg_0.c.x, false, false, arg_0.e.a.x), arg_0.d, Struct_1(vec3<bool>(true, false, true), var_1, vec4<f32>(-345f, arg_2.x, 2318f, 170f), vec4<u32>(u_input.a, u_input.a, arg_0.e.d.x, u_input.a))), arg_0.a), _wgslsmith_f_op_f32(arg_0.e.c.x - -1078f), arg_0.e.d.xy & arg_0.e.d.xw).e.c.zz)))));
    let var_3 = arg_0.b;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x))), var_0.x, _wgslsmith_f_op_f32(arg_2.x + arg_1.x), -1698f);
}

fn func_1(arg_0: u32) -> f32 {
    global0 = -2147483647i;
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(func_4(func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-170f, 1023f)))), _wgslsmith_f_op_f32(-220f * _wgslsmith_f_op_f32(1553f - -252f)), vec2<u32>(countOneBits(arg_0), ~0u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(205f, -251f))) * vec2<f32>(1f, -1262f)), vec4<f32>(_wgslsmith_div_f32(-250f, 1313f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-794f + 559f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-374f * -173f) + 1f), _wgslsmith_f_op_f32(f32(-1f) * -536f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_5(Struct_3(Struct_2(vec2<f32>(-193f, 684f)), u_input.b.x, vec4<bool>(true, true, true, true), vec4<i32>(30432i, global1.x, u_input.c, u_input.c), Struct_1(vec3<bool>(true, false, false), 4294967295u, vec4<f32>(458f, -1036f, 114f, 732f), vec4<u32>(arg_0, u_input.a, 1u, arg_0))), vec2<f32>(927f, 231f), vec4<f32>(205f, 326f, -955f, -1005f))).x, -612f)), 834f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1619f, 611f)), -619f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -501f)))));
    global1 = select(_wgslsmith_mod_vec3_i32(u_input.b, _wgslsmith_mod_vec3_i32(firstTrailingBit(u_input.b), ~vec3<i32>(u_input.b.x, -50704i, -526i))), abs(u_input.b), vec3<bool>((firstTrailingBit(56231u) == 0u) & true, true, select(true, 0i <= global1.x, all(vec2<bool>(true, true)))));
    global1 = func_4(Struct_4(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(1000f * -851f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1634f))), func_2(var_0.zy).b, func_4(func_2(var_0.zy), _wgslsmith_f_op_f32(ceil(var_0.x)), firstTrailingBit(~vec2<u32>(1u, 1u))).e, func_4(func_2(vec2<f32>(234f, var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1553f, -1417f)))), vec2<u32>(~u_input.a, _wgslsmith_add_u32(arg_0, arg_0))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), -1420f))), _wgslsmith_f_op_f32(ceil(var_0.x)), func_4(func_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, -690f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -453f))), true)), vec2<u32>(329u, _wgslsmith_mod_u32(u_input.a, 4294967295u))).e.d.zz).d.zxx;
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(var_0.wx))))).d;
    return 394f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(819f))));
    var_0 = _wgslsmith_f_op_f32(func_1(~u_input.a));
    global0 = global1.x;
    let var_1 = Struct_1(vec3<bool>(func_4(Struct_4(func_4(Struct_4(false, Struct_2(vec2<f32>(-1082f, -677f)), Struct_1(vec3<bool>(false, true, true), u_input.a, vec4<f32>(1032f, 194f, -664f, -1009f), vec4<u32>(4294967295u, 4294967295u, 71748u, u_input.a)), Struct_3(Struct_2(vec2<f32>(-1284f, 1753f)), global1.x, vec4<bool>(false, true, true, false), vec4<i32>(u_input.c, u_input.b.x, 22940i, global1.x), Struct_1(vec3<bool>(true, false, false), u_input.a, vec4<f32>(-205f, 1150f, -385f, -1326f), vec4<u32>(u_input.a, u_input.a, 83564u, 9952u))), Struct_2(vec2<f32>(-800f, -270f))), -1000f, vec2<u32>(u_input.a, 1u)).e.a.x, Struct_2(vec2<f32>(-274f, -236f)), func_2(vec2<f32>(-744f, -1341f)).d.e, func_2(vec2<f32>(630f, 418f)).d, func_4(Struct_4(true, Struct_2(vec2<f32>(1264f, -841f)), Struct_1(vec3<bool>(true, true, false), u_input.a, vec4<f32>(986f, 170f, 378f, 847f), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), Struct_3(Struct_2(vec2<f32>(-2025f, 471f)), -1306i, vec4<bool>(true, true, false, false), vec4<i32>(-24885i, 25157i, global1.x, global1.x), Struct_1(vec3<bool>(false, false, false), u_input.a, vec4<f32>(-218f, -694f, 271f, 344f), vec4<u32>(u_input.a, 14959u, 45517u, u_input.a))), Struct_2(vec2<f32>(443f, 780f))), 575f, vec2<u32>(u_input.a, u_input.a)).a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(282f * 748f)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 58765u), ~vec2<u32>(37520u, 1u), vec2<u32>(41407u, u_input.a) >> (vec2<u32>(55589u, 4294967295u) % vec2<u32>(32u)))).e.a.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-306f + -1000f)) >= _wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(u_input.a, u_input.a, 54618u), u_input.a, Struct_4(false, Struct_2(vec2<f32>(-281f, 1386f)), Struct_1(vec3<bool>(true, false, false), u_input.a, vec4<f32>(-465f, -1019f, 285f, 110f), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), Struct_3(Struct_2(vec2<f32>(164f, 1602f)), global1.x, vec4<bool>(false, true, false, false), vec4<i32>(u_input.c, u_input.c, 2147483647i, 2147483647i), Struct_1(vec3<bool>(true, false, false), 4294967295u, vec4<f32>(-1969f, -1000f, 1279f, 744f), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), Struct_2(vec2<f32>(-114f, -344f))), Struct_4(false, Struct_2(vec2<f32>(-151f, 522f)), Struct_1(vec3<bool>(false, true, false), 78686u, vec4<f32>(-371f, 1156f, 475f, 695f), vec4<u32>(4294967295u, 0u, 1u, 28214u)), Struct_3(Struct_2(vec2<f32>(-394f, -1837f)), 20209i, vec4<bool>(false, true, true, true), vec4<i32>(-1708i, global1.x, 16384i, -14495i), Struct_1(vec3<bool>(true, false, false), u_input.a, vec4<f32>(-2679f, -1000f, -939f, -958f), vec4<u32>(53926u, 27110u, 0u, 11853u))), Struct_2(vec2<f32>(-1059f, -865f))))).x), _wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(60103u, u_input.a)), ~vec2<u32>(u_input.a, u_input.a))), u_input.a), _wgslsmith_div_vec4_f32(vec4<f32>(-1215f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1700f)) * -515f), _wgslsmith_f_op_f32(max(func_4(Struct_4(true, Struct_2(vec2<f32>(-1421f, -680f)), Struct_1(vec3<bool>(true, true, false), 0u, vec4<f32>(-200f, 903f, -126f, -702f), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), Struct_3(Struct_2(vec2<f32>(-647f, -747f)), u_input.b.x, vec4<bool>(false, true, true, false), vec4<i32>(global1.x, -6819i, 10666i, global1.x), Struct_1(vec3<bool>(true, false, true), u_input.a, vec4<f32>(-264f, 157f, -800f, -987f), vec4<u32>(73905u, u_input.a, 28464u, 1u))), Struct_2(vec2<f32>(-196f, -1144f))), -870f, vec2<u32>(u_input.a, u_input.a)).e.c.x, _wgslsmith_f_op_f32(1000f + 496f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(393f)) * _wgslsmith_f_op_f32(func_1(u_input.a)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-876f, -1903f, 733f, 428f)))), vec4<f32>(1f, 1f, 1f, 1f))), ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 67u, 51172u, u_input.a), vec4<u32>(1u, 1u, u_input.a, u_input.a), vec4<u32>(46561u, 0u, 0u, u_input.a))) ^ (abs(vec4<u32>(u_input.a, 51442u, u_input.a, u_input.a) | vec4<u32>(14114u, 123787u, u_input.a, u_input.a)) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(8302u, u_input.a, 84232u, u_input.a)) % vec4<u32>(32u))));
    var var_2 = vec4<i32>(select(-58911i, 0i, !(!var_1.a.x)), _wgslsmith_clamp_i32(global1.x, ~(i32(-1i) * -1i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(global1.x, global1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, 16255i), vec4<i32>(global1.x, -30012i, global1.x, u_input.b.x))) << (var_1.d.x % 32u)), -min(u_input.c, _wgslsmith_add_i32(41958i, -32478i)) >> (~u_input.a % 32u), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.yyz, ~(~u_input.a));
}

