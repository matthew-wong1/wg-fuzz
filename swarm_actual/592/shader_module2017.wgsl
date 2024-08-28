struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(i32(-2147483648), Struct_1(73835u, -26019i), Struct_1(0u, -23181i), vec3<bool>(false, true, false));

var<private> global1: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(i32(-2147483648), Struct_1(0u, -61987i), Struct_1(18046u, 0i), vec3<bool>(true, false, true)), Struct_3(10579i, Struct_1(33934u, -80753i), Struct_1(47227u, -1i), vec3<bool>(false, true, false)), Struct_3(i32(-2147483648), Struct_1(4566u, 31986i), Struct_1(7177u, 2147483647i), vec3<bool>(true, true, true)), Struct_3(2147483647i, Struct_1(74675u, 12762i), Struct_1(4294967295u, i32(-2147483648)), vec3<bool>(false, false, true)), Struct_3(-35697i, Struct_1(4294967295u, i32(-2147483648)), Struct_1(56790u, -18504i), vec3<bool>(true, true, false)), Struct_3(-3499i, Struct_1(13750u, 17792i), Struct_1(20492u, 2147483647i), vec3<bool>(false, false, true)), Struct_3(1i, Struct_1(10743u, -1337i), Struct_1(29389u, 14889i), vec3<bool>(false, false, false)), Struct_3(-15124i, Struct_1(14336u, 1i), Struct_1(1u, 0i), vec3<bool>(true, false, false)), Struct_3(-6365i, Struct_1(1u, -35238i), Struct_1(20740u, -1i), vec3<bool>(true, false, true)), Struct_3(1i, Struct_1(0u, 60901i), Struct_1(1u, 6002i), vec3<bool>(true, false, false)), Struct_3(-4554i, Struct_1(4294967295u, 1i), Struct_1(4294967295u, 26973i), vec3<bool>(false, false, true)), Struct_3(34905i, Struct_1(4294967295u, 1i), Struct_1(0u, 29507i), vec3<bool>(false, false, true)), Struct_3(i32(-2147483648), Struct_1(114638u, 1i), Struct_1(20326u, 7763i), vec3<bool>(true, false, true)), Struct_3(-11404i, Struct_1(4294967295u, 8165i), Struct_1(19335u, 1i), vec3<bool>(true, false, false)), Struct_3(-1i, Struct_1(11185u, 28300i), Struct_1(50626u, 18340i), vec3<bool>(false, false, true)));

var<private> global2: vec4<f32>;

var<private> global3: i32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = reverseBits(~vec2<u32>(abs(4294967295u), 4294967295u));
    global1 = array<Struct_3, 15>();
    let var_1 = Struct_3(min(arg_0, ~2147483647i), global0.b, Struct_1(global0.c.a, global0.c.b), !(!global0.d));
    let var_2 = true;
    global3 = -_wgslsmith_mult_i32(_wgslsmith_clamp_i32(~countOneBits(arg_0), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(arg_0, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-17960i, -2147483647i, arg_0, global0.a), _wgslsmith_add_vec4_i32(vec4<i32>(1i, -17228i, 26913i, -18671i), vec4<i32>(global0.a, global0.b.b, 28165i, -1i)))), min(-1i, -(global0.a | -56766i)));
    return 33210i;
}

