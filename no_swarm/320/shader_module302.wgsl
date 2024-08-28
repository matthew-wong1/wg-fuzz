struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global1: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(1000f, Struct_1(true, vec2<u32>(26158u, 686u))), Struct_3(-940f, Struct_1(true, vec2<u32>(4294967295u, 0u))), Struct_3(662f, Struct_1(true, vec2<u32>(6039u, 0u))), Struct_3(913f, Struct_1(false, vec2<u32>(79920u, 37518u))), Struct_3(-126f, Struct_1(true, vec2<u32>(0u, 4294967295u))), Struct_3(1073f, Struct_1(true, vec2<u32>(60962u, 39288u))), Struct_3(1000f, Struct_1(false, vec2<u32>(4294967295u, 0u))), Struct_3(1259f, Struct_1(false, vec2<u32>(24155u, 4294967295u))), Struct_3(390f, Struct_1(false, vec2<u32>(1u, 68594u))), Struct_3(-1316f, Struct_1(true, vec2<u32>(4294967295u, 10086u))), Struct_3(-896f, Struct_1(false, vec2<u32>(4294967295u, 22188u))), Struct_3(-329f, Struct_1(false, vec2<u32>(0u, 11926u))), Struct_3(-638f, Struct_1(false, vec2<u32>(4123u, 11651u))), Struct_3(-441f, Struct_1(true, vec2<u32>(0u, 0u))), Struct_3(-1420f, Struct_1(true, vec2<u32>(35901u, 65644u))), Struct_3(-321f, Struct_1(false, vec2<u32>(9225u, 79795u))), Struct_3(-1379f, Struct_1(true, vec2<u32>(66763u, 0u))), Struct_3(2197f, Struct_1(false, vec2<u32>(3339u, 1u))), Struct_3(-443f, Struct_1(false, vec2<u32>(1u, 33577u))), Struct_3(482f, Struct_1(true, vec2<u32>(4294967295u, 18165u))), Struct_3(-1101f, Struct_1(false, vec2<u32>(4294967295u, 13866u))), Struct_3(1000f, Struct_1(true, vec2<u32>(4294967295u, 4294967295u))), Struct_3(-1553f, Struct_1(true, vec2<u32>(1u, 3576u))), Struct_3(919f, Struct_1(false, vec2<u32>(0u, 1u))), Struct_3(-863f, Struct_1(false, vec2<u32>(50640u, 4294967295u))), Struct_3(3216f, Struct_1(true, vec2<u32>(47696u, 0u))), Struct_3(232f, Struct_1(false, vec2<u32>(44870u, 21151u))), Struct_3(313f, Struct_1(false, vec2<u32>(74908u, 41540u))), Struct_3(-1284f, Struct_1(true, vec2<u32>(66252u, 0u))), Struct_3(-437f, Struct_1(true, vec2<u32>(4294967295u, 0u))), Struct_3(102f, Struct_1(false, vec2<u32>(0u, 1u))), Struct_3(-2169f, Struct_1(true, vec2<u32>(1u, 1532u))));

var<private> global2: vec2<bool>;

var<private> global3: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-525f, -220f, 185f, -570f), vec4<f32>(1000f, -979f, 1598f, 338f), vec4<f32>(-749f, 235f, -417f, 1898f), vec4<f32>(789f, -2001f, 946f, -1100f), vec4<f32>(454f, -1212f, 673f, -1000f), vec4<f32>(-559f, -1180f, -609f, 1000f), vec4<f32>(-920f, -668f, 601f, 704f), vec4<f32>(412f, -1000f, 507f, -335f), vec4<f32>(865f, -417f, -510f, 1219f), vec4<f32>(-170f, -1122f, -995f, 639f), vec4<f32>(265f, 1558f, 1000f, -1166f), vec4<f32>(-230f, -659f, -900f, -522f), vec4<f32>(204f, -1000f, -390f, 1699f), vec4<f32>(185f, -544f, -1182f, -432f), vec4<f32>(-1000f, -663f, 528f, -792f), vec4<f32>(-197f, 735f, 933f, -778f), vec4<f32>(2168f, 289f, -619f, 888f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_4) -> bool {
    global2 = vec2<bool>(-1i == (~(~u_input.a) ^ -u_input.a), arg_1.b.a);
    let var_0 = !(!vec2<bool>(true, any(vec3<bool>(global2.x, global2.x, true))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(abs(arg_0.a)), Struct_1(0i <= _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.c.x, -1i, u_input.b), -arg_2.c), arg_0.b.b));
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, _wgslsmith_f_op_f32(min(-110f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(891f, arg_1.a))))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 644f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.e.b.xz - vec2<f32>(-658f, arg_0.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1197f, arg_1.a) * arg_2.e.b.zz)))), select(!global0.wx, vec2<bool>(true, true | arg_0.b.a), true))));
    var_1 = arg_0;
    return arg_0.b.a;
}

