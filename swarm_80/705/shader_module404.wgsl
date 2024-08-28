struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(vec2<u32>(22158u, 13073u), vec2<u32>(0u, 23576u), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, false), -627f, true), Struct_1(vec4<bool>(true, true, false, true), -1008f, true), 7058u, 853f, vec3<bool>(true, false, true)), vec3<bool>(false, false, false), -1000f, -4232i)), Struct_5(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 37040u), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, false), -700f, true), Struct_1(vec4<bool>(true, true, true, true), 581f, false), 1u, 1353f, vec3<bool>(false, true, false)), vec3<bool>(false, false, true), 1386f, 2147483647i)), Struct_5(vec2<u32>(1u, 8613u), vec2<u32>(63397u, 44824u), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, false, false), 731f, false), Struct_1(vec4<bool>(false, false, false, false), -156f, true), 1u, 262f, vec3<bool>(false, true, true)), vec3<bool>(true, true, true), -1423f, 1i)), Struct_5(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 1u), Struct_3(Struct_2(Struct_1(vec4<bool>(true, false, true, false), -851f, false), Struct_1(vec4<bool>(true, true, false, true), 751f, false), 65889u, -1000f, vec3<bool>(false, true, false)), vec3<bool>(false, false, false), -1569f, 1i)), Struct_5(vec2<u32>(1085u, 25360u), vec2<u32>(6143u, 25264u), Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, false), -1000f, true), Struct_1(vec4<bool>(true, true, true, true), -1000f, true), 1u, -695f, vec3<bool>(false, true, false)), vec3<bool>(false, false, false), -254f, 1i)), Struct_5(vec2<u32>(18114u, 1u), vec2<u32>(24814u, 1u), Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, false), -414f, false), Struct_1(vec4<bool>(true, true, false, true), 860f, false), 0u, 407f, vec3<bool>(true, true, true)), vec3<bool>(false, true, false), 1000f, -1i)), Struct_5(vec2<u32>(64410u, 1u), vec2<u32>(0u, 4294967295u), Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, false), -602f, true), Struct_1(vec4<bool>(false, true, false, true), 213f, true), 4294967295u, 348f, vec3<bool>(false, true, true)), vec3<bool>(true, false, true), -339f, 1i)), Struct_5(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 15939u), Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, false), 724f, true), Struct_1(vec4<bool>(true, false, false, false), 232f, true), 0u, 307f, vec3<bool>(true, true, false)), vec3<bool>(false, true, true), -150f, -18887i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = Struct_2(Struct_1(!vec4<bool>(true, true, false, all(vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-438f + _wgslsmith_f_op_f32(trunc(1802f))))), all(vec2<bool>(true, true))), Struct_1(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, false, false), false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(582f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-638f, -119f, false))))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a < u_input.b.x))), u_input.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1579f))), _wgslsmith_f_op_f32(f32(-1f) * -2130f)), select(select(vec3<bool>(u_input.b.x <= -1i, true, any(vec2<bool>(false, false))), vec3<bool>(true, true, all(vec2<bool>(false, true))), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), ~abs(u_input.e.x) < u_input.b.x));
    let var_1 = Struct_5(abs(u_input.d.wz), vec2<u32>(max(u_input.c, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(55002u, var_0.c, u_input.d.x, var_0.c))) & ~u_input.d.x, 4294967295u), Struct_3(var_0, var_0.b.a.ywz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1016f))))), i32(-1i) * -2147483647i));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(519f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b + var_1.c.c) * -830f), var_1.c.b.x))), _wgslsmith_f_op_f32(abs(-326f)), var_0.a.b, -1593f);
    global1 = array<Struct_5, 8>();
    let var_3 = ~select(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.c, u_input.c), 34688u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.c.a.c, 4294967295u, u_input.c), vec4<u32>(u_input.c, u_input.d.x, 17287u, var_0.c)), var_1.c.a.c)), u_input.d.xx, select(select(select(vec2<bool>(true, var_0.b.c), vec2<bool>(true, var_1.c.b.x), var_1.c.a.b.a.yx), select(var_0.b.a.wz, var_1.c.a.b.a.zw, var_1.c.a.b.a.zy), var_0.a.a.wx), select(var_0.b.a.xx, vec2<bool>(var_1.c.b.x, false), select(var_1.c.b.xz, vec2<bool>(true, false), false)), var_0.b.c));
    return all(select(select(var_1.c.a.b.a, select(var_1.c.a.a.a, vec4<bool>(false, true, var_1.c.a.b.a.x, false), false), !select(var_1.c.a.b.a, var_1.c.a.a.a, vec4<bool>(true, false, false, var_1.c.a.b.a.x))), !(!(!vec4<bool>(var_1.c.b.x, var_1.c.b.x, false, true))), vec4<bool>(var_1.c.a.a.c | !var_1.c.a.a.a.x, var_1.a.x >= ~2157u, !(!var_0.b.c), var_1.c.a.e.x)));
}

