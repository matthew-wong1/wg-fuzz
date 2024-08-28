struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(true, 25215u, vec2<i32>(i32(-2147483648), -1i), 4294967295u), vec2<i32>(36415i, 67233i), vec4<bool>(false, false, false, false), false), Struct_2(Struct_1(true, 4294967295u, vec2<i32>(-50165i, 44740i), 9907u), vec2<i32>(0i, -45722i), vec4<bool>(false, false, true, true), true), Struct_2(Struct_1(true, 1u, vec2<i32>(i32(-2147483648), 1i), 4294967295u), vec2<i32>(2147483647i, -11893i), vec4<bool>(false, false, false, true), false), Struct_2(Struct_1(true, 1u, vec2<i32>(0i, -65088i), 1u), vec2<i32>(i32(-2147483648), 1i), vec4<bool>(false, true, true, true), false), Struct_2(Struct_1(true, 4294967295u, vec2<i32>(i32(-2147483648), -6253i), 17094u), vec2<i32>(0i, -68481i), vec4<bool>(true, true, true, false), false), Struct_2(Struct_1(false, 27993u, vec2<i32>(28012i, 1i), 92u), vec2<i32>(i32(-2147483648), 0i), vec4<bool>(false, true, true, true), false), Struct_2(Struct_1(false, 4294967295u, vec2<i32>(956i, 1i), 139149u), vec2<i32>(2147483647i, i32(-2147483648)), vec4<bool>(false, false, true, false), false), Struct_2(Struct_1(false, 9050u, vec2<i32>(48049i, 0i), 4294967295u), vec2<i32>(31407i, 0i), vec4<bool>(false, true, true, true), true), Struct_2(Struct_1(true, 0u, vec2<i32>(i32(-2147483648), 22667i), 1u), vec2<i32>(2147483647i, 28129i), vec4<bool>(true, false, true, false), true), Struct_2(Struct_1(true, 4294967295u, vec2<i32>(-49917i, -17293i), 39791u), vec2<i32>(-46814i, 2147483647i), vec4<bool>(false, true, true, true), false), Struct_2(Struct_1(false, 4967u, vec2<i32>(-10521i, i32(-2147483648)), 38221u), vec2<i32>(-28463i, -686i), vec4<bool>(false, true, true, true), true), Struct_2(Struct_1(true, 0u, vec2<i32>(-14665i, 0i), 20599u), vec2<i32>(24909i, 16997i), vec4<bool>(false, false, false, false), false), Struct_2(Struct_1(true, 1u, vec2<i32>(8163i, 1i), 1u), vec2<i32>(i32(-2147483648), 2147483647i), vec4<bool>(true, true, true, false), false), Struct_2(Struct_1(true, 4294967295u, vec2<i32>(-1i, -66171i), 76107u), vec2<i32>(-1i, i32(-2147483648)), vec4<bool>(false, false, true, false), false), Struct_2(Struct_1(true, 10917u, vec2<i32>(18718i, -34608i), 64621u), vec2<i32>(-1i, 0i), vec4<bool>(false, true, true, false), false), Struct_2(Struct_1(false, 4294967295u, vec2<i32>(-11593i, -15835i), 1u), vec2<i32>(i32(-2147483648), -4858i), vec4<bool>(false, false, false, true), true), Struct_2(Struct_1(false, 0u, vec2<i32>(1i, 0i), 1u), vec2<i32>(-1i, 1i), vec4<bool>(false, true, false, true), true), Struct_2(Struct_1(true, 73741u, vec2<i32>(i32(-2147483648), 0i), 0u), vec2<i32>(i32(-2147483648), -33309i), vec4<bool>(true, false, false, false), true), Struct_2(Struct_1(true, 0u, vec2<i32>(-19742i, 20429i), 57828u), vec2<i32>(-10233i, 2147483647i), vec4<bool>(true, false, false, true), true), Struct_2(Struct_1(false, 1u, vec2<i32>(-13674i, 63168i), 4294967295u), vec2<i32>(i32(-2147483648), 2147483647i), vec4<bool>(true, false, false, true), true), Struct_2(Struct_1(false, 41217u, vec2<i32>(1i, -28000i), 4066u), vec2<i32>(-39934i, 40591i), vec4<bool>(true, false, true, true), false));

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(true, 75433u, vec2<i32>(i32(-2147483648), 2147483647i), 1u), vec2<i32>(-8226i, -9441i), vec4<bool>(false, true, true, true), false), Struct_2(Struct_1(true, 13453u, vec2<i32>(-24117i, -35720i), 1u), vec2<i32>(-10955i, -1i), vec4<bool>(false, true, false, false), false), Struct_2(Struct_1(true, 9429u, vec2<i32>(0i, 2147483647i), 123770u), vec2<i32>(i32(-2147483648), 2147483647i), vec4<bool>(false, true, true, true), true), Struct_2(Struct_1(false, 4294967295u, vec2<i32>(-1i, 8156i), 9962u), vec2<i32>(-9748i, -32241i), vec4<bool>(true, false, false, true), true), Struct_2(Struct_1(false, 889u, vec2<i32>(-20742i, -1i), 1u), vec2<i32>(-12147i, i32(-2147483648)), vec4<bool>(false, false, true, true), false), Struct_2(Struct_1(true, 20134u, vec2<i32>(-4598i, 2965i), 4294967295u), vec2<i32>(29602i, 1i), vec4<bool>(true, false, false, false), false), Struct_2(Struct_1(true, 10356u, vec2<i32>(0i, 65417i), 32166u), vec2<i32>(-36808i, 1967i), vec4<bool>(false, true, true, false), true), Struct_2(Struct_1(true, 81534u, vec2<i32>(-1i, 2147483647i), 5227u), vec2<i32>(2147483647i, 57320i), vec4<bool>(false, true, true, true), false));

