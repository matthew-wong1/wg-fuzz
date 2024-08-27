struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(-417f, -378f), vec2<f32>(707f, -2545f), vec2<f32>(-1000f, 912f), vec2<f32>(-555f, -1208f), vec2<f32>(404f, 1791f), vec2<f32>(1000f, -1094f), vec2<f32>(-101f, 1896f));

var<private> global1: array<Struct_2, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = ~u_input.b.x ^ 44762u;
    global0 = array<vec2<f32>, 7>();
    global0 = array<vec2<f32>, 7>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -113f), ~(~select(vec2<u32>(0u, u_input.b.x), u_input.b.xx & u_input.d.yz, true)), !(!vec4<bool>(all(vec3<bool>(true, false, false)), true, all(vec4<bool>(true, false, true, false)), true)));
    var var_2 = 0u;
    return 4294967295u;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    global0 = array<vec2<f32>, 7>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + arg_3.x)))) - 1197f), arg_0.yw, select(select(arg_1.c, vec4<bool>(!arg_1.c.x, false, arg_1.c.x && true, true), any(!arg_1.c.yyz)), arg_1.c, false));
    global0 = array<vec2<f32>, 7>();
    var var_1 = vec3<u32>(arg_1.b.x, arg_1.b.x, _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(~(arg_0.x << (u_input.b.x % 32u)), func_3())));
    global1 = array<Struct_2, 7>();
    return var_0;
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    global0 = array<vec2<f32>, 7>();
    let var_0 = func_2(_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 21172u, u_input.e.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 19560u, 47809u)) ^ vec4<u32>(max(u_input.b.x, 23762u), ~u_input.d.x, 0u, ~0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(countOneBits(4294967295u), ~1u, func_3(), arg_0.b.x), u_input.d, vec4<u32>(_wgslsmith_mult_u32(41985u, 1u), u_input.a.x, ~4294967295u, _wgslsmith_mult_u32(25713u, 1u)))), arg_0, !(!(0u <= (0u | arg_0.b.x))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1026f + arg_0.a), arg_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.a)), 1393f)))));
    global0 = array<vec2<f32>, 7>();
    var var_1 = ~reverseBits(select(min(vec3<u32>(var_0.b.x, 0u, 54844u), vec3<u32>(594u, 25754u, 51442u)), vec3<u32>(arg_0.b.x, 4294967295u, 1u), true)) | (select(~(~vec3<u32>(u_input.d.x, 6778u, var_0.b.x)), _wgslsmith_mult_vec3_u32(max(vec3<u32>(var_0.b.x, u_input.d.x, 115143u), u_input.d.yzz), ~u_input.d.wzz), vec3<bool>(func_2(vec4<u32>(0u, u_input.a.x, arg_0.b.x, 53358u), var_0, true, vec3<f32>(544f, 1301f, 197f)).c.x, true, false)) | u_input.d.zwy);
    let var_2 = var_0.c.x;
    return var_1.yy;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> u32 {
    global0 = array<vec2<f32>, 7>();
    global1 = array<Struct_2, 7>();
    let var_0 = Struct_1(arg_1.a, _wgslsmith_mod_vec2_u32(func_4(func_2(u_input.d, Struct_1(-702f, arg_1.b, arg_1.c), false, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, -127f, arg_1.a) - vec3<f32>(arg_1.a, arg_1.a, arg_1.a)))), arg_1.b), select(arg_1.c, !(!arg_1.c), u_input.c >= ~_wgslsmith_div_i32(-55469i, 54505i)));
    let var_1 = global1[_wgslsmith_index_u32(~(~u_input.d.x), 7u)];
    global1 = array<Struct_2, 7>();
    return var_0.b.x;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = u_input.c;
    let var_1 = Struct_1(arg_1.b, ~(abs(~u_input.b.xy) & func_2(vec4<u32>(u_input.b.x, 0u, 43907u, u_input.d.x) >> (u_input.d % vec4<u32>(32u)), func_2(vec4<u32>(u_input.d.x, u_input.d.x, u_input.b.x, 1u), Struct_1(arg_2.x, vec2<u32>(u_input.e.x, 1u), vec4<bool>(false, arg_0, true, arg_0)), true, arg_2.zwy), true, _wgslsmith_f_op_vec3_f32(arg_2.wyx * vec3<f32>(arg_2.x, -2383f, 682f))).b), vec4<bool>(true, true, true, true));
    global1 = array<Struct_2, 7>();
    let var_2 = !(!var_1.c);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(floor(-415f)), vec2<u32>(0u, 0u), var_2);
    return arg_1;
}