fn func_2() -> Struct_3 {
    var var_0 = select(func_3(), true, all(vec3<bool>(!all(vec4<bool>(true, false, true, true)), true, !any(vec2<bool>(true, true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(2178f - 643f), _wgslsmith_div_f32(-282f, 1085f), -194f, _wgslsmith_f_op_f32(f32(-1f) * -322f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-661f, _wgslsmith_f_op_f32(select(-1213f, 222f, true)), 1509f, -1566f)))));
    var var_2 = ~u_input.d;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.wx, vec2<f32>(-638f, var_1.x), false))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.yx, _wgslsmith_f_op_vec2_f32(var_1.yy * var_1.yw)) * var_1.xx));
    let var_4 = ~var_2.x;
    return Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-var_1.x), true), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), func_3()), _wgslsmith_dot_vec2_u32(var_2.yw, _wgslsmith_mult_vec2_u32(~vec2<u32>(var_4, var_2.x), vec2<u32>(0u, u_input.c))), _wgslsmith_div_f32(1025f, var_1.x), vec3<bool>(true, true, true)), vec3<bool>(true, 0i > (~2147483647i | _wgslsmith_sub_i32(-1i, u_input.a)), true), 909f, ~select(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 27176i, u_input.b.x), u_input.e << (vec3<u32>(44308u, u_input.c, var_2.x) % vec3<u32>(32u))), all(vec3<bool>(false, false, false))));
}

fn func_4(arg_0: Struct_3) -> u32 {
    let var_0 = _wgslsmith_mult_vec4_u32(abs(u_input.d), u_input.d);
    global1 = array<Struct_5, 8>();
    var var_1 = var_0;
    global1 = array<Struct_5, 8>();
    return ~0u;
}

fn func_1(arg_0: vec3<i32>) -> bool {
    global0 = func_4(func_2()) & abs(_wgslsmith_mod_u32(10313u, 1u));
    let var_0 = _wgslsmith_add_i32(countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(58614i, u_input.e.x, arg_0.x, -20011i), -vec4<i32>(-6725i, u_input.b.x, u_input.b.x, 0i)), vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 17590i), arg_0.xx), firstLeadingBit(-2147483647i), reverseBits(-1i)))), 3169i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-803f + _wgslsmith_f_op_f32(-1482f + -1309f)), _wgslsmith_f_op_f32(f32(-1f) * -348f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -276f), -2433f)) - -916f)));
    global0 = func_4(Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, false), _wgslsmith_f_op_f32(var_1 - 1127f), true), func_2().a.a, ~reverseBits(u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_1) * _wgslsmith_f_op_f32(-var_1)), vec3<bool>(true, true, true)), select(select(func_2().a.b.a.ywz, vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), func_2().b, 1i > arg_0.x), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), 1584f, 1i));
    let var_2 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), var_1, any(vec2<bool>(var_2, false)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) * var_1)) > func_2().a.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 8>();
    var var_0 = -abs(u_input.e.x);
    var var_1 = select(u_input.d.yy, u_input.d.yw, select(!vec2<bool>(select(true, false, false), true), vec2<bool>(false, ~u_input.d.x <= u_input.d.x), !(func_1(vec3<i32>(-2147483647i, -48102i, u_input.a)) & true)));
    var_0 = -3622i;
    var_0 = u_input.e.x;
    var var_2 = -vec2<i32>(u_input.e.x, ~_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, u_input.e.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -20992i, u_input.a), u_input.e)));
    var_1 = abs(~_wgslsmith_mult_vec2_u32(firstTrailingBit(u_input.d.yz), ~_wgslsmith_sub_vec2_u32(vec2<u32>(51873u, u_input.d.x), u_input.d.yw)));
    var var_3 = vec4<bool>(all(vec4<bool>(true, true, select(false, true, false), u_input.c <= _wgslsmith_add_u32(u_input.d.x, 98861u))), u_input.a >= func_2().d, func_1(u_input.b), false);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, u_input.d.xw, select(u_input.c, ~0u, any(select(func_2().b, select(vec3<bool>(false, var_3.x, var_3.x), var_3.wyw, true), select(vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(var_3.x, true, true))))), _wgslsmith_mod_i32(-1i, var_2.x), 4294967295u);
}