fn func_2(arg_0: i32, arg_1: i32) -> u32 {
    global0 = vec4<bool>(all(global0.wxy), !any(vec3<bool>(global0.x, !global2.x, true)), true || func_3(global1[_wgslsmith_index_u32(~1u, 32u)], Struct_3(-381f, Struct_1(global0.x, vec2<u32>(0u, 1u))), Struct_4(21268i, vec2<i32>(arg_0, arg_0), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, arg_1, -44918i), vec3<i32>(u_input.b, 2147483647i, u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, arg_1, 0i, -19650i), vec4<i32>(-15275i, 2147483647i, arg_1, arg_0)), Struct_2(vec4<u32>(0u, 1u, 27084u, 1u), vec3<f32>(-642f, 135f, 1095f), false))), true & !(-1122f >= _wgslsmith_f_op_f32(trunc(1589f))));
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-849f, 1298f, 1469f) + vec3<f32>(1615f, 1005f, -435f)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-135f, -822f, -1566f)))))))));
    var var_1 = _wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(18217u, 12533u)), vec2<u32>(~4294967295u, 32454u)), 10560u);
    global2 = vec2<bool>(global0.x, !(_wgslsmith_sub_i32(u_input.c.x >> (54082u % 32u), ~(-1i)) >= u_input.c.x));
    let var_2 = !global0.xw;
    return ~min(0u, ~1u);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: bool) -> Struct_4 {
    global3 = array<vec4<f32>, 17>();
    var var_0 = arg_1.zy;
    let var_1 = Struct_4(26400i, u_input.c, vec3<i32>(u_input.b, _wgslsmith_sub_i32(-select(34048i, -2147483647i, true), abs(u_input.a)), min(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.b), -vec3<i32>(u_input.c.x, u_input.b, u_input.c.x)))), ~min(~(~vec4<i32>(u_input.b, u_input.a, 0i, -5666i)), min(vec4<i32>(u_input.a, -2147483647i, u_input.c.x, u_input.c.x), -vec4<i32>(u_input.c.x, u_input.b, -8615i, 1i))), Struct_2(~vec4<u32>(~arg_0.b.b.x, arg_0.b.b.x, 116577u ^ arg_0.b.b.x, arg_0.b.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 + vec3<f32>(var_0.x, arg_0.a, 463f)) - _wgslsmith_f_op_vec3_f32(arg_1 * _wgslsmith_f_op_vec3_f32(arg_1 - vec3<f32>(var_0.x, 348f, -1439f)))), true));
    let var_2 = abs(1i);
    let var_3 = true;
    return Struct_4(_wgslsmith_dot_vec2_i32(-min(var_1.d.zx, _wgslsmith_clamp_vec2_i32(var_1.b, u_input.c, var_1.b)), min(_wgslsmith_mult_vec2_i32(u_input.c, _wgslsmith_mod_vec2_i32(var_1.d.xx, var_1.b)), _wgslsmith_sub_vec2_i32(var_1.c.zy | var_1.c.zz, select(vec2<i32>(var_2, var_1.d.x), u_input.c, global2.x)))), vec2<i32>(~max(_wgslsmith_dot_vec3_i32(var_1.c, var_1.c), ~u_input.c.x), _wgslsmith_sub_i32(var_1.b.x ^ ~64720i, var_2)), var_1.d.ywx, vec4<i32>(var_1.c.x, (-60285i << (var_1.e.a.x % 32u)) >> (4294967295u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(min(var_2, 7663i), -51626i >> (var_1.e.a.x % 32u), _wgslsmith_sub_i32(var_2, 1i)), ~vec3<i32>(-1i, 62288i, -23492i) & vec3<i32>(0i, var_2, var_2)), var_1.a), Struct_2(var_1.e.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-994f, var_1.e.b.x, -957f) * var_1.e.b) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, arg_1.x, 682f), arg_1, global2.x))))), true & any(select(vec4<bool>(global2.x, false, true, arg_0.b.a), vec4<bool>(arg_0.b.a, arg_2, var_1.e.c, true), false))));
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = func_4(global1[_wgslsmith_index_u32((func_2(_wgslsmith_sub_i32(31233i, 2147483647i), -u_input.c.x) << (~1u % 32u)) << (0u % 32u), 32u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1599f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(578f, -443f)) - _wgslsmith_f_op_f32(939f + 1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-384f, 302f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-261f, 1388f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-573f + 651f) + _wgslsmith_f_op_f32(step(801f, -780f)))) == 1839f);
    let var_1 = 50642u & var_0.e.a.x;
    global2 = vec2<bool>(~var_0.e.a.x >= var_1, true);
    var var_2 = 4294967295u;
    var var_3 = Struct_2(max((select(vec4<u32>(var_1, 0u, var_1, var_0.e.a.x), var_0.e.a, global0.x) | var_0.e.a) & (vec4<u32>(var_0.e.a.x, var_1, var_1, var_0.e.a.x) ^ vec4<u32>(22921u, var_1, 1u, var_0.e.a.x)), ~var_0.e.a), var_0.e.b, !all(!(!global0.zz)));
    return arg_0 ^ (i32(-1i) * -(~(-1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 17>();
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -2027f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(-754f)))), (func_1(_wgslsmith_clamp_i32(-6345i, u_input.c.x, u_input.c.x)) > _wgslsmith_mult_i32(u_input.b, u_input.a)) == !(_wgslsmith_f_op_f32(abs(2843f)) == _wgslsmith_f_op_f32(trunc(1287f))), any(vec3<bool>(49673i == u_input.a, any(global0.zxx) | all(global0.xx), func_4(global1[_wgslsmith_index_u32(~1u, 32u)], vec3<f32>(-1205f, 2174f, -874f), true).e.c)));
    let var_1 = Struct_4(_wgslsmith_div_i32(_wgslsmith_mod_i32(~(-u_input.a), -2147483647i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(2147483647i, u_input.c.x) | u_input.b, -(2147483647i ^ u_input.a))), vec2<i32>(~(~(~u_input.c.x)), 17794i), reverseBits(reverseBits(select(vec3<i32>(u_input.a, u_input.b, -2038i), vec3<i32>(2147483647i, u_input.b, u_input.b), global0.x))) >> (~select(min(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4006u, 4294967295u, 1u)), vec3<u32>(1u, 1u, 1u), true) % vec3<u32>(32u)), _wgslsmith_clamp_vec4_i32(-_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(u_input.c.x, u_input.c.x, 69986i, 21767i)), vec4<i32>(18177i, u_input.a, 30397i, u_input.c.x)), ~select(vec4<i32>(-2147483647i, u_input.b, -13942i, u_input.a), countOneBits(vec4<i32>(-1i, 6354i, u_input.c.x, -9700i)), true), vec4<i32>(u_input.c.x, 35702i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, 6142i, -1i), vec4<i32>(-45834i, -2147483647i, -1i, -10371i)), 21041i), ~96544i)), func_4(Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1412f - -1336f), -348f)), Struct_1(any(vec4<bool>(global2.x, false, true, false)), abs(vec2<u32>(4294967295u, 0u)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(671f, 807f, -517f)), vec3<f32>(1f, 1f, 1f))))), true).e);
    var var_2 = vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -410f) >= func_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_1.e.a, var_1.e.a), 32u)], func_4(global1[_wgslsmith_index_u32(~1u, 32u)], vec3<f32>(-1119f, 150f, var_1.e.b.x), global2.x & true).e.b, true).e.b.x, global2.x, true);
    let var_3 = var_1.e.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(1u, 0u, ~var_1.e.a.x);
}