fn func_6(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(arg_1.b, ~(~_wgslsmith_mod_vec2_u32(u_input.a, u_input.b.xx)) ^ u_input.d.xw, func_2(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4847u, 0u, u_input.e.x), ~u_input.d), ~1u, firstLeadingBit(func_4(Struct_1(300f, u_input.b.yy, vec4<bool>(false, true, false, true))).x), max(89861u, u_input.a.x)), func_2(abs(~vec4<u32>(u_input.d.x, 0u, u_input.d.x, 27995u)), Struct_1(_wgslsmith_f_op_f32(select(arg_1.a.x, -1413f, false)), ~vec2<u32>(arg_0, u_input.d.x), vec4<bool>(true, true, true, true)), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(805f, arg_1.b, arg_1.b))), !select(true, any(vec3<bool>(false, true, false)), true), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(573f, arg_1.a.x)), _wgslsmith_f_op_f32(select(arg_1.a.x, arg_1.a.x, false))), 1784f, _wgslsmith_f_op_f32(arg_1.a.x - 2131f))).c);
    let var_1 = var_0.c.zx;
    global1 = array<Struct_2, 7>();
    var var_2 = -1000f;
    var var_3 = Struct_1(arg_1.b, select(~select(select(var_0.b, u_input.a, var_0.c.yw), u_input.d.zw, any(var_0.c.xxy)), func_2(u_input.d, Struct_1(119f, ~vec2<u32>(11384u, 0u), vec4<bool>(true, var_0.c.x, var_0.c.x, true)), all(var_0.c.xz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, -584f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(895f, var_0.a, 1574f), vec3<f32>(-669f, arg_1.b, 480f), var_0.c.yzw)))).b, func_2(vec4<u32>(arg_0, 127253u, var_0.b.x, var_0.b.x) << (abs(u_input.d) % vec4<u32>(32u)), Struct_1(-379f, ~u_input.e, vec4<bool>(var_1.x, var_0.c.x, var_1.x, false)), _wgslsmith_f_op_f32(-var_0.a) != _wgslsmith_f_op_f32(arg_1.b + -1359f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, arg_1.a.x, -1263f)) * vec3<f32>(arg_1.b, -1153f, 1664f))).c.zy), func_2(vec4<u32>((u_input.a.x ^ var_0.b.x) << (_wgslsmith_sub_u32(var_0.b.x, 19758u) % 32u), _wgslsmith_clamp_u32(select(52812u, 9369u, false), 4294967295u, firstLeadingBit(var_0.b.x)), countOneBits(func_2(vec4<u32>(35800u, 67876u, arg_0, u_input.e.x), Struct_1(arg_1.a.x, vec2<u32>(93103u, 1u), var_0.c), false, vec3<f32>(-1671f, 1027f, -174f)).b.x), u_input.b.x), Struct_1(155f, countOneBits(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(0u, 18282u))), var_0.c), !all(func_2(vec4<u32>(1u, 1u, arg_0, arg_0), Struct_1(var_0.a, u_input.b.xy, var_0.c), var_1.x, vec3<f32>(var_0.a, -1156f, var_0.a)).c.zx), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), 391f, _wgslsmith_f_op_f32(trunc(arg_1.b))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, var_0.a, 1000f) - vec3<f32>(-1000f, -723f, var_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2340f, 1054f, -625f))))).c);
    return func_2(vec4<u32>(max(1u, 100865u), countOneBits(_wgslsmith_div_u32(_wgslsmith_mult_u32(16195u, 18893u), _wgslsmith_div_u32(var_3.b.x, 1u))), (~arg_0 >> (~var_0.b.x % 32u)) | 1u, ~1u), func_2(_wgslsmith_clamp_vec4_u32(~vec4<u32>(43934u, var_0.b.x, 1u, var_0.b.x), ~u_input.d, vec4<u32>(select(62580u, var_0.b.x, false), 34472u, var_3.b.x, var_0.b.x)), func_2(u_input.d, Struct_1(_wgslsmith_div_f32(arg_1.a.x, -1711f), select(vec2<u32>(14522u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), true), var_3.c), var_1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, 269f, var_0.a) * vec3<f32>(arg_1.b, arg_1.a.x, var_3.a)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a, 608f, arg_1.b))))), !all(var_3.c) & false, vec3<f32>(-855f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-866f, -1002f) * _wgslsmith_div_f32(-1352f, var_0.a)), _wgslsmith_f_op_f32(min(613f, _wgslsmith_f_op_f32(-var_0.a))))), -(u_input.c << ((29527u << (var_3.b.x % 32u)) % 32u)) <= u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(687f, _wgslsmith_f_op_f32(round(var_0.a)), _wgslsmith_f_op_f32(min(1110f, 229f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b, var_3.a, 1664f) * vec3<f32>(arg_1.a.x, var_3.a, var_0.a))))));
}

