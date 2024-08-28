struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 324f;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(i32(-2147483648)), Struct_1(-29414i), Struct_1(7636i), Struct_1(21201i), Struct_1(-31549i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(-1838i), Struct_1(-22662i), Struct_1(1i), Struct_1(0i), Struct_1(-1i), Struct_1(-1i), Struct_1(-1i), Struct_1(17355i), Struct_1(-29115i), Struct_1(0i), Struct_1(-30444i), Struct_1(-1i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(-27742i), Struct_1(4416i), Struct_1(1i), Struct_1(1i), Struct_1(1206i), Struct_1(67701i), Struct_1(-20742i), Struct_1(-1i), Struct_1(-1i));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec3<bool>, arg_3: bool) -> f32 {
    var var_0 = vec4<bool>(true, arg_1, false, countOneBits(71917i) >= min(-_wgslsmith_div_i32(0i, arg_0.a.a.a), -(~(-1i))));
    var var_1 = Struct_4(Struct_2(arg_0.a.a, arg_0.a.a, Struct_1(2147483647i), arg_0.b.c));
    let var_2 = !(!(!(!any(vec3<bool>(true, arg_3, arg_1)))));
    let var_3 = Struct_3(Struct_2(Struct_1(~firstLeadingBit(-2565i)), var_1.a.a, Struct_1(~max(1i, arg_0.b.a.a)), Struct_1(min(var_1.a.a.a, var_1.a.a.a) << (_wgslsmith_mod_u32(u_input.c.x, 124818u) % 32u))), Struct_2(Struct_1(-12917i), arg_0.b.d, Struct_1(~(-19684i)), global2[_wgslsmith_index_u32(countOneBits(u_input.d) & _wgslsmith_mult_u32(~1u, firstLeadingBit(u_input.d)), 30u)]), vec4<bool>(all(!arg_0.c.zx), any(!select(arg_0.c, arg_0.c, vec4<bool>(true, false, var_0.x, arg_2.x))), all(vec4<bool>(true, var_1.a.a.a <= 1i, true, true)), any(var_0.wxx)), 2613i, true);
    global2 = array<Struct_1, 30>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1659f - _wgslsmith_f_op_f32(floor(1498f))));
}

fn func_2(arg_0: i32) -> vec2<u32> {
    global2 = array<Struct_1, 30>();
    var var_0 = !global1.zy;
    global2 = array<Struct_1, 30>();
    var_0 = !select(!global1.xx, vec2<bool>(false, var_0.x), vec2<bool>(global1.x, true));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1431f, -183f, 311f) * vec3<f32>(-2095f, -326f, -172f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-232f, -1401f, -1294f) * vec3<f32>(629f, 469f, 317f)))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-522f - 1718f) - _wgslsmith_f_op_f32(sign(379f))), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.c.x, 30u)], global2[_wgslsmith_index_u32(u_input.b, 30u)], global2[_wgslsmith_index_u32(u_input.c.x, 30u)], Struct_1(arg_0)), Struct_2(Struct_1(arg_0), global2[_wgslsmith_index_u32(u_input.b, 30u)], global2[_wgslsmith_index_u32(u_input.d, 30u)], global2[_wgslsmith_index_u32(u_input.b, 30u)]), vec4<bool>(global1.x, true, global1.x, var_0.x), arg_0, var_0.x), all(vec4<bool>(global1.x, false, false, false)), select(vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, global1.x, false)), all(vec4<bool>(global1.x, false, true, false)))), -733f)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 305f) * _wgslsmith_div_f32(412f, 1000f)))), 768f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(302f, -551f, var_0.x)), -1012f), 746f))));
    return u_input.c;
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(~arg_1.x, 30u)];
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_mod_u32(~1u, min(~1u, _wgslsmith_sub_u32(u_input.b, 4294967295u)))), 30u)], Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(var_0.a, var_0.a, -14919i), i32(-1i) * -43915i, -var_0.a, countOneBits(var_0.a)), abs(vec4<i32>(arg_2.x, var_0.a, -1i, arg_2.x)))), Struct_1(countOneBits(-2147483647i)), Struct_1(_wgslsmith_mod_i32(abs(var_0.a) | countOneBits(-2746i), 2147483647i)));
    var var_2 = ~select(_wgslsmith_add_vec3_u32(vec3<u32>(13882u, 1u, arg_1.x), ~vec3<u32>(0u, 36249u, arg_0)), ~(~vec3<u32>(49140u, u_input.c.x, 93761u)), vec3<bool>(true & global1.x, arg_3, false || arg_3)) | ~_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(arg_0, 0u, 7805u)), ~min(vec3<u32>(4294967295u, arg_0, arg_0), vec3<u32>(arg_0, 1u, arg_1.x)));
    var var_3 = Struct_1(-2147483647i);
    var var_4 = Struct_3(Struct_2(Struct_1(var_1.c.a), Struct_1(-2147483647i >> (~arg_0 % 32u)), global2[_wgslsmith_index_u32(~firstTrailingBit(arg_1.x & var_2.x), 30u)], Struct_1(var_1.c.a)), Struct_2(Struct_1(-13256i), global2[_wgslsmith_index_u32(select(1u, 13638u, _wgslsmith_f_op_f32(step(-1630f, 1261f)) >= _wgslsmith_f_op_f32(max(2237f, 1154f))), 30u)], global2[_wgslsmith_index_u32(25076u, 30u)], Struct_1(11532i)), vec4<bool>(all(vec3<bool>(false, all(vec3<bool>(global1.x, false, arg_3)), true)), all(!select(vec3<bool>(true, arg_3, global1.x), vec3<bool>(true, true, true), vec3<bool>(global1.x, false, true))), !all(global1.yx), global1.x), var_1.d.a, true);
    return Struct_1(_wgslsmith_dot_vec3_i32(arg_2.yxx, select(arg_2.wxz, arg_2.yzy, arg_3)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: u32) -> vec4<u32> {
    let var_0 = !vec4<bool>(!global1.x, all(select(!vec3<bool>(true, global1.x, true), !vec3<bool>(false, false, global1.x), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, global1.x, true)))), true, false);
    global1 = vec3<bool>(true, global1.x || !global1.x, global1.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(arg_0, Struct_1(-7325i), global2[_wgslsmith_index_u32(arg_3, 30u)], Struct_1(60037i)), Struct_2(Struct_1(-19242i), Struct_1(1i), Struct_1(-16200i), Struct_1(arg_0.a)), var_0, arg_2.a.b.a, false), false, vec3<bool>(true, false, global1.x), any(var_0.xy))) + arg_1.x)));
    global2 = array<Struct_1, 30>();
    let var_2 = arg_1;
    return ~(~(vec4<u32>(~u_input.a, ~arg_3, 51437u, 19564u) | vec4<u32>(abs(arg_3), countOneBits(46147u), reverseBits(85574u), max(1u, arg_3))));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = ~vec3<u32>(u_input.b >> (u_input.c.x % 32u), min(~0u, 1u), 27604u);
    let var_1 = ~66541u;
    let var_2 = ~arg_1.a.a;
    global2 = array<Struct_1, 30>();
    let var_3 = select(var_0.x, 83480u, global1.x);
    return arg_1;
}