var<private> global3: Struct_3 = Struct_3(true, vec2<f32>(1144f, -1393f), vec4<bool>(true, false, false, true), Struct_1(true, 82570u, vec2<i32>(i32(-2147483648), 0i), 61724u), Struct_2(Struct_1(false, 4294967295u, vec2<i32>(-39806i, 33604i), 0u), vec2<i32>(-1i, -62813i), vec4<bool>(false, false, false, true), true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<f32>) -> u32 {
    global2 = array<Struct_2, 8>();
    global3 = Struct_3(true, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global3.b))), _wgslsmith_f_op_vec2_f32(step(arg_2.ww, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, global3.b.x))))), arg_2.xx), vec4<bool>(true, any(select(vec3<bool>(false, global3.e.a.a, true), select(vec3<bool>(global3.e.d, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, global3.e.c.x))), global3.c.x, any(!global3.c.yyy)), global3.e.a, global1[_wgslsmith_index_u32(arg_1.x, 21u)]);
    var var_0 = global3.e.c.yx;
    return ~((~arg_1.x & (~66175u >> (_wgslsmith_add_u32(global3.d.b, 70757u) % 32u))) << (18132u % 32u));
}

fn func_2(arg_0: vec4<bool>) -> bool {
    let var_0 = global3.b.x;
    var var_1 = _wgslsmith_div_u32(func_3(1100f, min(select(vec3<u32>(global3.d.d, global3.e.a.d, 4294967295u), vec3<u32>(global3.d.d, global3.e.a.d, 74469u), true), vec3<u32>(global3.e.a.b, 0u, global3.d.d)) >> (firstTrailingBit(vec3<u32>(global3.d.b, global3.d.d, 1u)) % vec3<u32>(32u)), vec4<f32>(global3.b.x, global3.b.x, 1161f, _wgslsmith_f_op_f32(-global3.b.x))), global3.e.a.d);
    let var_2 = true;
    var var_3 = Struct_1(var_2, global3.e.a.d, vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(global3.e.b.x, -2147483647i), -vec2<i32>(4651i, 2147483647i)), global3.e.a.d);
    let var_4 = global3.e;
    return var_3.a;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = Struct_1(arg_2.x, abs(~_wgslsmith_sub_u32(1u, ~arg_3.e.a.d)), ~(global3.e.b >> (vec2<u32>(abs(14985u), 53657u << (arg_0 % 32u)) % vec2<u32>(32u))), arg_3.e.a.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -992f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.b.x + global3.b.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-873f, 489f))))))));
    var var_2 = Struct_3(!var_0.a, _wgslsmith_f_op_vec2_f32(-arg_3.b), !vec4<bool>(global3.d.a, all(global3.e.c), 2147483647i != global3.e.a.c.x, true), global3.d, global2[_wgslsmith_index_u32(~3184u, 8u)]);
    var var_3 = ~arg_3.d.c.x >> (4294967295u % 32u);
    global2 = array<Struct_2, 8>();
    return arg_3;
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> Struct_3 {
    let var_0 = arg_2.e.a;
    global3 = func_4(_wgslsmith_mod_u32(abs(37377u), func_4(34454u, all(!vec4<bool>(arg_2.a, false, global3.d.a, global3.c.x)), !arg_2.c.wyz, func_4(global3.d.d, false, !vec3<bool>(var_0.a, false, true), func_4(global3.d.d, arg_2.e.a.a, arg_2.c.zwy, arg_2))).d.b), any(arg_2.c.zyz), vec3<bool>(true, all(arg_2.e.c.xy), true), arg_2);
    global1 = array<Struct_2, 21>();
    global3 = func_4(~global3.d.d, global3.e.a.a, vec3<bool>(true, false, any(select(!vec3<bool>(global3.a, global3.e.c.x, global3.e.c.x), vec3<bool>(false, var_0.a, arg_2.c.x), var_0.a))), func_4(1u, arg_2.e.a.a, global3.e.c.xzx, func_4(1u, global3.c.x, select(vec3<bool>(true, true, true), !vec3<bool>(true, var_0.a, false), vec3<bool>(arg_2.c.x, var_0.a, global3.d.a)), func_4(min(44700u, global3.e.a.b), !arg_2.d.a, func_4(1u, false, global3.c.yzw, arg_2).e.c.xwy, func_4(arg_2.e.a.d, global3.c.x, arg_2.e.c.zxw, Struct_3(arg_2.e.a.a, arg_2.b, vec4<bool>(true, true, arg_2.d.a, global3.c.x), Struct_1(global3.e.a.a, 0u, global3.e.b, 75088u), global2[_wgslsmith_index_u32(arg_2.e.a.b, 8u)]))))));
    var var_1 = global3.b.x;
    return func_4(~(~21227u), all(!func_4(global3.d.d, true, vec3<bool>(false, global3.e.c.x, false), arg_2).c.xz) && false, select(vec3<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(73464u, arg_2.e.a.b, 1u), vec3<u32>(98727u, 4294967295u, arg_0)) < ~11550u, global3.a, any(global3.c)), !(!select(arg_2.c.yzy, arg_2.c.xzz, global3.a)), vec3<bool>(arg_2.e.a.a, arg_2.c.x, global3.c.x)), Struct_3(true || (1i == _wgslsmith_div_i32(-15059i, var_0.c.x)), global3.b, global3.e.c, Struct_1(countOneBits(53433i) >= _wgslsmith_mod_i32(-33997i, u_input.a), _wgslsmith_clamp_u32(~10067u, arg_0, abs(arg_2.e.a.d)), -_wgslsmith_div_vec2_i32(var_0.c, vec2<i32>(global3.e.a.c.x, global3.d.c.x)), func_3(arg_2.b.x, ~vec3<u32>(48131u, 56560u, var_0.b), vec4<f32>(-651f, 181f, 285f, arg_2.b.x))), Struct_2(func_4(_wgslsmith_add_u32(global3.e.a.d, 1u), 0i == arg_1, func_4(global3.d.b, arg_2.e.c.x, arg_2.c.xzw, Struct_3(var_0.a, global3.b, vec4<bool>(global3.a, var_0.a, arg_2.c.x, var_0.a), arg_2.d, Struct_2(Struct_1(true, 1u, global3.d.c, arg_2.d.d), vec2<i32>(38063i, arg_1), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), arg_2.d.a))).c.yzw, Struct_3(true, arg_2.b, arg_2.c, Struct_1(false, var_0.b, vec2<i32>(arg_2.d.c.x, var_0.c.x), arg_0), Struct_2(Struct_1(false, global3.e.a.d, var_0.c, global3.d.b), global3.d.c, vec4<bool>(var_0.a, global3.d.a, true, true), var_0.a))).d, global3.d.c, arg_2.e.c, global3.b.x != _wgslsmith_f_op_f32(-global3.b.x))));
}