fn func_7(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_1(arg_2.a, ~arg_2.b, vec4<bool>(arg_2.c.x, any(func_6(1u, arg_3).c), !select(func_6(0u, Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], 293f)).c.x, any(vec3<bool>(arg_1.x, arg_2.c.x, false)), arg_2.c.x), arg_1.x));
    let var_1 = ~(-countOneBits(_wgslsmith_mult_i32(-2147483647i, u_input.c)) | -1i);
    let var_2 = select(~((~vec4<u32>(1u, u_input.a.x, var_0.b.x, 4523u) & u_input.d) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 8432u, 30114u, u_input.e.x), vec4<u32>(arg_2.b.x, 9881u, 86875u, var_0.b.x)) % vec4<u32>(32u))), select(vec4<u32>(~1u, ~1u, (u_input.a.x >> (var_0.b.x % 32u)) ^ _wgslsmith_mod_u32(var_0.b.x, u_input.a.x), var_0.b.x), ~reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.x, u_input.e.x, u_input.d.x, 4294967295u), u_input.d, vec4<u32>(var_0.b.x, arg_2.b.x, arg_2.b.x, arg_2.b.x))), arg_1.x), true);
    global1 = array<Struct_2, 7>();
    let var_3 = 25602u;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 7>();
    var var_0 = func_7(_wgslsmith_f_op_f32(f32(-1f) * -285f), vec3<bool>(!(u_input.c == u_input.c), true, true), func_6(~u_input.a.x, func_5(u_input.d.x > 38092u, global1[_wgslsmith_index_u32(func_1(false, Struct_1(2565f, u_input.d.wy, vec4<bool>(true, false, false, false)), 34000i), 7u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(284f, 546f, -1336f, 100f)))), Struct_2(vec2<f32>(-427f, 1698f), _wgslsmith_f_op_f32(1000f * -1000f))) >> (1u % 32u);
    let var_1 = ~(~vec3<u32>(1u, ~u_input.d.x, u_input.e.x) ^ u_input.d.yxx);
    let var_2 = u_input.d;
    global1 = array<Struct_2, 7>();
    global1 = array<Struct_2, 7>();
    var var_3 = 1085u <= ~abs(~_wgslsmith_mod_u32(var_2.x, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 1207i), vec2<i32>(12964i, u_input.c)), select(vec2<i32>(u_input.c, -30735i), vec2<i32>(1i, u_input.c), true)) ^ _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-39378i, u_input.c), vec2<i32>(1i, 58508i)), vec2<i32>(u_input.c, 29192i) ^ vec2<i32>(26900i, 26250i), max(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(-89909i, u_input.c))), _wgslsmith_sub_vec2_i32(vec2<i32>(-4472i, 1i), vec2<i32>(~5237i, -u_input.c))), 1536f, func_2(~(~vec4<u32>(var_1.x, var_1.x, 44261u, 25660u)), func_2(_wgslsmith_mod_vec4_u32(firstTrailingBit(var_2), u_input.d), func_6(~1u, Struct_2(vec2<f32>(1198f, -1701f), -319f)), true, vec3<f32>(_wgslsmith_f_op_f32(940f - -306f), _wgslsmith_f_op_f32(f32(-1f) * -393f), 197f)), true, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(849f, _wgslsmith_f_op_f32(-107f * 416f), _wgslsmith_div_f32(-1000f, -1000f))))).b.x);
}