fn func_7(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: bool) -> vec2<f32> {
    global2 = array<Struct_1, 30>();
    let var_0 = Struct_4(Struct_2(func_6(vec4<u32>(u_input.d, ~0u, _wgslsmith_add_u32(1u, u_input.b), 27532u), Struct_2(func_4(60117u, u_input.c, vec4<i32>(arg_1.c.a, 1i, -11755i, 2147483647i), global1.x), global2[_wgslsmith_index_u32(u_input.c.x, 30u)], Struct_1(2147483647i), Struct_1(arg_1.a.a))).a, global2[_wgslsmith_index_u32(u_input.a, 30u)], func_6(vec4<u32>(max(1u, u_input.b), u_input.a, ~u_input.a, u_input.a), arg_1).b, Struct_1(arg_1.b.a)));
    let var_1 = arg_1.d.a << (~_wgslsmith_mod_u32(4294967295u, ~select(55879u, 40385u, true)) % 32u);
    let var_2 = Struct_4(arg_1);
    var var_3 = var_0;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))) + _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(abs(arg_2))));
}

fn func_1() -> Struct_2 {
    global2 = array<Struct_1, 30>();
    var var_0 = _wgslsmith_f_op_vec2_f32(func_7(_wgslsmith_f_op_f32(f32(-1f) * -869f), func_6(func_5(func_4(_wgslsmith_sub_u32(u_input.b, 1u), func_2(-2147483647i), vec4<i32>(-29848i, 14665i, 5600i, -2147483647i), true), vec4<f32>(141f, _wgslsmith_f_op_f32(183f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -130f), -398f), Struct_4(Struct_2(Struct_1(-1i), global2[_wgslsmith_index_u32(u_input.d, 30u)], global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)])), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 36812u, 34386u, u_input.b), vec4<u32>(u_input.c.x, 0u, 4294967295u, 4294967295u)), ~vec4<u32>(55138u, u_input.b, 0u, u_input.b))), Struct_2(Struct_1(~2147483647i), func_4(~36818u, ~u_input.c, vec4<i32>(1i, 1i, 1i, 1i), true), Struct_1(_wgslsmith_add_i32(26543i, 0i)), global2[_wgslsmith_index_u32(0u, 30u)])), -834f, global1.x | all(select(!vec4<bool>(true, global1.x, false, true), !vec4<bool>(global1.x, global1.x, false, global1.x), !vec4<bool>(global1.x, global1.x, false, global1.x)))));
    global1 = vec3<bool>(!(true && ((global1.x | global1.x) & (var_0.x < var_0.x))), true, select(any(vec2<bool>(true, global1.x)), false, all(!vec4<bool>(false, true, global1.x, true))) | true);
    var var_1 = func_6(vec4<u32>(u_input.c.x, 17680u >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.d, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(23993u, 0u, u_input.c.x), vec3<u32>(u_input.a, u_input.b, 4294967295u))) % 32u), 0u, _wgslsmith_add_u32(min(4294967295u, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(59851u, 65928u))), 4294967295u)), Struct_2(global2[_wgslsmith_index_u32(11452u, 30u)], func_4(~29633u | ~u_input.d, vec2<u32>(u_input.c.x, _wgslsmith_mod_u32(u_input.a, u_input.d)), -vec4<i32>(-37171i, -1i, -2147483647i, 21967i), global1.x), func_4(21040u, u_input.c | u_input.c, vec4<i32>(-2147483647i << (u_input.c.x % 32u), ~0i, firstLeadingBit(1i), i32(-1i) * -15323i), any(vec3<bool>(false, global1.x, true))), Struct_1(-30555i)));
    let var_2 = func_6(countOneBits(abs(func_5(var_1.d, _wgslsmith_div_vec4_f32(vec4<f32>(894f, var_0.x, -117f, var_0.x), vec4<f32>(491f, var_0.x, var_0.x, -1110f)), Struct_4(Struct_2(global2[_wgslsmith_index_u32(57720u, 30u)], Struct_1(var_1.a.a), Struct_1(-31118i), Struct_1(2147483647i))), 0u | u_input.d))), Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.c.a, 0i), vec2<i32>(var_1.b.a, var_1.a.a))), global2[_wgslsmith_index_u32(u_input.c.x, 30u)], var_1.d, func_6(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 82199u, u_input.b, u_input.d), vec4<u32>(u_input.c.x, u_input.b, 68998u, 54156u)), func_6(select(vec4<u32>(36025u, 19543u, u_input.b, u_input.a), vec4<u32>(34766u, 1u, u_input.d, 55246u), global1.x), Struct_2(global2[_wgslsmith_index_u32(66433u, 30u)], global2[_wgslsmith_index_u32(10058u, 30u)], Struct_1(var_1.d.a), global2[_wgslsmith_index_u32(u_input.d, 30u)]))).c));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec2_i32(-max(vec2<i32>(2147483647i, -1i), -vec2<i32>(44931i, 2147483647i)), reverseBits(vec2<i32>(1i, _wgslsmith_add_i32(-1i, 0i))));
    let var_1 = func_1();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(Struct_1(var_0), global2[_wgslsmith_index_u32(~0u, 30u)], func_6(vec4<u32>(u_input.d, u_input.d, 91359u, 1u), var_1).b, global2[_wgslsmith_index_u32(abs(u_input.b), 30u)]), Struct_2(func_4(u_input.a, u_input.c, vec4<i32>(1i, -15667i, var_1.d.a, var_0), false), func_1().d, func_4(1u, vec2<u32>(u_input.a, u_input.d), vec4<i32>(-43134i, var_0, var_0, -2147483647i), false), Struct_1(var_1.d.a)), !vec4<bool>(global1.x, global1.x, global1.x, false), var_0 & var_0, !all(vec4<bool>(global1.x, global1.x, false, global1.x))), global1.x, vec3<bool>(global1.x, global1.x & true, abs(39138i) <= -var_0), global1.x)));
    let var_2 = func_1().b;
    global1 = !(!select(!select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, false), global1.x), vec3<bool>(true, select(true, global1.x, true), !global1.x), !select(vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(min(select(min(abs(vec4<i32>(-2147483647i, var_0, var_2.a, 35458i)), min(vec4<i32>(var_0, -1i, var_0, -23911i), vec4<i32>(-148i, -2147483647i, var_0, 0i))), countOneBits(vec4<i32>(var_1.b.a, -1i, var_0, var_1.c.a) >> (vec4<u32>(u_input.a, u_input.a, 51999u, 4294967295u) % vec4<u32>(32u))), !(!vec4<bool>(global1.x, true, global1.x, true))), select(vec4<i32>(_wgslsmith_add_i32(-2860i, 0i), var_1.b.a, var_0, 2147483647i), firstLeadingBit(vec4<i32>(1i, -2147483647i, var_1.a.a, var_0) & vec4<i32>(0i, var_0, 57210i, var_1.b.a)), true)), vec3<f32>(_wgslsmith_f_op_f32(-1f), 327f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1350f - -381f), _wgslsmith_f_op_f32(round(252f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -1713f)))), _wgslsmith_f_op_f32(select(-596f, -1397f, true)))), _wgslsmith_mod_vec2_u32(reverseBits(max(vec2<u32>(31399u, u_input.a), u_input.c)) ^ min(~vec2<u32>(4294967295u, 0u), u_input.c), ~_wgslsmith_sub_vec2_u32(func_2(-2147483647i), ~vec2<u32>(12750u, u_input.d))), -1130f);
}

