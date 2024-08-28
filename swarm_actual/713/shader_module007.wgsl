struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 2>;

var<private> global2: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(true, 0u, Struct_2(-29245i, -19256i, false, -21673i, false), vec4<bool>(true, false, false, false)), Struct_3(true, 0u, Struct_2(i32(-2147483648), 2147483647i, true, 2147483647i, false), vec4<bool>(true, false, false, true)), Struct_3(false, 1u, Struct_2(18418i, i32(-2147483648), false, -2278i, false), vec4<bool>(true, true, true, true)), Struct_3(false, 84692u, Struct_2(i32(-2147483648), -50812i, true, i32(-2147483648), false), vec4<bool>(true, true, false, false)), Struct_3(false, 47829u, Struct_2(i32(-2147483648), 0i, false, 1i, false), vec4<bool>(false, true, true, false)), Struct_3(true, 40382u, Struct_2(1215i, 54054i, true, 0i, false), vec4<bool>(true, true, true, true)), Struct_3(true, 0u, Struct_2(1i, 0i, true, i32(-2147483648), false), vec4<bool>(false, false, false, false)), Struct_3(false, 1u, Struct_2(-66942i, 50285i, false, 25695i, false), vec4<bool>(false, false, true, false)), Struct_3(true, 65520u, Struct_2(10394i, 1i, true, 0i, true), vec4<bool>(true, false, true, true)));

var<private> global3: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(15172i, 14066i, true, 10139i, false), Struct_2(i32(-2147483648), -1i, false, 6289i, false), Struct_2(2147483647i, 1i, true, -2181i, true), Struct_2(-1i, 10338i, true, 9509i, false), Struct_2(-18669i, 0i, true, 0i, true), Struct_2(2147483647i, 0i, true, 27807i, true), Struct_2(0i, -55750i, true, 11358i, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    global2 = array<Struct_3, 9>();
    let var_0 = _wgslsmith_mult_vec2_i32(~vec2<i32>(min(i32(-1i) * -9998i, u_input.a), u_input.a), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(~u_input.a, -u_input.a), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(-2147483647i, u_input.c)), min(vec2<i32>(u_input.c, u_input.a), vec2<i32>(u_input.a, u_input.c))))));
    global2 = array<Struct_3, 9>();
    let var_1 = Struct_4(Struct_1(any(select(!vec3<bool>(global0.a, global0.a, global0.a), select(vec3<bool>(global0.a, global0.a, false), vec3<bool>(true, global0.a, false), true), !vec3<bool>(global0.a, true, global0.a))), ~(~(~53468u)), _wgslsmith_mod_vec3_u32(min(~u_input.d.yxw, global0.c), vec3<u32>(1u | u_input.d.x, u_input.b.x, 2533u)), vec2<u32>(global0.b, u_input.b.x >> (~11555u % 32u))), Struct_1(any(vec3<bool>(35823u <= global0.c.x, global0.a, u_input.b.x != global0.c.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~23124u, ~1u), vec3<u32>(global0.d.x, u_input.d.x << (22595u % 32u), countOneBits(global0.d.x))), vec3<u32>(~u_input.b.x, abs(64035u), u_input.b.x) >> (vec3<u32>(min(u_input.e, 4294967295u), ~global0.c.x, 4294967295u) % vec3<u32>(32u)), vec2<u32>(1u, 0u)));
    var var_2 = Struct_4(var_1.b, var_1.b);
    return reverseBits(global0.c.x & ~1u);
}