fn func_3() -> f32 {
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(345f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(502f + -1000f)), 239f) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1273f, global2.x, global2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1751f, global2.x, 1000f, -968f) - vec4<f32>(global2.x, -1430f, global2.x, global2.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(503f, -242f, global2.x, global2.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -497f, 180f)) * _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 1738f, 1000f, 1253f), vec4<f32>(global2.x, -1000f, global2.x, global2.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -325f, global2.x, -757f) + vec4<f32>(-611f, global2.x, 1000f, -1626f))))));
    var var_0 = 4294967295u;
    let var_1 = Struct_2(2147483647i, vec2<bool>(!(true || !global0.d.x), global0.d.x), _wgslsmith_dot_vec2_u32(u_input.a.yz, select(~vec2<u32>(global0.c.a, 24849u), max(vec2<u32>(1170u, u_input.a.x), u_input.a.zx), global0.d.x) ^ u_input.a.zz));
    let var_2 = Struct_3(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_1.a, global0.a), vec3<i32>(global0.b.b, -15488i, var_1.a))), global0.c, global0.b, global0.d);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1599f, 1876f, -291f) * vec4<f32>(global2.x, global2.x, global2.x, 661f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(625f - global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x)), -1052f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, 206f, 298f, global2.x), vec4<f32>(655f, global2.x, -571f, global2.x)))) + vec4<f32>(_wgslsmith_f_op_f32(round(-1244f)), _wgslsmith_div_f32(global2.x, -878f), _wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(abs(-480f))))));
    return -859f;
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    global1 = array<Struct_3, 15>();
    var var_0 = arg_3.b;
    let var_1 = -(~vec4<i32>(arg_0.c.b, arg_3.c.b, arg_3.c.b, func_2(-5194i) & abs(var_0.b)));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(2050f, _wgslsmith_f_op_f32(1345f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(378f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x))));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) - var_2), _wgslsmith_div_f32(-438f, 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1201f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -524f)))))));
    return Struct_1(~select(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c.a, 69112u, 59336u, var_0.a), reverseBits(vec4<u32>(38329u, arg_3.b.a, arg_3.b.a, arg_0.c.a))), firstTrailingBit(_wgslsmith_mult_u32(global0.b.a, var_0.a)), arg_0.d.x), i32(-1i) * -1i);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global0 = global1[_wgslsmith_index_u32(arg_0.a ^ ~global0.c.a, 15u)];
    global0 = Struct_3(~_wgslsmith_mod_i32(-arg_0.b, _wgslsmith_div_i32(-global0.c.b, _wgslsmith_div_i32(arg_2.b, -1i))), Struct_1(~(u_input.a.x << ((u_input.a.x & 1u) % 32u)), arg_2.b), arg_2, global0.d);
    var var_0 = 1i;
    var var_1 = global2.xzw;
    let var_2 = !(!(!vec4<bool>(4294967295u > arg_0.a, false, global0.d.x, global0.d.x)));
    return arg_2;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~global0.c.a, select(~39495u, ~reverseBits(arg_1.a), firstTrailingBit(1u) != ~(arg_1.a << (14878u % 32u)))), 15u)];
    var var_1 = global2.x;
    var var_2 = Struct_1(18046u, _wgslsmith_sub_i32(1i, arg_1.b));
    let var_3 = -(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c.b, -1i), vec2<i32>(0i, var_2.b)))) ^ -vec2<i32>(_wgslsmith_sub_i32(global0.c.b, abs(-1i)), 2147483647i);
    global3 = -max(arg_1.b, 0i);
    return Struct_2(func_2(_wgslsmith_div_i32(_wgslsmith_sub_i32(arg_1.b, var_0.b.b) & _wgslsmith_clamp_i32(arg_1.b, var_2.b, -1i), func_2(arg_1.b))), var_0.d.yz, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = ~(((u_input.a.zz << (u_input.a.yz % vec2<u32>(32u))) << ((vec2<u32>(1u, global0.b.a) ^ u_input.a.yy) % vec2<u32>(32u))) & vec2<u32>(~_wgslsmith_mult_u32(u_input.b, u_input.a.x), 9969u));
    var var_2 = Struct_4(false, func_5(true, func_4(func_1(Struct_3(global0.c.b, Struct_1(0u, global0.a), Struct_1(u_input.a.x, global0.a), vec3<bool>(global0.d.x, false, global0.d.x)), 4507i, max(global0.b.b, 1i), global1[_wgslsmith_index_u32(abs(global0.c.a), 15u)]), _wgslsmith_f_op_f32(-global2.x), func_1(global1[_wgslsmith_index_u32(0u, 15u)], global0.a | global0.b.b, -68801i, Struct_3(-41501i, global0.b, global0.c, vec3<bool>(global0.d.x, true, global0.d.x))))), Struct_3(-(~global0.a), func_1(Struct_3(global0.c.b, global0.c, func_1(global1[_wgslsmith_index_u32(var_1.x, 15u)], 8196i, global0.b.b, Struct_3(18561i, Struct_1(0u, global0.b.b), Struct_1(82068u, global0.b.b), global0.d)), global0.d), global0.c.b, select(~0i, -global0.b.b, global0.d.x), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(106591u, var_1.x | u_input.b), 15u)]), Struct_1(_wgslsmith_sub_u32(11608u, 1u), -1i), select(select(vec3<bool>(global0.d.x, global0.d.x, global0.d.x), !vec3<bool>(false, global0.d.x, global0.d.x), select(vec3<bool>(global0.d.x, true, global0.d.x), vec3<bool>(global0.d.x, global0.d.x, global0.d.x), global0.d.x)), select(select(vec3<bool>(true, false, global0.d.x), global0.d, vec3<bool>(global0.d.x, global0.d.x, true)), !vec3<bool>(global0.d.x, global0.d.x, global0.d.x), true), true && all(global0.d.yy))), all(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, global0.d.x), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, global0.d.x), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, global0.d.x), vec4<bool>(global0.d.x, global0.d.x, false, global0.d.x)), global0.d.x), select(!vec4<bool>(global0.d.x, global0.d.x, global0.d.x, false), !vec4<bool>(true, true, global0.d.x, true), global0.d.x), false)), global0.c.b);
    var var_3 = _wgslsmith_mult_u32(global0.b.a, 1u);
    let var_4 = Struct_3(_wgslsmith_div_i32(firstLeadingBit(var_2.c.c.b | (var_2.c.b.b ^ global0.c.b)), 1i), var_2.c.b, func_4(func_4(Struct_1(0u & var_1.x, var_2.c.a), _wgslsmith_div_f32(1000f, -1735f), func_4(func_4(Struct_1(u_input.b, var_2.e), -1000f, Struct_1(4294967295u, -1i)), _wgslsmith_div_f32(global2.x, -661f), func_1(Struct_3(var_2.b.a, Struct_1(global0.c.a, -25905i), var_2.c.b, vec3<bool>(var_2.d, global0.d.x, true)), -10103i, global0.c.b, Struct_3(global0.b.b, Struct_1(global0.c.a, var_2.e), var_2.c.b, vec3<bool>(var_2.b.b.x, var_2.b.b.x, global0.d.x))))), _wgslsmith_f_op_f32(-global2.x), var_2.c.c), vec3<bool>(any(vec4<bool>(var_2.a, false, false, false)) & (all(vec3<bool>(var_2.d, var_2.c.d.x, global0.d.x)) & !global0.d.x), !any(vec3<bool>(false, global0.d.x, false)) & any(vec2<bool>(true, var_2.b.b.x)), select(var_2.d, global0.d.x, all(var_2.c.d)) | !var_2.b.b.x));
    global1 = array<Struct_3, 15>();
    var var_5 = select(~(~1u), firstTrailingBit(~_wgslsmith_mod_u32(reverseBits(0u), ~0u)), global0.d.x);
    var var_6 = !all(var_2.c.d);
    let var_7 = firstTrailingBit(firstLeadingBit(~vec4<i32>(i32(-1i) * -2147483647i, ~global0.c.b, -45530i, ~global0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec2_u32(max(vec2<u32>(global0.b.a, 51755u) & vec2<u32>(var_1.x, 4294967295u), vec2<u32>(2103u, u_input.a.x)), max(_wgslsmith_div_vec2_u32(u_input.a.zz, vec2<u32>(4294967295u, global0.c.a)), vec2<u32>(var_2.b.c, u_input.a.x) ^ u_input.a.xx)), ~(~u_input.a.zz) | u_input.a.zx, global0.d.yx), firstLeadingBit(vec4<i32>(var_4.b.b, -(~var_4.a), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-38513i, var_2.e, var_2.e), ~28396i), 23137i << (0u % 32u))), _wgslsmith_f_op_f32(-global2.x), var_2.c.b.a);
}

