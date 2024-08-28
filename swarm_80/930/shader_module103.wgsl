struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<bool>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<f32>(635f, -481f, -816f), false, vec2<bool>(true, false), 42372i, vec2<i32>(34967i, -20622i)), Struct_1(vec3<f32>(1824f, 482f, 2284f), true, vec2<bool>(false, true), 0i, vec2<i32>(2147483647i, -9141i)), Struct_1(vec3<f32>(1284f, -107f, -170f), false, vec2<bool>(true, false), -28723i, vec2<i32>(0i, i32(-2147483648))), Struct_1(vec3<f32>(-1000f, 978f, 1383f), true, vec2<bool>(true, false), 26075i, vec2<i32>(i32(-2147483648), 270i)), Struct_1(vec3<f32>(-259f, -1000f, -1234f), true, vec2<bool>(true, false), 0i, vec2<i32>(0i, 2147483647i)), Struct_1(vec3<f32>(-955f, 1247f, 1010f), true, vec2<bool>(true, false), 0i, vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec3<f32>(-807f, 957f, 1435f), false, vec2<bool>(true, true), -1i, vec2<i32>(13221i, 42049i)), Struct_1(vec3<f32>(-624f, 731f, -673f), false, vec2<bool>(false, false), 69635i, vec2<i32>(-1i, -1i)), Struct_1(vec3<f32>(-199f, 1273f, -516f), true, vec2<bool>(false, true), 2147483647i, vec2<i32>(0i, -33705i)), Struct_1(vec3<f32>(908f, 1580f, 1825f), false, vec2<bool>(true, true), 10034i, vec2<i32>(1i, -39449i)), Struct_1(vec3<f32>(-2181f, -806f, 1489f), false, vec2<bool>(false, true), 2147483647i, vec2<i32>(22137i, 1i)), Struct_1(vec3<f32>(-1832f, -459f, 1921f), false, vec2<bool>(true, false), 10012i, vec2<i32>(16853i, -1i)), Struct_1(vec3<f32>(2309f, 668f, 1099f), false, vec2<bool>(true, true), 21090i, vec2<i32>(1i, i32(-2147483648))), Struct_1(vec3<f32>(-467f, 1273f, 183f), false, vec2<bool>(true, false), 1i, vec2<i32>(-7015i, 2147483647i)), Struct_1(vec3<f32>(-726f, 856f, 1000f), false, vec2<bool>(false, true), 0i, vec2<i32>(-1i, -4662i)), Struct_1(vec3<f32>(1000f, -705f, -764f), true, vec2<bool>(false, false), -29811i, vec2<i32>(-1i, 2147483647i)), Struct_1(vec3<f32>(-1083f, -446f, -245f), true, vec2<bool>(true, false), 21789i, vec2<i32>(-34598i, 0i)), Struct_1(vec3<f32>(-764f, 509f, -339f), true, vec2<bool>(true, true), 15668i, vec2<i32>(-20024i, -46517i)), Struct_1(vec3<f32>(-550f, 250f, -1243f), true, vec2<bool>(false, false), 15229i, vec2<i32>(-28995i, 29881i)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_mult_u32(arg_0.a, ~38858u);
    let var_1 = vec2<bool>(arg_1.b, false | any(arg_1.c));
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(step(arg_1.a, vec3<f32>(1673f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(995f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(220f))))))), any(vec2<bool>(false, !arg_1.c.x)), arg_0.b, ~firstLeadingBit(_wgslsmith_div_i32(firstLeadingBit(24503i), arg_2 & 977i)), vec2<i32>(firstTrailingBit(-39609i), 1i));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(var_2.a))));
}

