struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_3,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-130f, -46650i, false, vec2<bool>(true, true), 58849u), Struct_1(1019f, 23606i, false, vec2<bool>(false, true), 93456u), Struct_1(1007f, 0i, false, vec2<bool>(false, false), 4294967295u), Struct_1(-601f, i32(-2147483648), true, vec2<bool>(false, true), 5392u), Struct_1(1000f, -24179i, false, vec2<bool>(false, false), 4294967295u), Struct_1(-332f, -1i, false, vec2<bool>(true, true), 4294967295u), Struct_1(609f, 0i, true, vec2<bool>(true, true), 4294967295u), Struct_1(-352f, -1284i, false, vec2<bool>(true, false), 30900u), Struct_1(-1095f, -43052i, false, vec2<bool>(false, true), 4294967295u), Struct_1(-1063f, -6778i, false, vec2<bool>(false, false), 22141u), Struct_1(687f, -12493i, true, vec2<bool>(false, true), 25280u), Struct_1(791f, 1i, false, vec2<bool>(true, false), 73572u), Struct_1(-1047f, 1i, true, vec2<bool>(true, true), 21104u), Struct_1(-388f, 8545i, false, vec2<bool>(true, false), 1u), Struct_1(2050f, i32(-2147483648), false, vec2<bool>(true, false), 444u), Struct_1(901f, 19539i, true, vec2<bool>(false, true), 1u), Struct_1(-782f, 0i, false, vec2<bool>(false, true), 19426u), Struct_1(356f, 0i, false, vec2<bool>(true, true), 1u), Struct_1(-1508f, -10833i, false, vec2<bool>(false, false), 84193u), Struct_1(-198f, -8704i, true, vec2<bool>(false, false), 38785u), Struct_1(-716f, 2147483647i, false, vec2<bool>(true, true), 15181u), Struct_1(1000f, -16035i, false, vec2<bool>(false, false), 30348u), Struct_1(-964f, -1i, false, vec2<bool>(true, true), 131657u), Struct_1(-129f, 1i, true, vec2<bool>(false, true), 14578u), Struct_1(-327f, 2147483647i, true, vec2<bool>(true, false), 1u), Struct_1(333f, 1i, true, vec2<bool>(true, true), 1u), Struct_1(888f, 96308i, false, vec2<bool>(false, true), 1920u), Struct_1(-1143f, 2147483647i, false, vec2<bool>(false, false), 4553u), Struct_1(1037f, 39148i, true, vec2<bool>(false, true), 51858u), Struct_1(2912f, 20051i, false, vec2<bool>(false, false), 1742u));

var<private> global1: Struct_4;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-551f, 36461i, true, vec2<bool>(true, false), 110408u), Struct_1(-1402f, 20428i, false, vec2<bool>(false, true), 4294967295u), Struct_1(-296f, -44884i, false, vec2<bool>(false, true), 47305u), Struct_1(-1511f, -1i, true, vec2<bool>(true, true), 0u), Struct_1(1169f, -1i, true, vec2<bool>(true, true), 4294967295u), Struct_1(908f, 2147483647i, true, vec2<bool>(false, true), 8674u), Struct_1(228f, -14071i, true, vec2<bool>(true, true), 18082u), Struct_1(545f, i32(-2147483648), false, vec2<bool>(true, false), 1u));