fn func_1() -> Struct_3 {
    var var_0 = vec2<f32>(global3.b.x, global3.b.x);
    var var_1 = _wgslsmith_add_i32(u_input.a, -u_input.a);
    return func_5(~(~(~global3.e.a.b)), -1i, func_4(global3.e.a.b, false, select(vec3<bool>(true, global3.d.a, func_2(vec4<bool>(global3.d.a, false, false, true))), global3.c.zzz, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(global3.a, global3.a)))), Struct_3(all(global3.c.wwx) == true, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(global3.b)))), !vec4<bool>(false, true, global3.d.a, false), global3.e.a, global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global3.e.a.b, global3.d.b), 21u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_3(!(!select(all(vec4<bool>(false, false, global3.a, global3.c.x)), var_0.e.c.x, global3.e.d)), var_0.b, !(!global3.c), Struct_1(global3.e.c.x, ~1u, vec2<i32>(31672i | u_input.a, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, -1i, -11608i, var_0.e.b.x)), ~vec4<i32>(var_0.d.c.x, -1028i, var_0.e.a.c.x, var_0.d.c.x))), _wgslsmith_add_u32(~1u, func_1().d.b)), global3.e);
    let var_1 = Struct_2(Struct_1(global3.d.a, ~global3.d.d, global3.e.a.c, firstLeadingBit(func_1().e.a.b)), ~(~var_0.d.c), global3.c, global3.a);
    global3 = Struct_3(global3.c.x, _wgslsmith_f_op_vec2_f32(max(var_0.b, global3.b)), !vec4<bool>(true | (global3.e.c.x || global3.a), global3.e.a.a && true, func_1().c.x, !(true || var_0.d.a)), Struct_1(min(1i, abs(-22425i)) >= ~var_0.d.c.x, ~((var_0.e.a.b | global3.e.a.b) ^ _wgslsmith_div_u32(1u, var_0.d.b)), global3.d.c, 4294967295u), Struct_2(var_1.a, firstLeadingBit(~vec2<i32>(u_input.a, -41972i)), var_1.c, false));
    var_0 = func_4(4294967295u, false, func_4(1u, global3.e.c.x, vec3<bool>(!any(var_0.c), !(!var_0.a), var_1.c.x), Struct_3(!(var_0.e.b.x > 44586i), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b.x, global3.b.x))))), func_4(var_0.e.a.b, !var_1.a.a, !var_0.e.c.wyw, Struct_3(true, vec2<f32>(var_0.b.x, 223f), global3.e.c, global3.e.a, global1[_wgslsmith_index_u32(29861u, 21u)])).e.c, Struct_1(-367f != global3.b.x, _wgslsmith_div_u32(global3.e.a.b, 0u), _wgslsmith_mod_vec2_i32(var_0.d.c, var_0.e.b), 4294967295u), func_4(~var_1.a.b, any(var_0.c), var_1.c.wzx, func_5(65155u, u_input.a, Struct_3(false, global3.b, var_0.e.c, var_1.a, global1[_wgslsmith_index_u32(var_1.a.b, 21u)]))).e)).e.c.yyz, Struct_3(false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b)), _wgslsmith_f_op_vec2_f32(-global3.b), func_5(global3.e.a.b, _wgslsmith_clamp_i32(var_1.b.x, u_input.a, var_1.b.x), Struct_3(var_0.d.a, var_0.b, vec4<bool>(true, global3.c.x, true, global3.d.a), global3.e.a, Struct_2(global3.e.a, vec2<i32>(var_0.d.c.x, -23015i), vec4<bool>(global3.e.c.x, true, var_0.e.a.a, global3.d.a), var_0.a))).a)), var_1.c, func_4(~4294967295u, var_0.a, !vec3<bool>(var_1.d, false, false), Struct_3(var_0.e.a.c.x < 2147483647i, vec2<f32>(global3.b.x, global3.b.x), global3.e.c, var_1.a, Struct_2(Struct_1(global3.d.a, 21580u, global3.d.c, var_1.a.b), vec2<i32>(var_0.e.a.c.x, global3.d.c.x), global3.e.c, var_0.c.x))).d, Struct_2(func_4(_wgslsmith_clamp_u32(4826u, global3.d.b, 4294967295u), true, func_1().e.c.yxw, func_1()).d, var_0.e.a.c, func_5(global3.d.b | 29786u, -2231i, func_5(67421u, 60872i, Struct_3(false, global3.b, vec4<bool>(false, var_1.d, true, false), Struct_1(var_0.e.d, global3.d.b, vec2<i32>(u_input.a, -2147483647i), 115941u), var_0.e))).c, true)));
    global3 = Struct_3(false, _wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(-var_0.b)), select(!(!vec4<bool>(var_0.a, true, true, false)), !var_0.e.c, func_5(0u, -(~(-20678i)), Struct_3(var_1.d, _wgslsmith_div_vec2_f32(var_0.b, global3.b), vec4<bool>(true, true, true, true), var_1.a, global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 10u)])).e.c), var_0.e.a, func_1().e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1151f));
}