fn func_2() -> vec2<bool> {
    let var_0 = ~countOneBits(vec4<u32>(1u, 1u, 1u, 1u) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(14263u, 4294967295u, 21893u, 25586u), vec4<u32>(45201u, 4294967295u, 0u, 4294967295u), vec4<u32>(27594u, 4294967295u, 0u, 4441u)) % vec4<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(19507u, vec2<bool>(true, false), global0[_wgslsmith_index_u32(1u, 19u)], false), Struct_1(vec3<f32>(1487f, 703f, 1502f), false, vec2<bool>(true, true), -39382i, vec2<i32>(-39917i, 0i)), u_input.c.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, 381f, -883f)))), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -858f, -1681f), vec3<f32>(1132f, 1077f, -420f)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1053f, -360f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(690f, -232f, 1026f))))), false, vec2<bool>(all(vec2<bool>(any(vec3<bool>(false, true, true)), true)), u_input.a.x != -12389i), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.d), u_input.c.x, u_input.c.x), abs(u_input.e.xzz << (~var_0.ywz % vec3<u32>(32u)))), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(max(u_input.b.x, _wgslsmith_mod_i32(u_input.d, u_input.b.x)), ~u_input.b.x)));
    global0 = array<Struct_1, 19>();
    var var_2 = Struct_3(Struct_2(16778u, !(!select(vec2<bool>(true, var_1.b), vec2<bool>(var_1.c.x, true), true)), Struct_1(vec3<f32>(730f, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x)), !var_1.c.x, !(!vec2<bool>(var_1.b, var_1.b)), u_input.b.x, abs(~u_input.e.xw)), !var_1.c.x), Struct_2(14189u, select(select(var_1.c, select(vec2<bool>(true, var_1.c.x), vec2<bool>(var_1.b, true), vec2<bool>(var_1.c.x, true)), var_1.b), !select(vec2<bool>(true, var_1.b), var_1.c, vec2<bool>(var_1.b, var_1.c.x)), true), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.a.x, -515f, var_1.a.x))) - vec3<f32>(var_1.a.x, -506f, var_1.a.x)), true, select(select(vec2<bool>(var_1.c.x, var_1.c.x), vec2<bool>(var_1.c.x, var_1.b), var_1.c), var_1.c, false), var_1.e.x, -vec2<i32>(1i, u_input.b.x)), select(var_1.b, (u_input.c.x | var_1.d) != ~u_input.d, var_1.b)));
    var_1 = Struct_1(var_1.a, var_1.b, var_1.c, _wgslsmith_clamp_i32(var_1.e.x, i32(-1i) * -(var_2.a.c.e.x | var_1.e.x), var_1.e.x), _wgslsmith_add_vec2_i32(vec2<i32>(1i, _wgslsmith_mod_i32(-23023i | u_input.a.x, ~var_1.e.x)), _wgslsmith_add_vec2_i32(vec2<i32>(abs(u_input.c.x), -59519i), var_1.e)));
    return vec2<bool>(var_2.a.c.c.x, true);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_3 {
    var var_0 = Struct_2(~arg_2.a.a, select(select(!vec2<bool>(true, arg_2.a.d), !vec2<bool>(arg_2.b.d, false), !select(arg_1.c, vec2<bool>(arg_1.b, true), false)), !arg_2.b.c.c, select(select(vec2<bool>(arg_1.c.x, arg_2.a.b.x), !vec2<bool>(arg_2.b.d, arg_1.b), !arg_2.a.b), select(arg_2.a.c.c, arg_2.a.c.c, true), !vec2<bool>(arg_1.b, false))), arg_2.a.c, arg_2.b.b.x);
    var var_1 = select(vec3<bool>(any(select(vec4<bool>(var_0.d, false, true, arg_1.b), vec4<bool>(false, var_0.d, var_0.c.b, false), vec4<bool>(true, false, false, false))) || false, select(_wgslsmith_f_op_f32(arg_1.a.x + -953f) > _wgslsmith_f_op_f32(-var_0.c.a.x), arg_2.a.d, !arg_1.c.x), countOneBits(4294967295u >> (arg_0.x % 32u)) <= _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_2.a.a), vec2<u32>(0u, 3615u))), !select(select(select(vec3<bool>(arg_2.b.b.x, false, var_0.b.x), vec3<bool>(false, true, var_0.d), false), select(vec3<bool>(var_0.d, arg_1.b, false), vec3<bool>(arg_1.b, var_0.b.x, arg_1.b), vec3<bool>(var_0.d, true, true)), select(vec3<bool>(arg_1.b, true, true), vec3<bool>(false, var_0.b.x, false), vec3<bool>(false, var_0.d, arg_2.a.c.b))), vec3<bool>(true, false, var_0.b.x), all(vec2<bool>(var_0.d, true))), !select(vec3<bool>(arg_2.a.d | arg_2.b.b.x, func_2().x, arg_2.a.c.a.x > 111f), vec3<bool>(arg_2.b.d, arg_2.a.b.x, arg_1.c.x && true), vec3<bool>(arg_1.b, var_0.d, !arg_2.a.c.c.x)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1199f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a.x + arg_1.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(350f + 2723f) * _wgslsmith_f_op_f32(sign(arg_2.a.c.a.x))))));
    return Struct_3(arg_2.b, arg_2.a);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1361f, -307f, -678f), vec3<f32>(-1614f, 746f, -420f)), vec3<f32>(920f, 280f, -530f), true)), _wgslsmith_div_vec3_f32(vec3<f32>(-254f, 472f, -288f), vec3<f32>(-960f, 839f, 1417f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2210f, 366f, -386f) * vec3<f32>(465f, -1376f, 212f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1782f, -1331f, 802f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1301f, -438f, -871f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1412f, -267f, -618f)))))));
    global0 = array<Struct_1, 19>();
    let var_1 = func_4(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(23709u, 1u)))), global0[_wgslsmith_index_u32(~(~firstTrailingBit(4294967295u)), 19u)], Struct_3(Struct_2(1u, func_2(), global0[_wgslsmith_index_u32(1u, 19u)], all(vec3<bool>(false, false, false))), Struct_2(48237u, vec2<bool>(true, true), global0[_wgslsmith_index_u32(reverseBits(firstLeadingBit(66748u)), 19u)], false)));
    var var_2 = ~vec4<u32>(~firstLeadingBit(var_1.a.a), ~(~(~var_1.b.a)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(var_1.a.a, 1u), var_1.a.a, 0u & var_1.b.a) ^ ~4294967295u, abs(4294967295u));
    var_2 = ~countOneBits(~vec4<u32>(~var_1.b.a, 1u, ~31119u, _wgslsmith_mod_u32(var_1.b.a, var_2.x)));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(select(-u_input.e, _wgslsmith_mod_vec4_i32(vec4<i32>(52451i, u_input.d, 14916i, -1i), vec4<i32>(4061i, 17706i, 1i, u_input.e.x)), vec4<bool>(true, false, true, false)), -(~u_input.e)), 1i, _wgslsmith_mult_i32(u_input.e.x, -19619i));
    let var_1 = true;
    var var_2 = func_1();
    let var_3 = vec2<bool>((true && (26231i < var_0)) != false, !var_2.d);
    global0 = array<Struct_1, 19>();
    var_2 = Struct_2(72148u, select(func_1().c.c, func_2(), select(false, all(vec2<bool>(var_3.x, true)), all(vec3<bool>(var_2.b.x, var_2.d, var_1))) && false), var_2.c, any(vec4<bool>(true, var_2.b.x, all(vec4<bool>(var_3.x, var_2.c.c.x, var_2.b.x, var_2.b.x)), var_3.x)));
    global0 = array<Struct_1, 19>();
    var_2 = Struct_2(var_2.a, var_2.c.c, func_1().c, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1().c.a.x)))), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, var_2.a), vec2<u32>(var_2.a, var_2.a)), var_2.a) >> (~10880u % 32u), reverseBits(_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 1u), vec2<u32>(63990u, 1u) | vec2<u32>(var_2.a, 1u), vec2<u32>(var_2.a, var_2.a) ^ vec2<u32>(1u, 1u)) ^ _wgslsmith_sub_vec2_u32(select(vec2<u32>(0u, 0u), vec2<u32>(var_2.a, 14722u), vec2<bool>(var_2.b.x, false)), vec2<u32>(17161u, 1u))), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a, ~var_2.a, ~var_2.a), ~abs(vec3<u32>(var_2.a, 30147u, 0u)) << (~vec3<u32>(0u, 11626u, var_2.a) % vec3<u32>(32u))), ~countOneBits(_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(var_2.a, var_2.a, 60284u, 24100u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a, 25919u, var_2.a, 30652u), vec4<u32>(1u, var_2.a, var_2.a, 4294967295u)))));
}