var<private> global3: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1057f) * global1.c.a), select(!vec4<bool>(false, select(false, true, true), global1.c.d.x, false | global3.x), global1.c.b, select(vec4<bool>(global3.x, global1.d.b.c, !global1.a.b.d.x, true), vec4<bool>(global1.d.b.a <= global1.d.a.x, true || global3.x, global1.c.b.x, global1.e.x < global1.e.x), false)), global1.c.c, global1.c.d);
    var var_1 = vec2<bool>(global1.d.b.a == -351f, all(!var_0.d));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1483f, global1.c.a, var_0.a) * vec3<f32>(2552f, 579f, global1.c.a)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.e.x, global1.a.a.x, 1339f), vec3<f32>(global1.a.b.a, global1.a.a.x, -468f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.a.a), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1143f, 1000f, 844f))), true)))), global1.a.b, -2147483647i);
    var var_3 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.a.x)), var_2.b.a, _wgslsmith_f_op_f32(select(var_0.a, var_2.a.x, var_2.b.c)))), var_2.b, -1i), 64372u, global1.c, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_2.a), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.a.x, var_2.a.x, var_2.b.a), vec3<f32>(var_2.a.x, var_2.a.x, -260f)))))), global2[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(var_2.b.e, arg_0)) ^ _wgslsmith_mult_u32(~36071u, ~arg_0), 8u)], i32(-1i) * -45998i), vec3<f32>(_wgslsmith_f_op_f32(-global1.d.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.a + 386f) - _wgslsmith_f_op_f32(218f + -464f)), global1.e.x));
    let var_4 = max(_wgslsmith_mult_u32(arg_0, 1u), ~var_2.b.e & 44941u);
    return -14395i;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = global1.c.b.wwy;
    global0 = array<Struct_1, 30>();
    var var_1 = reverseBits((firstLeadingBit(vec4<u32>(global1.b, arg_2.e, arg_1.e, 1u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(28653u, 6038u, arg_1.e, arg_1.e), vec4<u32>(arg_2.e, 33412u, 2310u, arg_2.e), vec4<u32>(arg_2.e, arg_1.e, 0u, 0u))) ^ _wgslsmith_mult_vec4_u32(select(vec4<u32>(71344u, 34378u, arg_1.e, arg_1.e), vec4<u32>(global1.b, arg_1.e, u_input.a, global1.a.b.e), true), ~vec4<u32>(arg_2.e, arg_1.e, 4294967295u, 0u))) >> (vec4<u32>(arg_2.e, 1u, arg_2.e, _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_1.e), vec2<u32>(31420u, global1.d.b.e)), 1u)) % vec4<u32>(32u));
    var var_2 = Struct_4(global1.a, 34318u, global1.c, Struct_2(global1.d.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.b.a) + _wgslsmith_f_op_f32(sign(1531f))), func_2(_wgslsmith_mod_u32(global1.b, 59966u)), ~arg_2.b > ~u_input.b.x, arg_2.d, _wgslsmith_add_u32(39985u, global1.a.b.e) | ~6667u), -global1.c.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, 646f, -513f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-279f, arg_1.a, global1.a.b.a) + vec3<f32>(arg_1.a, arg_2.a, -1000f)) * vec3<f32>(arg_2.a, global1.a.b.a, global1.d.b.a)))));
    global1 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.c.a, arg_1.a, 124f), global1.a.a))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1572f, -339f)), ~arg_0.x, all(vec3<bool>(global3.x, false, false)), select(select(vec2<bool>(false, false), vec2<bool>(global3.x, var_0.x), global1.a.b.d.x), select(var_0.zz, var_0.yx, global3.x), select(vec2<bool>(true, false), vec2<bool>(false, arg_1.c), var_2.d.b.d)), ~_wgslsmith_add_u32(47476u, var_1.x)), ~19109i), reverseBits(~u_input.a), var_2.c, var_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global1.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(163f, var_2.a.a.x, -1289f), var_2.d.a)))))));
    return !select(global1.c.b, select(select(!vec4<bool>(global1.d.b.c, false, true, arg_2.d.x), select(vec4<bool>(var_2.a.b.d.x, global3.x, arg_2.d.x, false), vec4<bool>(arg_2.d.x, var_2.d.b.c, false, true), global1.a.b.c), select(global1.c.b, global1.c.b, true)), vec4<bool>(true, true, any(vec2<bool>(global1.a.b.d.x, arg_2.d.x)), global3.x || arg_1.c), vec4<bool>(false | var_0.x, false, any(vec2<bool>(true, var_2.c.d.x)), var_2.a.b.d.x)), all(select(!vec3<bool>(true, var_0.x, arg_2.d.x), select(var_2.c.b.zxy, global1.c.d, true), !global3.x)));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec4<bool>) -> vec2<f32> {
    let var_0 = Struct_3(-1154f, !global1.c.b, func_2(global1.d.b.e), vec3<bool>(global1.d.b.d.x, any(func_3(select(vec3<i32>(0i, arg_1.c, arg_1.c), vec3<i32>(u_input.b.x, -1i, global1.c.c), global1.c.b.x), Struct_1(-1107f, -2311i, global3.x, vec2<bool>(arg_1.b.d.x, false), u_input.a), global2[_wgslsmith_index_u32(4294967295u, 8u)])), all(vec4<bool>(any(vec4<bool>(true, false, global1.d.b.d.x, arg_3.x)), global1.a.c < 0i, arg_1.a.x == arg_1.a.x, true))));
    global2 = array<Struct_1, 8>();
    let var_1 = -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -global1.d.c, global1.d.c), vec3<i32>(arg_1.b.b, 0i, -(~global1.a.b.b)));
    global1 = Struct_4(arg_1, 1u, var_0, global1.d, arg_1.a);
    var var_2 = arg_2.zy;
    return _wgslsmith_f_op_vec2_f32(-arg_1.a.yz);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: vec3<bool>) -> vec2<i32> {
    global1 = arg_2;
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * 1671f), _wgslsmith_f_op_f32(step(arg_2.d.a.x, global1.a.a.x)), -769f, _wgslsmith_f_op_f32(step(arg_2.c.a, 2160f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1939f, 1554f, _wgslsmith_f_op_f32(-arg_2.e.x), global1.e.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.d.b.a, arg_0.x, 218f, -1195f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_2.e.x, -1000f, global1.d.a.x) * vec4<f32>(global1.c.a, 1292f, arg_2.c.a, global1.a.b.a)))))));
    let var_1 = Struct_4(arg_2.d, arg_2.d.b.e, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -572f), select(select(select(global1.c.b, global1.c.b, vec4<bool>(true, global1.d.b.d.x, false, true)), vec4<bool>(arg_2.c.d.x, true, global3.x, arg_2.a.b.c), arg_3.x), vec4<bool>(true, true, true, global1.b <= arg_1.x), var_0.x <= _wgslsmith_div_f32(-389f, -1428f)), 1i, select(vec3<bool>(!global3.x, false && arg_3.x, true), !(!vec3<bool>(arg_2.d.b.c, arg_2.a.b.d.x, global1.d.b.d.x)), arg_3)), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_2.a.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.d.b.a, arg_0.x, 1138f) * vec3<f32>(var_0.x, arg_0.x, 322f)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1213f, 100f, -209f) + arg_2.d.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.e.x, global1.a.a.x, arg_0.x))))), global2[_wgslsmith_index_u32(21343u, 8u)], arg_2.d.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1040f, _wgslsmith_f_op_f32(-arg_0.x), arg_2.d.a.x))));
    var var_2 = Struct_2(vec3<f32>(arg_2.d.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global1.d.b.a)))), _wgslsmith_f_op_f32(arg_2.e.x * global1.d.a.x)), Struct_1(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(var_0.x, Struct_2(arg_2.e, global1.d.b, global1.d.b.b), arg_1, vec4<bool>(global3.x, arg_2.d.b.c, var_1.a.b.d.x, false))).x)), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.d.c, 1i, var_1.d.b.b) >> (arg_1 % vec3<u32>(32u)), vec3<i32>(2706i, arg_2.d.c, arg_2.c.c))), !(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, 33694u), arg_1.xz) <= 34384u), !var_1.a.b.d, (reverseBits(598u) | ~arg_2.a.b.e) | firstLeadingBit(reverseBits(global1.d.b.e))), abs(var_1.a.b.b));
    var var_3 = Struct_4(global1.d, ~28248u, Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.b.a))), vec4<bool>(!var_2.b.d.x, false, arg_3.x, true), var_1.a.b.b, !(!(!vec3<bool>(var_1.a.b.d.x, false, true)))), Struct_2(vec3<f32>(_wgslsmith_div_f32(-1643f, _wgslsmith_f_op_f32(var_1.c.a + -680f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.a + var_2.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a.x + 180f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.a.x + -1180f)), -1i, true, vec2<bool>(true, !global3.x), arg_1.x), arg_2.c.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.yxx - var_0.yzx) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_vec2_f32(func_1(-2413f, Struct_2(vec3<f32>(648f, 713f, -908f), Struct_1(-1631f, u_input.b.x, false, vec2<bool>(false, true), global1.b), global1.d.b.b), vec3<u32>(u_input.a, 13526u, u_input.a), global1.c.b)).x, var_0.x, _wgslsmith_f_op_f32(abs(459f)))))));
    return min(u_input.b, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    let var_0 = !select(global1.c.d, global1.c.d, false);
    global0 = array<Struct_1, 30>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-939f * 288f), global1.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -819f) + _wgslsmith_f_op_f32(global1.c.a - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(486f, 990f)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(u_input.a, u_input.a, global3.x)), global1.d.b.b, func_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.e.xx) + _wgslsmith_f_op_vec2_f32(func_1(var_1.x, global1.a, vec3<u32>(4294967295u, global1.a.b.e, 43001u), vec4<bool>(var_0.x, var_0.x, var_0.x, false)))))), vec3<u32>(~global1.d.b.e, 0u, ~global1.d.b.e >> (_wgslsmith_dot_vec2_u32(vec2<u32>(24897u, 4294967295u), vec2<u32>(89044u, 58003u)) % 32u)), Struct_4(Struct_2(vec3<f32>(var_1.x, -1546f, -980f), Struct_1(var_1.x, -1i, global3.x, var_0.zx, 1u), -30145i), 1u, global1.c, global1.d, global1.a.a), !(!var_0)));
}