fn func_2(arg_0: Struct_3) -> f32 {
    global0 = Struct_1(global0.a, u_input.d.x, _wgslsmith_div_vec3_u32(u_input.d.yyz, firstLeadingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0.b, 4294967295u, 35125u), ~u_input.d.xxy))), u_input.b);
    global0 = Struct_1(false, 4294967295u, vec3<u32>(min(select(u_input.e, 80671u, arg_0.d.x || global0.a), ~4294967295u), select(~arg_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 6223u, 67854u), vec4<u32>(22414u, arg_0.b, 59043u, arg_0.b)), !arg_0.a), _wgslsmith_add_u32(arg_0.b, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-183f, global1[_wgslsmith_index_u32(global0.d.x, 2u)], -1000f, global1[_wgslsmith_index_u32(59590u, 2u)]) - vec4<f32>(108f, global1[_wgslsmith_index_u32(u_input.e, 2u)], -275f, global1[_wgslsmith_index_u32(41775u, 2u)]))))), reverseBits(max(global0.c.yz | u_input.b, firstLeadingBit(~u_input.b))));
    global3 = array<Struct_2, 7>();
    let var_0 = global3[_wgslsmith_index_u32(~1u, 7u)];
    var var_1 = arg_0.c;
    return _wgslsmith_f_op_f32(f32(-1f) * -1568f);
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: Struct_1) -> Struct_4 {
    global3 = array<Struct_2, 7>();
    let var_0 = Struct_3(all(select(select(arg_1.c, arg_1.c, !vec3<bool>(arg_2.a, arg_2.a, false)), arg_1.c, any(select(vec3<bool>(true, arg_2.a, global0.a), arg_1.c, true)))), arg_2.b, global3[_wgslsmith_index_u32((24438u >> (reverseBits(~global0.c.x) % 32u)) >> (func_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global0.d.x, 2u)], -460f, -420f, global1[_wgslsmith_index_u32(50262u, 2u)]), vec4<f32>(-1268f, -181f, -357f, arg_0))))) % 32u), 7u)], !select(vec4<bool>(all(arg_1.c.zz), true, true || arg_2.a, arg_1.a.a.a), select(select(vec4<bool>(true, true, true, false), vec4<bool>(arg_1.c.x, global0.a, arg_2.a, true), arg_1.a.a.a), vec4<bool>(false, false, false, true), true), vec4<bool>(true, all(vec3<bool>(false, true, arg_2.a)), true, false)));
    global2 = array<Struct_3, 9>();
    global2 = array<Struct_3, 9>();
    global0 = Struct_1(false, var_0.b, vec3<u32>(max(1u, var_0.b) ^ abs(11920u), abs(var_0.b), 82408u), vec2<u32>(4294967295u, 16968u & arg_1.b.x));
    return arg_1.a;
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> Struct_1 {
    global3 = array<Struct_2, 7>();
    let var_0 = func_4(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_f_op_f32(func_2(Struct_3(true, global0.b ^ 0u, Struct_2(u_input.a, u_input.a, false, -1i, true), !vec4<bool>(false, false, global0.a, arg_1.b.a))))), Struct_5(Struct_4(Struct_1(!global0.a, reverseBits(u_input.d.x), reverseBits(arg_1.b.c), vec2<u32>(global0.d.x, arg_0)), arg_1.a), arg_1.a.c, !vec3<bool>(false, true, !global0.a)), Struct_1(true, 4294967295u, u_input.d.wxz, abs(_wgslsmith_div_vec2_u32(u_input.d.zz, arg_1.a.d))));
    let var_1 = Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, u_input.c) ^ vec2<i32>(0i, -105649i)), countOneBits(vec2<i32>(-2147483647i, u_input.c))), ~(-vec2<i32>(u_input.a, 42371i) >> (~global0.d % vec2<u32>(32u)))), 0i, true, max(374i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -23032i), vec2<i32>(2147483647i, u_input.c))) << (var_0.a.b % 32u), any(vec4<bool>(true, all(select(vec4<bool>(global0.a, global0.a, arg_1.a.a, true), vec4<bool>(arg_1.b.a, global0.a, global0.a, var_0.a.a), vec4<bool>(arg_1.a.a, arg_1.b.a, var_0.b.a, true))), false, true)));
    let var_2 = Struct_2(~_wgslsmith_mod_i32(abs(~var_1.a), -2147483647i), -2147483647i, arg_1.b.a, -_wgslsmith_sub_i32(abs(~var_1.d), _wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, 32885i), u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.e, 2u)], global1[_wgslsmith_index_u32(1u, 2u)]))) * _wgslsmith_f_op_f32(f32(-1f) * -187f)) > _wgslsmith_f_op_f32(f32(-1f) * -799f));
    let var_3 = Struct_5(func_4(global1[_wgslsmith_index_u32(var_0.a.c.x, 2u)], Struct_5(var_0, vec3<u32>(countOneBits(4294967295u), arg_0, _wgslsmith_sub_u32(global0.d.x, global0.d.x)), !(!vec3<bool>(var_2.e, var_0.b.a, arg_1.b.a))), func_4(-378f, Struct_5(func_4(-2159f, Struct_5(Struct_4(var_0.a, var_0.b), vec3<u32>(global0.c.x, u_input.d.x, 4294967295u), vec3<bool>(true, var_2.c, true)), var_0.b), u_input.d.yww, vec3<bool>(true, var_2.c, var_0.b.a)), func_4(1405f, Struct_5(Struct_4(Struct_1(true, 16065u, arg_1.a.c, var_0.b.c.zy), Struct_1(false, arg_0, vec3<u32>(7349u, 1004u, var_0.b.d.x), global0.d)), vec3<u32>(4294967295u, global0.b, u_input.d.x), vec3<bool>(var_0.a.a, true, global0.a)), func_4(global1[_wgslsmith_index_u32(1u, 2u)], Struct_5(var_0, vec3<u32>(0u, 0u, 36534u), vec3<bool>(var_1.c, arg_1.b.a, arg_1.a.a)), arg_1.a).a).a).a), abs(~global0.c), vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 2u)] == 1804f, false, all(vec4<bool>(-1072f <= global1[_wgslsmith_index_u32(1u, 2u)], all(vec4<bool>(false, false, var_0.b.a, var_2.e)), var_0.a.a, !global0.a))));
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(25676u, 2u)])), Struct_5(Struct_4(func_4(_wgslsmith_f_op_f32(f32(-1f) * -620f), var_3, Struct_1(false, 9428u, arg_1.b.c, var_0.a.d)).a, arg_1.a), vec3<u32>(_wgslsmith_mult_u32(30855u, arg_1.b.d.x) & _wgslsmith_clamp_u32(arg_1.b.d.x, 1u, var_0.b.d.x), abs(71019u), ~(~var_3.b.x)), vec3<bool>(select(any(vec4<bool>(arg_1.b.a, false, arg_1.a.a, true)), u_input.a >= -2147483647i, all(vec2<bool>(true, true))), var_0.a.a, var_0.b.a)), Struct_1(arg_1.b.a, 88196u, _wgslsmith_div_vec3_u32(arg_1.a.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 30118u, u_input.e), global0.c, var_0.a.c) << (vec3<u32>(1u, 4294967295u, 22761u) % vec3<u32>(32u))), _wgslsmith_clamp_vec2_u32((vec2<u32>(63836u, 1u) | vec2<u32>(22313u, global0.c.x)) & func_4(global1[_wgslsmith_index_u32(var_0.b.d.x, 2u)], var_3, var_3.a.b).b.d, select(vec2<u32>(0u, global0.b), var_3.a.b.d, select(vec2<bool>(var_3.a.b.a, true), vec2<bool>(false, var_0.a.a), vec2<bool>(true, var_2.e))), ~u_input.b))).b;
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_2 {
    global2 = array<Struct_3, 9>();
    var var_0 = select(select(!select(select(arg_0.c.yx, arg_1.d.wx, global0.a), arg_0.c.yx, arg_0.c.zy), !select(select(vec2<bool>(true, arg_1.c.c), vec2<bool>(true, arg_0.a.b.a), arg_0.c.zy), arg_1.d.wz, arg_1.d.zx), !arg_1.d.yz), arg_0.c.zy, arg_1.d.zw);
    var_0 = !select(!vec2<bool>(global0.a, !arg_1.d.x), vec2<bool>(!(false & global0.a), var_0.x), select(vec2<bool>(true, !var_0.x), vec2<bool>(true, !global0.a), true));
    var_0 = vec2<bool>(true, arg_0.a.a.a);
    let var_1 = vec4<bool>(var_0.x & false, false, !any(arg_1.d.yz), ~abs(-9537i) >= reverseBits(u_input.a));
    return Struct_2(~u_input.a | -13529i, u_input.a, true, arg_1.c.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1439f, _wgslsmith_f_op_f32(max(-879f, -1095f)))) > global1[_wgslsmith_index_u32(global0.b, 2u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a;
    let var_1 = u_input.c;
    var var_2 = -26776i;
    var var_3 = func_5(Struct_5(Struct_4(Struct_1(global0.c.x < 4294967295u, 55910u, ~global0.c, u_input.d.wx >> (vec2<u32>(4294967295u, global0.d.x) % vec2<u32>(32u))), func_1(_wgslsmith_mod_u32(4294967295u, 1u), Struct_4(Struct_1(false, global0.c.x, vec3<u32>(u_input.e, 9338u, u_input.b.x), global0.d), Struct_1(true, u_input.b.x, u_input.d.xyw, u_input.b)))), vec3<u32>(_wgslsmith_sub_u32(global0.b, 4294967295u), ~_wgslsmith_add_u32(4294967295u, u_input.d.x), (4294967295u >> (global0.b % 32u)) ^ u_input.b.x), !vec3<bool>(!global0.a, select(false, global0.a, false), true)), Struct_3(!(!global0.a), u_input.d.x, Struct_2((u_input.a ^ u_input.c) ^ ~var_1, abs(28355i), true, ~abs(var_1), false), select(select(!vec4<bool>(global0.a, global0.a, global0.a, global0.a), vec4<bool>(true, global0.a, true, global0.a), false), vec4<bool>(global0.a, u_input.a >= u_input.c, global0.a, global0.a), _wgslsmith_clamp_u32(4294967295u, 74100u, u_input.d.x) != _wgslsmith_mod_u32(u_input.b.x, 1u))), global0.c);
    var var_4 = global3[_wgslsmith_index_u32(0u, 7u)];
    let var_5 = select(vec3<i32>(-1i) * -(vec3<i32>(3332i, 18044i, 1i) | _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, var_4.d, var_1), vec3<i32>(u_input.c, 2147483647i, -17928i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(~(~(-1i)), ~var_4.b, var_1), -firstTrailingBit(vec3<i32>(var_4.d, u_input.a, -2147483647i) << (u_input.d.yzx % vec3<u32>(32u))), vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(36629i, 45921i), vec2<i32>(var_1, -6397i)), u_input.a, _wgslsmith_mult_i32(1i, 53404i))), select(2147483647i, var_3.d, false) == ~35606i);
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(min(4294967295u, 126721u), 2u)], _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global0.c.x, 2u)], 1771f, global1[_wgslsmith_index_u32(global0.c.x, 2u)], global1[_wgslsmith_index_u32(u_input.e, 2u)]), vec4<f32>(-644f, global1[_wgslsmith_index_u32(0u, 2u)], 325f, global1[_wgslsmith_index_u32(0u, 2u)])))), vec4<f32>(871f, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.b, 58750u), 2u)], _wgslsmith_f_op_f32(step(-137f, global1[_wgslsmith_index_u32(u_input.d.x, 2u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(5906u, 2u)] * 841f)), any(!vec2<bool>(true, var_3.e)))))), vec4<i32>(var_5.x, ~61813i, _wgslsmith_mod_i32(_wgslsmith_div_i32(var_3.a, var_1), var_3.d), firstLeadingBit(u_input.c)) ^ vec4<i32>(-u_input.c, _wgslsmith_mod_i32(-var_4.a, var_1), max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, -44191i, 80605i, var_1), vec4<i32>(u_input.a, -20855i, var_3.b, 0i)), func_5(Struct_5(Struct_4(Struct_1(false, 4294967295u, u_input.d.yzx, u_input.d.wz), Struct_1(true, global0.d.x, vec3<u32>(89159u, 32603u, 65908u), vec2<u32>(u_input.d.x, 4294967295u))), u_input.d.zwy, vec3<bool>(var_3.e, global0.a, var_3.e)), global2[_wgslsmith_index_u32(u_input.d.x, 9u)], global0.c).a), ~(~u_input.a)), ~(~0u), 34917u);
}

